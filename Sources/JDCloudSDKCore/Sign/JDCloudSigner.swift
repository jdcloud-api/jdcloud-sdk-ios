//
//  JDCloudSigner.swift
//  Core
//
//  Created by 李士军 on 2018/12/6.
//

import Foundation


public class JDCloudSigner
{
    var serviceName:String
    var regionId:String
    var dateTime:Date
    var credential:Credential
    var doubleUrlEncode:Bool = false
    
    init(serviceName:String,regionId:String,dateTime:Date,credential:Credential) {
        self.dateTime = dateTime;
        self.regionId = regionId;
        self.serviceName = serviceName;
        self.credential = credential
    }
    
    
    /// request sign
    ///
    /// - Parameter requestInfo: the open api request info model contain host,url,requestBody, request query param etc.
    /// - Returns: signed info
    /// - Throws: argument nil or empty error
    public func doSign(requestInfo:RequestInfo)throws ->SignedRequestInfo
    {
        let nonceId:String = UUID.init().uuidString.lowercased()
        let formattedSigningDateTime = JDCloudSigner.dateConvertString(date: dateTime)
        let formattedSigningDate = JDCloudSigner.dateConvertString(date: dateTime,dateFormat: HEADER_DATE_FORMAT)
        let scope = try generateScope(dateString: formattedSigningDate, serviceName: self.serviceName, regionId: self.regionId)
        
        var requestHeader = requestInfo.requestHeader;
        requestHeader[X_JDCLOUD_DATE] = formattedSigningDateTime 
        requestHeader[X_JDCLOUD_NONCE] = nonceId
        requestHeader = processContentType(header: requestHeader,  requestInfo: requestInfo)
        let contentSHA256 = calculateContentHash(requestBody: requestInfo.requestBodyContent)
        let canonicalRequest = try createCanonicalRequest(contentSHA256: contentSHA256, requestInfo: requestInfo,requestHeader:requestHeader)
        let stringToSign = createStringToSign(canonicalRequest: canonicalRequest, formattedSigningDateTime: formattedSigningDateTime, scope: scope)
        
        let keySecret = "JDCLOUD2" + self.credential.secretAccessKey
        let keyDate = formattedSigningDate.hmac(algorithm: .sha256, key: keySecret)
        let keyRegion = self.regionId.hmacData(algorithm: .sha256, hexStringKey: keyDate)
        let keyService = self.serviceName.hmacData(algorithm: .sha256, hexStringKey: keyRegion)
        let deriveSigningKey = JDCLOUD_TERMINATOR.hmacData(algorithm: .sha256, hexStringKey: keyService)
        let signature = stringToSign.hmacData(algorithm: .sha256, hexStringKey: deriveSigningKey)
        
        let signingCredentials = self.credential.accessKeyId + "/" + scope;
        let credential = "Credential=" + signingCredentials;
        let signerHeaders = "SignedHeaders=" + getSignedHeaderString(requestHeader: requestHeader);
        let signatureHeader = "Signature=" + signature;
        var authorizationHeader = JDCLOUD2_SIGNING_AKGORITHM 
        authorizationHeader.append(" ")
        authorizationHeader.append(credential)
        authorizationHeader.append(", ")
        authorizationHeader.append(signerHeaders)
        authorizationHeader.append(", ")
        authorizationHeader.append(signatureHeader)
        requestHeader[AUTHORIZATION] = authorizationHeader
        requestHeader[HOST] = try processHostHeader(requestHost: requestInfo.signedHost)
        if(GlobalConfig.debug)
        {
            print("nonceId is \(nonceId)")
            print("formattedSigningDateTime is \(formattedSigningDateTime)")
            print("formattedSigningDate is \(formattedSigningDate)")
            print("scope is \(scope)")
            print("contentSHA256 is \(contentSHA256)")
            print("canonicalRequest is \(canonicalRequest)")
            print("stringToSign is \(stringToSign)")
            print("keySecret is \(keySecret)")
            print("keyDate is \(keyDate)")
            print("keyRegion is \(keyRegion)")
            print("keyService is \(keyService)")
            print("signingKey is \(deriveSigningKey)")
            print("signature is \(signature)")
            print("authorizationHeader is \n \(authorizationHeader)")
        }
        
        let signedRequestInfo:SignedRequestInfo = SignedRequestInfo(requestNonceId: nonceId, requestHead: requestHeader, contentSha256: contentSHA256, canonicalRequest: canonicalRequest, stringToSign: stringToSign, StringSignature: stringToSign, SignedHeaders: authorizationHeader)
        return signedRequestInfo
    }
    
    private func processContentType(header:[String:String],requestInfo:RequestInfo)->[String:String]
    {
        var requestHeader = header
        let method = requestInfo.requestMethod
        if(method.uppercased() != "GET" &&
            method.uppercased() != "DELETE" &&
            method.uppercased() != "HEAD")
        {
            requestHeader[CONTENT_TYPE] = requestInfo.contentType
        }
        return requestHeader;
    }
    
    private func createStringToSign(canonicalRequest:String,formattedSigningDateTime:String,scope:String) ->String{
        var result = "";
        let sha256 = SHA256(canonicalRequest)
        
        result.append(JDCLOUD2_SIGNING_AKGORITHM)
        result.append(LINE_SEPARATOR)
        result.append(formattedSigningDateTime)
        result.append(LINE_SEPARATOR)
        result.append(scope)
        result.append(LINE_SEPARATOR)
        result.append(sha256.digestString())
        
        return result
    }
    
