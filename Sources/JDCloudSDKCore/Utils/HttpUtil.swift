//
//  HttpUtil.swift
//  Core
//
//  Created by 李士军 on 2018/11/19.
//

import Foundation


/// A dictionary of headers to apply to a `URLRequest`.
public typealias HTTPHeaders = [String: String]

/// HTTP method definitions.
///
/// See https://tools.ietf.org/html/rfc7231#section-4.3

public enum HTTPMethod: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
}



public typealias RequestCompletion = (String?,Int32?,Error?)->()


///  async http request
///
/// - Parameters:
///   - urlStr: request url string
///   - content: reqest http body content
///   - header: reqest http header
///   - requestMethod: request method string like GET POST HEAD PUT OPTIONS DELETE etc.
///   - requestComplation: the request return call func
/// - Throws: process error
public func httpRequestAsync(urlStr:String,content:String,header:[String:String]?,requestMethod:String,requestComplation:@escaping RequestCompletion) throws {
    if(GlobalConfig.debug)
    {
        print("requestUrl is \(urlStr)")
    }
    let url = try urlStr.asURL()
    let urlSession = URLSession.shared;
    urlSession.configuration.timeoutIntervalForRequest = 50;
    let request:NSMutableURLRequest = NSMutableURLRequest(url:url);
    request.httpMethod = requestMethod
    if(!content.isEmpty &&
        requestMethod.uppercased() != "GET" &&
        requestMethod.uppercased() != "HEAD" &&
        requestMethod.uppercased() != "DELETE")
    {
        let data = content.data(using: .utf8)
        request.httpBody = data
    }
    if(header != nil && header!.count > 0)
    {
        if(request.allHTTPHeaderFields == nil)
        {
            request.allHTTPHeaderFields = [String:String]()
        }
        header!.forEach { (args) in
            let (key,value) = args
            request.allHTTPHeaderFields![key] = value
        }
    }
    if(GlobalConfig.debug)
    {
        print(request.allHTTPHeaderFields ?? "")
    }
    
    let dataTask: URLSessionDataTask = urlSession.dataTask(with: request as URLRequest) { (data, response, error) in
        let httpResponse:HTTPURLResponse? = response as? HTTPURLResponse
        var statusCode:Int32?
        var resultString:String?
        if(error == nil && data != nil )
        {
            resultString = String(data: data!, encoding: .utf8)
            if(GlobalConfig.debug)
            {
                print(resultString ?? "response data is empty")
            }
        }
        if(httpResponse != nil)
        {
            statusCode = Int32(httpResponse!.statusCode)
        }
        requestComplation(resultString,statusCode,error)
        
    }
    dataTask.resume()
}


/// http sync request method
///
/// - Parameters:
///   - urlStr: request url string
///   - content: reqest http body content
///   - header: reqest http header
///   - requestMethod: request method string like GET POST HEAD PUT OPTIONS DELETE etc.
/// - Returns: response statusCode and response data
/// - Throws: process error
public func httpRequestSync(urlStr:String,content:String,header:[String:String]?,requestMethod:String) throws ->  (Int32,String?,Error?){
    if(GlobalConfig.debug)
    {
        print("requestUrl is \(urlStr)")
    }
    let semaphore = DispatchSemaphore(value: 0)
    let url = try urlStr.asURL()
    let urlSession = URLSession.shared;
    urlSession.configuration.timeoutIntervalForRequest = 50;
    let request:NSMutableURLRequest = NSMutableURLRequest(url:url);
    request.httpMethod = requestMethod
    if(!content.isEmpty &&
        requestMethod.uppercased() != "GET" &&
        requestMethod.uppercased() != "HEAD" &&
        requestMethod.uppercased() != "DELETE")
    {
        let data = content.data(using: .utf8)
        request.httpBody = data
    }
    if(header != nil && header!.count > 0)
    {
        if(request.allHTTPHeaderFields == nil)
        {
            request.allHTTPHeaderFields = [String:String]()
        }
        header!.forEach { (args) in
            let (key,value) = args
            request.allHTTPHeaderFields![key] = value
        }
    }
    if(GlobalConfig.debug)
    {
        print(request.allHTTPHeaderFields ?? "")
    }
    var urlResponse:HTTPURLResponse?
    var responseData:Data?
    var requestError:Error?
    let dataTask: URLSessionDataTask = urlSession.dataTask(with: request as URLRequest) { (data, response, error) in
        urlResponse = response as? HTTPURLResponse
        requestError = error
        if(error == nil){
            responseData = data
        }
        semaphore.signal()
    }
    dataTask.resume()
    _ = semaphore.wait(timeout: DispatchTime.distantFuture)
    
    var statusCode:Int32 = 0
    if(urlResponse != nil)
    {
        statusCode = Int32(urlResponse!.statusCode)
    }
    if(responseData != nil)
    {
        let stringResult = String(data: responseData!, encoding: .utf8)
        if(GlobalConfig.debug)
        {
            print(stringResult ?? "response data is empty")
        }
        
        return (statusCode,stringResult,requestError)
    }
    return (statusCode,nil,requestError)
}
