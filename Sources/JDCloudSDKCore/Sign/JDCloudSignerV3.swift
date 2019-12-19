//
//  JDCloudSignerV3.swift
//  JDCloudSDKSwift
//
//  Created by 李士军 on 2019/12/18.
//  Copyright © 2019 李士军. All rights reserved.
//

import Foundation

public class JDCloudSignerV3:JDCloudSignProtocol
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
        
        var requestHeader = processRequestHeaderKeyToLower(requestHeader: requestInfo.requestHeader);
        requestHeader.updateValue(JDCLOUD3_SIGNING_ALGORITHM, forKey: X_JDCLOUD_ALGORITHM)
        var  nonceId = "";
        if(!requestHeader.keys.contains(X_JDCLOUD_NONCE)){
            nonceId = UUID.init().uuidString.lowercased()
        }else{
            let nonceConfigValue = requestHeader[X_JDCLOUD_NONCE];
            if(nonceConfigValue != nil){
                 nonceId = nonceConfigValue!
            }else{
                nonceId = UUID.init().uuidString.lowercased()
            }
        }
        var formattedSigningDateTime = "";
        var formattedSigningDate = "";
        formattedSigningDateTime = JDCloudSigner.dateConvertString(date: dateTime)
        formattedSigningDate = JDCloudSigner.dateConvertString(date: dateTime,dateFormat: HEADER_DATE_FORMAT)
        if(requestHeader.keys.contains(X_JDCLOUD_DATE)){
            let signConfigDate = requestHeader[X_JDCLOUD_DATE]
            if(signConfigDate != nil){
                let dateConfig = JDCloudSignerV3.stringConvertData(dateString: signConfigDate!)
                if(dateConfig != nil){
                    formattedSigningDateTime = signConfigDate!;
                    formattedSigningDate = JDCloudSigner.dateConvertString(date: dateConfig!,dateFormat: HEADER_DATE_FORMAT)
                }
            }
        }
        let scope = try generateScope(dateString: formattedSigningDate, serviceName: self.serviceName, regionId: self.regionId)
        requestHeader[X_JDCLOUD_DATE] = formattedSigningDateTime
        requestHeader[X_JDCLOUD_NONCE] = nonceId
        requestHeader = processContentType(header: requestHeader,  requestInfo: requestInfo)
        var contentSHA256 = ""
        if(requestHeader.keys.contains(X_JDCLOUD_CONTENT_SHA256)){
            let configContentSHA256 = requestHeader[X_JDCLOUD_CONTENT_SHA256]
            if(configContentSHA256 != nil){
                contentSHA256 = configContentSHA256!;
            }
        }
        if( contentSHA256 == ""){
            contentSHA256 =  calculateContentHash(requestBody: requestInfo.requestBodyContent)
        }
       
        
        let canonicalRequest = try createCanonicalRequest(contentSHA256: contentSHA256, requestInfo: requestInfo,requestHeader:requestHeader)
        let stringToSign = createStringToSign(canonicalRequest: canonicalRequest, formattedSigningDateTime: formattedSigningDateTime, scope: scope)
        
        let keySecret = "JDCLOUD3" + self.credential.secretAccessKey
        let keyDate = formattedSigningDate.hmac(algorithm: .sha256, key: keySecret)
        let keyRegion = self.regionId.hmacData(algorithm: .sha256, hexStringKey: keyDate)
        let keyService = self.serviceName.hmacData(algorithm: .sha256, hexStringKey: keyRegion)
        let deriveSigningKey = JDCLOUD_TERMINATOR_V3.hmacData(algorithm: .sha256, hexStringKey: keyService)
        let signature = stringToSign.hmacData(algorithm: .sha256, hexStringKey: deriveSigningKey)
        
        let signingCredentials = self.credential.accessKeyId + "/" + scope;
        let credential = "Credential=" + signingCredentials;
        let signerHeaders = "SignedHeaders=" + getSignedHeaderString(requestHeader: requestHeader);
        let signatureHeader = "Signature=" + signature;
        var authorizationHeader = JDCLOUD3_SIGNING_ALGORITHM
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
    
    private func processRequestHeaderKeyToLower(requestHeader:[String:String])->[String:String]{
        
        if(requestHeader.count == 0){
            return requestHeader;
        }
        var processedHeader:[String:String] = [:];
        for headerItem in requestHeader {
            if headerItem.key != "" {
                processedHeader.updateValue(headerItem.value, forKey: headerItem.key.lowercased())
            }
        }
        return processedHeader;
    }
    
    private func processRequestHeader(requestHeader:[String:String]) ->[String:String]{
        var result:[String:String] = [:]
        if(requestHeader.count>0){
            let characterSet = CharacterSet.init(charactersIn: " ");
            for headItem in requestHeader{
                if(headItem.key.trimmingCharacters(in: characterSet) != ""){
                    let headerKey = headItem.key.lowercased();
                    if(!NOT_SIGN_REQUEST_HEAD.contains(headerKey) && !headerKey.trimmingCharacters(in: characterSet).hasPrefix("x-b3-")){
                        result.updateValue(headItem.value, forKey: headerKey.trimmingCharacters(in: characterSet))
                    }
                }
            }
        }
        return result;
    }
    
    private func processRequestMethod(requestMethod:String)->String{
        if(requestMethod == ""){
            return requestMethod;
        }
        let requestMethodLowerString = requestMethod.uppercased();
        if(REQUEST_METHOD.contains(requestMethodLowerString)){
            return requestMethodLowerString;
        }
        return "GET";
    }
    
    private func processQueryString(queryString:String)->String{
        let characterSet = CharacterSet.init(charactersIn: " ");
        var queryParamString = queryString;
        if(queryString == "" || queryString.trimmingCharacters(in: characterSet) == ""){
            return "";
        }
        if(queryString.hasPrefix("?")){
            queryParamString = String(queryParamString.suffix(queryParamString.count-1))
        }
        let queryStringArray = queryParamString.split(separator: "&");
        var queryParamDic:[String:String] = [:];
        if(queryStringArray.count>0){
            for queryStringArrayItem in queryStringArray{
                let paramKVString  = String(queryStringArrayItem);
                let paramKV = paramKVString.split(separator: "=");
                if( paramKV.count>0){
               
                    if( paramKV.count == 1 && String(paramKV[0]) != ""){
                        var paramKey = String(paramKV[0]);
                        paramKey = paramKey.replacingOccurrences(of: "+", with: " ");
                        paramKey = paramKey.unescapeStringWithRFC3986();
                        paramKey = paramKey.escapeStringWithRFC3986();
                        queryParamDic.updateValue("", forKey: paramKey)
                    }else if( paramKV.count == 2 && String(paramKV[0]) != ""){
                        var paramKey = String(paramKV[0]);
                        paramKey = paramKey.replacingOccurrences(of: "+", with: " ");
                        paramKey = paramKey.unescapeStringWithRFC3986();
                        paramKey = paramKey.escapeStringWithRFC3986();
                        var paramValue = String(paramKV[1]);
                        paramValue = paramValue.replacingOccurrences(of: "+", with: " ");
                        paramValue = paramValue.unescapeStringWithRFC3986();
                        paramValue = paramValue.escapeStringWithRFC3986();
                        queryParamDic.updateValue(paramValue, forKey: paramKey)
                    }else{
                        if(String(paramKV[0]) != ""){
                            var paramKey = String(paramKV[0]);
                            paramKey = paramKey.replacingOccurrences(of: "+", with: " ");
                            paramKey = paramKey.unescapeStringWithRFC3986();
                            paramKey = paramKey.escapeStringWithRFC3986();
                            var paramValue = "";
                            var i:Int = 0;
                            for item in paramKV {
                                if(i == 0){
                                    i = i+1;
                                    continue
                                }
                                paramValue = paramValue + String(item);
                                if(i !=  paramKV.count - 1){
                                    paramValue =  paramValue + "=";
                                }
                                i = i+1;
                            }
                            paramValue = paramValue.replacingOccurrences(of: "+", with: " ");
                            paramValue = paramValue.unescapeStringWithRFC3986();
                            paramValue = paramValue.escapeStringWithRFC3986();
                            queryParamDic.updateValue(paramValue, forKey: paramKey)
                        }
                    }
                }
            }
            
        }
        if queryParamDic.count>0{
            var queryStringEncode = "";
            let keys = queryParamDic.keys.sorted(by: >)
            var i = 0;
            for key in keys{
                let value = queryParamDic[key];
                queryStringEncode = queryStringEncode + key;
                queryStringEncode = queryStringEncode + "=";
                if(value != nil){
                    queryStringEncode = queryStringEncode + value!;
                }else{
                     queryStringEncode = queryStringEncode + "";
                }
                if(i != keys.count - 1){
                    queryStringEncode = queryStringEncode + "&";
                }
                i = i + 1;
            }
            return queryStringEncode;
        }
        return "";
    }
    
    private func processRequestPath(requestPath:String)->String{
        if(requestPath == ""){
            return requestPath;
        }
        let characterSet = CharacterSet.init(charactersIn: " ");
        let requestPathValue = requestPath.replacingOccurrences(of: "+", with: " ");
        let decodePath = requestPathValue.unescapeStringWithRFC3986();
        let pathStringArray = decodePath.split(separator: "/");
        var notEmptyPathArray:[String] = [];
        for pathStringItem in pathStringArray{
            let pathItemStr = String(pathStringItem);
            if(pathItemStr != ""){
                notEmptyPathArray.append(pathItemStr)
            }
        }
        if(notEmptyPathArray.count > 0){
            var resultPath = "";
            var i:Int32 = 0 ;
            for notEmptyPathItem in notEmptyPathArray{
                resultPath = resultPath + notEmptyPathItem;
                if(i != notEmptyPathArray.count - 1){
                    resultPath = resultPath + "/"
                }
                i = i+1;
            }
            if(decodePath.hasPrefix("/")){
                resultPath = "/" + resultPath;
            }
            if(decodePath.trimmingCharacters(in: characterSet).hasSuffix("/")){
                resultPath = resultPath + "/"
            }
            return resultPath;
        }else{
            if(decodePath.trimmingCharacters(in: characterSet).hasSuffix("/")){
                return  "/";
             }
            return "";
        }
    }
    
    private func processContentType(header:[String:String],requestInfo:RequestInfo)->[String:String]
    {
        var requestHeader = header
        if(!header.keys.contains(CONTENT_TYPE)){
            let method = processRequestMethod(requestMethod: requestInfo.requestMethod)
            if(method.uppercased() != "GET" &&
                method.uppercased() != "DELETE" &&
                method.uppercased() != "HEAD")
            {
                requestHeader[CONTENT_TYPE] = requestInfo.contentType
            }
        }
        return requestHeader;
    }
    
    private func createStringToSign(canonicalRequest:String,formattedSigningDateTime:String,scope:String) ->String{
        var result = "";
        let sha256 = SHA256(canonicalRequest)
        
        result.append(JDCLOUD3_SIGNING_ALGORITHM)
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
        parameters = processQueryString(queryString: parameters);
       // let requestUri = try requestInfo.requestHost.asURL()
        var path = requestInfo.requestPath
        var relativePath = "";
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
        relativePath = processRequestPath(requestPath: relativePath);
        let signRequestHeader = processRequestHeader(requestHeader: requestHeader);
        let canonicalRequest = requestInfo.requestMethod.uppercased() +
            LINE_SEPARATOR +
            getCanonicalizedResourcePath(path: relativePath, doubleUrlEncode: self.doubleUrlEncode) +
            LINE_SEPARATOR +
            parameters +  // 需要算法处理
            LINE_SEPARATOR +
            getCanonicalizedHeaderString(header: signRequestHeader) +
            LINE_SEPARATOR +
            getSignedHeaderString(requestHeader: signRequestHeader) +
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
    
    public static func stringConvertData(dateString:String, dateFormat:String = DATETIME_FORMAT)->Date?{
        let timeZone = TimeZone.init(identifier: "UTC")
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.locale = Locale.init(identifier: "zh_CN")
        formatter.dateFormat = dateFormat
        return formatter.date(from: dateString)
    }
}