    private func createCanonicalRequest(contentSHA256:String,requestInfo:RequestInfo,requestHeader:[String:String]) throws -> String {
        var parameters = requestInfo.requestParams
        if(!requestInfo.requestParams.isEmpty)
        {
            if(requestInfo.requestParams.starts(with: "?"))
            {
                parameters.removeFirst()
            }
        }
        let requestUri = try requestInfo.requestHost.asURL()
        var path = requestInfo.requestPath
        var relativePath = requestUri.relativePath
        if(!requestInfo.requestPath.isEmpty)
        {
            if(!path.starts(with: "/"))
            {
                path = "/" + path
            }
            relativePath  = relativePath + path
        }else{
            relativePath = relativePath + "/"
        } 
        
        let canonicalRequest = requestInfo.requestMethod.uppercased() +
            LINE_SEPARATOR +
            getCanonicalizedResourcePath(path: relativePath, doubleUrlEncode: self.doubleUrlEncode) +
            LINE_SEPARATOR +
            parameters +  // 需要算法处理
            LINE_SEPARATOR +
            getCanonicalizedHeaderString(header: requestHeader) +
            LINE_SEPARATOR +
            getSignedHeaderString(requestHeader: requestHeader) +
            LINE_SEPARATOR +
            contentSHA256
        
        return canonicalRequest;
    }
    
    private func getSignedHeaderString(requestHeader:[String:String]) ->String{
        var result = "";
        if(requestHeader.count > 0)
        {
            for key in requestHeader.keys.sorted(by: <)
            {
                if(LIST_OF_HEADERS_TO_IGNORE_IN_LOWER_CASE.contains(key))
                {
                    continue
                }
                if(result.count > 0)
                {
                    result.append(";")
                }
                result.append(key.lowercased())
            }
        }
        return result;
    }
    
    private func getCanonicalizedHeaderString(header:[String:String])->String
    {
        var result = "";
        if(header.count > 0)
        {
            for key in header.keys.sorted(by: <)
            {
               if(LIST_OF_HEADERS_TO_IGNORE_IN_LOWER_CASE.contains(key))
               {
                    continue
               }
                result.append(key.lowercased().appendCompactedString())
                result.append(":")
                if(header[key] != nil)
                {
                    result.append(header[key]!.appendCompactedString())
                }
                result.append("\n")
            }
        }
        return result;
    }
    
    private func getCanonicalizedResourcePath(path:String,doubleUrlEncode:Bool) ->String
    {
        if(path.isEmpty)
        {
            return "/"
        }else{
            var value:String = path
            if(doubleUrlEncode)
            {
                let encodePath = path.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
                if(encodePath == nil)
                {
                     value = path
                }else{
                    value = encodePath!
                }
            }else{
               value = path
            }
            if(value.starts(with: "/"))
            {
                return value
            }else{
                return "/" + value
            }
        }
    }
    
    
    /// process content body form string to sha256 string
    ///
    /// - Parameter requestInfo: the request info
    /// - Returns: the request body sha 256 body
    private  func calculateContentHash(requestBody:String) -> String {
        
        var result = "";
        
        let sha256 = SHA256(requestBody)
        
        result = sha256.digestString()
        
        return result
    }
    
    
    func processHostHeader(requestHost:String)throws -> String {
        if(requestHost.isEmpty)
        {
            return "";
        }
        let requestUrl = try requestHost.asURL()
        let host = requestUrl.host
        let port = requestUrl.port
        var scheme = requestUrl.scheme
        if(host == nil)
        {
            throw SDKError.argumentNullError("request host not config")
        }
        if(scheme == nil)
        {
            scheme = "http"
        }
        var headerValue = host!
        if(port != nil)
        {
            if(scheme == "http" && port != 80)
            {
                headerValue.append(":")
                headerValue.append(String(describing: port!))
            }else if(scheme == "https" && port != 443)
            {
                headerValue.append(":")
                headerValue.append(String(describing: port!))
            }
        }
        return headerValue
    }
    
    
    /// get scope
    ///
    /// - Parameters:
    ///   - dateString: request date string
    ///   - serviceName: request service name
    ///   - regionId: request region
    /// - Returns: scope string
    /// - Throws: argument null or empty error
    func generateScope(dateString:String,serviceName:String,regionId:String)throws -> String {
        var result = ""
        if(serviceName.isEmpty)
        {
            throw SDKError.argumentNullError("can not get serviceName from yaml")
        }
        if(regionId.isEmpty)
        {
            throw SDKError.argumentNullError("can not get regionId from yaml")
        }
        result = dateString + "/" + regionId + "/" + serviceName + "/" + JDCLOUD_TERMINATOR
        return result
    }
    
    /// Date类型转化为日期字符串
    ///
    /// - Parameters:
    ///   - date: Date类型
    ///   - dateFormat: 格式化样式默认“yyyy-MM-dd”
    /// - Returns: 日期字符串
    public static func dateConvertString(date:Date, dateFormat:String = DATETIME_FORMAT) -> String {
        let timeZone = TimeZone.init(identifier: "UTC")
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.locale = Locale.init(identifier: "zh_CN")
        formatter.dateFormat = dateFormat
        let date = formatter.string(from: date)
        return date.components(separatedBy: " ").first!
    }
}
