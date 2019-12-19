//
//  JDCloudExecutor.swift
//  Core
//
//  Created by 李士军 on 2018/12/3.
//

import Foundation


public typealias ExecuteResult<T:JdCloudResult> = (Int32?,JdCloudResponse<T>?,Error?,Data?)->()

open class JDCloudExecutor{
    
    var jdCloudClient:JDCloudClient;
    
    var method:String;
    
    var url:String;
    
    //初始化方法
    public  init(jdCloudClient:JDCloudClient,method:String,url:String) {
        self.jdCloudClient = jdCloudClient
        self.method = method
        self.url = url
    }
    
    func Client(jdCloudClient:JDCloudClient) -> JDCloudExecutor {
        self.jdCloudClient = jdCloudClient;
        return self;
    }
    
    
    public func executeSync<T:JdCloudRequest,P:JdCloudResult>(request:T) throws -> (JdCloudResponse<P>?,Data?)
    {
        var result:JdCloudResponse<P>?
        let (signedRequestInfo,requestInfo) = try executeSign(request: request)
        var requestHeader = signedRequestInfo.requestHead
        requestHeader["HEADER_USER_AGENT"] = jdCloudClient.userAgent
       // requestHeader = processRequestHeader(requestHeader: requestHeader)
        let (statusCode,data,error,responseData) = try httpRequestSync(urlStr: requestInfo.requestUrl, content: requestInfo.requestBodyContent, header: requestHeader, requestMethod: method)
        if(error == nil)
        {
            if(statusCode == 200 && data != nil  )
            {
                let responseData = data!.data(using: .utf8)
                if(responseData != nil)
                {
                    result = try JSONDecoder().decode(JdCloudResponse<P>.self, from: responseData!)
                }
            }
        }else{
            throw error!
        }
        return (result,responseData);
    }
    
    public func executeAsync<T:JdCloudRequest,P:JdCloudResult>(request:T,executeComplation:@escaping ExecuteResult<P>) throws{
        let (signedRequestInfo,requestInfo) = try executeSign(request: request)
        var requestHeader = signedRequestInfo.requestHead
        requestHeader[HEADER_USER_AGENT] = jdCloudClient.userAgent
        try httpRequestAsync(urlStr: requestInfo.requestUrl, content: requestInfo.requestBodyContent, header: requestHeader, requestMethod: method, requestComplation: { (dataString, statusCode, requestError,responseDate) in
            if(requestError == nil)
            {
                if(statusCode != nil)
                {
                    if(dataString != nil)
                    {
                        let responseData = dataString!.data(using: .utf8)
                        if(responseData != nil)
                        {
                            do{
                                let result = try JSONDecoder().decode(JdCloudResponse<P>.self, from: responseData!)
                                executeComplation(statusCode,result,requestError,responseDate)
                            }catch{
                                 executeComplation(statusCode,nil,error,responseDate)
                            }
                        }
                    }else{
                          executeComplation(statusCode,nil,nil,responseDate)
                    }
                }else{
                     executeComplation(statusCode,nil,requestError,responseDate)
                }
            }else{
                 executeComplation(statusCode,nil,requestError,responseDate)
            }
        })
    }
    
    
    private func executeSign<T:JdCloudRequest>(request:T)throws ->(SignedRequestInfo,RequestInfo){
        var version = request.version;
        version = try! checkImportParams(version: version);
        //  参数检查 这里去掉了 因为用户初始化必须添加响应的参数进去
        let pathUrl = repaceUrl(httpUrl: url, request: request)
        let requestSchema = jdCloudClient.httpRequestProtocol
        let endPoint = jdCloudClient.sdkEnvironment.endPoint
        let realEndPoint = jdCloudClient.sdkEnvironment.realEndPoint
        let requestHost = requestSchema+"://"+endPoint;
        let signHost = requestSchema+"://"+(realEndPoint ?? endPoint)
        let requestPath = "/"+version! + pathUrl
        let paramsString = getParams(request: request);
        let requestBodyContent = getContent(request: request)
        let requestUrl = requestHost + requestPath + paramsString
        let requestHeader = processRequestHeader(requestHeader: jdCloudClient.customHeader)
        let requestInfo = RequestInfo(  requestUrl: requestUrl, requestBodyContent: requestBodyContent, requestParams: paramsString, requestPath: requestPath, requestMethod: method, requestHeader: requestHeader,contentType: jdCloudClient.contentType, signedHost: signHost, requestHost: requestHost)
        var jdCloudSigner:JDCloudSignProtocol
        if GlobalConfig.getSignVersion() == .JDCLOUD_SIGN_V2{
             jdCloudSigner = JDCloudSigner(serviceName:jdCloudClient.serviceName , regionId: request.regionId, dateTime: Date(), credential: jdCloudClient.credential)
        }else{
             jdCloudSigner = JDCloudSignerV3(serviceName:jdCloudClient.serviceName , regionId: request.regionId, dateTime: Date(), credential: jdCloudClient.credential)
        }
         
        
        let signResult:SignedRequestInfo = try jdCloudSigner.doSign(requestInfo: requestInfo)
         
        return (signResult,requestInfo);
    }
    
    
    /// process request header , x-jdcloud-erp x-jdcloud-pin x-jdcloud-security-tpken x-jdcloud-session-token value convert to base64 string
    ///
    /// - Parameter requestHeader: user set customer request header
    /// - Returns: process request header
    func processRequestHeader( requestHeader:[String:String] ) ->[String:String]{
        var headers = [String:String]();
        if(requestHeader.count > 0 )
        {
            requestHeader.forEach { (args) in
                let (key,value) = args
                if(X_JDCLOUD_PIN == key.lowercased() ||
                    X_JDCLOUD_ERP == key.lowercased() ||
                    X_JDCLOUD_SESSION_TOKEN == key.lowercased() ||
                    X_JDCLOUD_SECURITY_TOKEN == key.lowercased())
                {
                    let base64Value = value.toBase64()
                    headers[key.lowercased()] = base64Value
                }else{
                    headers[key.lowercased()] = value
                }
            }
        }
        return headers
    }
    
    // get post request http body content text
    public func getContent<T:JdCloudRequest>(request:T?)->String{
        if(request == nil)
        {
            return ""
        }
        if(method.uppercased() == "DELETE" ||
            method.uppercased() == "GET" ||
            method.uppercased() == "HEAD"){
            return ""
        }
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = try! encoder.encode(request!)
        let contentString = String(data: data, encoding: .utf8)
        if(contentString != nil && contentString!.count > 0)
        {
            return contentString!.replacingOccurrences(of: "\r", with: "").replacingOccurrences(of: "\n", with: "").replacingOccurrences(of: " ", with: "")
        }
        return ""
    }
    
    //获取 get delete head 请求 url 拼接参数
    public func getParams(request:JdCloudRequest?) -> String
    {
        if(request == nil)
        {
            return ""
        }
        if(method.uppercased() == "GET" ||
            method.uppercased() == "DELETE" ||
            method.uppercased() == "HEAD")
        {
            var param:String = "";
            let requestParamDic = objectDictionary(obj: request!)
            var requestParams = [String:String]();
            if(requestParamDic != nil)
            {
                for requestParam in requestParamDic!
                {
                    let requestParam = createParam(key: requestParam.key, value: requestParam.value)
                    if(requestParam.count > 0)
                    {
                        requestParam.forEach { (item) in
                            let (key,value) = item
                            requestParams[key] = value
                        }
                    }
                }
                
            }else{
                return ""
            }
            // 判断参数进行拼接
            if(requestParams.count > 0)
            {
                for key in requestParams.keys.sorted(by: >)
                {
                    if(!url.contains(key) && key != "version")
                    {
                        param = param + "&" + key + "=" + (requestParams[key] ?? "")
                    } 
                }
            }
            if(!param.isEmpty)
            {
                param.removeFirst();
                param = "?" + param 
            }
            return param
        }else{
            return ""
        }
    }
    
    //创建参数，暂时不支持字典
    private func createParam(key: String?, value: Any)->[String:String]
    {
        if(key == nil || key!.isEmpty)
        {
            return [String:String]();
        }
        
        var paramDic = [String:String]();
        if(value as Optional<Any> != nil && value is Array<Any>)
        {
            let arrayParamDic = getArrayParam(array: value as! Array<Any>, superName: key)
            if(arrayParamDic.count > 0)
            {
                arrayParamDic.forEach { (args) in
                    var (key,value) = args
                    value =  value.replacingOccurrences(of:ENCODE_REGEX_PATTERN,with: "")
                    paramDic[key] = value.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
                }
            }
        }
        else{
            if(value is String){
              
                let stringValue = value as! String
                if(!stringValue.isEmpty)
                {
                     paramDic[key!] = stringValue
                }
            }else if(value is Character)
            {
                let characterValue = value as! Character
                if(!String(characterValue).isEmpty)
                {
                    paramDic[key!] = String(characterValue)
                }
                
            }else if(value is Double)
            {
                let doubleValue = value as! Double
                if(!String(doubleValue).isEmpty)
                {
                    paramDic[key!] = String(doubleValue)
                }
            }else if(value is Int ){
                let intValue = value as! Int
                if(!String(intValue).isEmpty)
                {
                    paramDic[key!] = String(intValue)
                }
            }else if(value is Int8 ){
                let int8Value = value as! Int8
                if(!String(int8Value).isEmpty)
                {
                    paramDic[key!] = String(int8Value)
                }
            }else if(value is Int16 ){
                let int16Value = value as! Int16
                if(!String(int16Value).isEmpty)
                {
                    paramDic[key!] = String(int16Value)
                }
            }else if(value is Int32 ){
                let int32Value = value as! Int32
                if(!String(int32Value).isEmpty)
                {
                    paramDic[key!] = String(int32Value)
                }
            }else if(value is Int64 ){
                let int64Value = value as! Int64
                if(!String(int64Value).isEmpty)
                {
                    paramDic[key!] = String(int64Value)
                }
            }else if(value is Float ){
                let floatValue = value as! Float
                if(!String(floatValue).isEmpty)
                {
                    paramDic[key!] = String(floatValue)
                }
            }else if(value is Float32 ){
                let float32Value = value as! Float32
                if(!String(float32Value).isEmpty)
                {
                    paramDic[key!] = String(float32Value)
                }
            }else if(value is Float64 ){
                let float64Value = value as! Float64
                if(!String(float64Value).isEmpty)
                {
                    paramDic[key!] = String(float64Value)
                }
            }else if( value is Bool)
            {
                let boolValue = value as! Bool
                if(!String(boolValue).isEmpty)
                {
                    paramDic[key!] = String(boolValue)
                }
                
            } else   if(value is Dictionary<String,Any> ||
                value is Dictionary<Character,Any> ||
                value is Dictionary<Int,Any> ||
                value is Dictionary<Int32,Any> ||
                value is Dictionary<Int64,Any> ||
                value is Dictionary<Double,Any> ||
                value is Dictionary<Float,Any> ||
                value is Dictionary<Float32,Any> ||
                value is Dictionary<Float64,Any> ||
                value is Dictionary<String?,Any> ||
                value is Dictionary<Character?,Any> ||
                value is Dictionary<Int?,Any> ||
                value is Dictionary<Int32?,Any> ||
                value is Dictionary<Int64?,Any> ||
                value is Dictionary<Double?,Any> ||
                value is Dictionary<Float?,Any> ||
                value is Dictionary<Float32?,Any> ||
                value is Dictionary<Float64?,Any> )
            {
                // TODO 这个地方暂时不做支持，需要注意
            }
            else{
                if(value as Optional<Any> != nil)
                {
                    let objectParamDic = getAnyObjectParam(obj: value, superName: key)
                    if(objectParamDic.count > 0)
                    {
                        objectParamDic.forEach { (args) in
                            var (key,value) = args
                            value =  value.replacingOccurrences(of:ENCODE_REGEX_PATTERN,with: "")
                            paramDic[key] = value.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
                        }
                    }
                }
            }
        }
        return paramDic;
    }
    
    private func getArrayParam(array:Array<Any>,superName:String?)->[String:String]
    {
        var paramDic = [String:String]();
        var i = 0;
        for item in array {
            if(item is String){
                let stringValue = item as! String
                if(!stringValue.isEmpty)
                {
                    paramDic[superName!+"."+String(i+1)] = stringValue
                }
            }else if(item is Character)
            {
                let characterValue = item as! Character
                if(!String(characterValue).isEmpty)
                {
                    paramDic[superName!+"."+String(i+1)] = String(characterValue)
                }
                
            }else if(item is Double)
            {
                let doubleValue = item as! Double
                if(!String(doubleValue).isEmpty)
                {
                    paramDic[superName!+"."+String(i+1)] = String(doubleValue)
                }
            }else if(item is Int ){
                let intValue = item as! Int
                if(!String(intValue).isEmpty)
                {
                    paramDic[superName!+"."+String(i+1)] = String(intValue)
                }
            }else if(item is Int8 ){
                let int8Value = item as! Int8
                if(!String(int8Value).isEmpty)
                {
                    paramDic[superName!+"."+String(i+1)] = String(int8Value)
                }
            }else if(item is Int16 ){
                let int16Value = item as! Int16
                if(!String(int16Value).isEmpty)
                {
                    paramDic[superName!+"."+String(i+1)] = String(int16Value)
                }
            }else if(item is Int32 ){
                let int32Value = item as! Int32
                if(!String(int32Value).isEmpty)
                {
                    paramDic[superName!+"."+String(i+1)] = String(int32Value)
                }
            }else if(item is Int64 ){
                let int64Value = item as! Int64
                if(!String(int64Value).isEmpty)
                {
                    paramDic[superName!+"."+String(i+1)] = String(int64Value)
                }
            }else if(item is Float ){
                let floatValue = item as! Float
                if(!String(floatValue).isEmpty)
                {
                    paramDic[superName!+"."+String(i+1)] = String(floatValue)
                }
            }else if(item is Float32 ){
                let float32Value = item as! Float32
                if(!String(float32Value).isEmpty)
                {
                    paramDic[superName!+"."+String(i+1)] = String(float32Value)
                }
            }else if(item is Float64 ){
                let float64Value = item as! Float64
                if(!String(float64Value).isEmpty)
                {
                    paramDic[superName!+"."+String(i+1)] = String(float64Value)
                }
            } else if( item is Bool)
            {
                let boolValue = item as! Bool
                if(!String(boolValue).isEmpty)
                {
                     paramDic[superName!+"."+String(i+1)] = String(boolValue)
                }
                
            }
             else if(item is Dictionary<String,Any> ||
                item is Dictionary<Character,Any> ||
                item is Dictionary<Int,Any> ||
                item is Dictionary<Int32,Any> ||
                item is Dictionary<Int64,Any> ||
                item is Dictionary<Double,Any> ||
                item is Dictionary<Float,Any> ||
                item is Dictionary<Float32,Any> ||
                item is Dictionary<Float64,Any> ||
                item is Dictionary<String?,Any> ||
                item is Dictionary<Character?,Any> ||
                item is Dictionary<Int?,Any> ||
                item is Dictionary<Int32?,Any> ||
                item is Dictionary<Int64?,Any> ||
                item is Dictionary<Double?,Any> ||
                item is Dictionary<Float?,Any> ||
                item is Dictionary<Float32?,Any> ||
                item is Dictionary<Float64?,Any>  )
            {
                // TODO 这个地方暂时不做支持，需要注意
            } else {
                if(item as Optional<Any> != nil)
                {
                    let subObjectParam = createParam( key: superName!+"."+String(i+1), value: item)
                    if(subObjectParam.count>0)
                    {
                        subObjectParam.forEach { (arg0) in
                            let (key, value) = arg0
                            paramDic[key] = value
                        }
                    }
                }
            }
            i = i+1
        }
        
        
        return paramDic;
    }
    
    private func getAnyObjectParam (obj:Any,superName:String?) -> [String:String]
    {
        var paramDic = [String:String]();
        
        let anyObjectParamDic = objectDictionary(obj: obj)
        if(anyObjectParamDic != nil)
        {
            anyObjectParamDic!.forEach{ (arg) in
                let (key,value) = arg;
                if(!url.contains("{"+key+"}"))
                {
                    let paramName = createParamKey(superName: superName, name: key)
                    if(value is String){
                        let stringValue = value as! String
                        if(!stringValue.isEmpty)
                        {
                             paramDic[paramName]  = stringValue
                        }
                    }else if(value is Character)
                    {
                        let characterValue = value as! Character
                        if(!String(characterValue).isEmpty)
                        {
                             paramDic[paramName]  = String(characterValue)
                        }
                        
                    }else if(value is Double)
                    {
                        let doubleValue = value as! Double
                        if(!String(doubleValue).isEmpty)
                        {
                             paramDic[paramName]  = String(doubleValue)
                        }
                    }else if(value is Int ){
                        let intValue = value as! Int
                        if(!String(intValue).isEmpty)
                        {
                             paramDic[paramName]  = String(intValue)
                        }
                    }else if(value is Int8 ){
                        let int8Value = value as! Int8
                        if(!String(int8Value).isEmpty)
                        {
                             paramDic[paramName]  = String(int8Value)
                        }
                    }else if(value is Int16 ){
                        let int16Value = value as! Int16
                        if(!String(int16Value).isEmpty)
                        {
                             paramDic[paramName]  = String(int16Value)
                        }
                    }else if(value is Int32 ){
                        let int32Value = value as! Int32
                        if(!String(int32Value).isEmpty)
                        {
                             paramDic[paramName]  = String(int32Value)
                        }
                    }else if(value is Int64 ){
                        let int64Value = value as! Int64
                        if(!String(int64Value).isEmpty)
                        {
                             paramDic[paramName]  = String(int64Value)
                        }
                    }else if(value is Float ){
                        let floatValue = value as! Float
                        if(!String(floatValue).isEmpty)
                        {
                             paramDic[paramName]  = String(floatValue)
                        }
                    }else if(value is Float32 ){
                        let float32Value = value as! Float32
                        if(!String(float32Value).isEmpty)
                        {
                            paramDic[paramName]  = String(float32Value)
                        }
                    }else if(value is Float64 ){
                        let float64Value = value as! Float64
                        if(!String(float64Value).isEmpty)
                        {
                             paramDic[paramName]  = String(float64Value)
                        }
                    } else if( value is Bool)
                    {
                        let boolValue = value as! Bool
                        if(!String(boolValue).isEmpty)
                        {
                             paramDic[paramName] = String(boolValue)
                        }
                        
                    } else if(value is Dictionary<String,Any> ||
                        value is Dictionary<Character,Any> ||
                        value is Dictionary<Int,Any> ||
                        value is Dictionary<Int32,Any> ||
                        value is Dictionary<Int64,Any> ||
                        value is Dictionary<Double,Any> ||
                        value is Dictionary<Float,Any> ||
                        value is Dictionary<Float32,Any> ||
                        value is Dictionary<Float64,Any> ||
                        value is Dictionary<String?,Any> ||
                        value is Dictionary<Character?,Any> ||
                        value is Dictionary<Int?,Any> ||
                        value is Dictionary<Int32?,Any> ||
                        value is Dictionary<Int64?,Any> ||
                        value is Dictionary<Double?,Any> ||
                        value is Dictionary<Float?,Any> ||
                        value is Dictionary<Float32?,Any> ||
                        value is Dictionary<Float64?,Any> )
                    {
                        // TODO 这个地方暂时不做支持，需要注意
                    }else
                    {
                        if(value as Optional<Any> != nil)
                        {
                            let subArrayParam = createParam(key: paramName, value: value )
                            if(subArrayParam.count>0)
                            {
                                subArrayParam.forEach { (arg0) in
                                    let (key, value) = arg0
                                    paramDic[key] = value
                                }
                            }
                        }
                    }
                }
            }
        }
        return paramDic;
    }
    
    private func createParamKey(superName:String?,name:String) -> String
    {
        if(superName == nil || superName!.isEmpty)
        {
            return name
        }else
        {
            return superName!+"."+name
        }
    }
    
    //替换 url 内参数
   public func repaceUrl(httpUrl:String,request:JdCloudRequest) -> String {
        if(httpUrl.isEmpty)
        {
            return "";
        }
        if httpUrl.index(of:"{") == nil
        {
            return httpUrl;
        }
        
        let requestHttpUrl = httpUrl as NSString
        var resultHttpUrl = httpUrl as NSString
        let regex = try! NSRegularExpression(pattern: PATTERN, options: NSRegularExpression.Options.caseInsensitive)
        let res = regex.matches(in: httpUrl, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, httpUrl.count))
    
        for  rst in res {
            var replaceNSString = requestHttpUrl.substring(with: rst.range)
            let regexString = replaceNSString as String
            replaceNSString.removeFirst();
            replaceNSString.removeLast();
            do{
                let propertyValue = try getRequestValue(propertyName: replaceNSString as String , request: request)
                resultHttpUrl = resultHttpUrl.replacingOccurrences(of:regexString,with: propertyValue) as NSString
            }catch{
                print(error)
            }
        }
        return resultHttpUrl as String;
        
    }
    
    //检查参数，并返回版本信息
    func checkImportParams(version:String?)throws -> String {
        
        var v:String = ""
        if(version == nil || version!.isEmpty)
        {
            v = jdCloudClient.version ;
        }else{
            v = version!
        }
        if(v.isEmpty)
        {
            throw SDKError.argumentNullError("Client version not set")
        }
        if(jdCloudClient.sdkEnvironment.endPoint.isEmpty )
        {
            throw SDKError.argumentNullError(" endPoint not set ")
        }
        if(jdCloudClient.serviceName.isEmpty )
        {
            throw SDKError.argumentNullError("Service name not set")
        }
        return v;
        
    }
    
    func getRequestValue<T:JdCloudRequest>(propertyName:String,request:T) throws -> String {
        let propertyDictionary = objectDictionary(obj:request);
        if(propertyDictionary != nil)
        {
            let value = propertyDictionary?[propertyName]!
            if(value != nil)
            {
                return value as! String
            }
        }
       
        throw SDKError.paramRequestError("get path param error");
    }
    
    
    ///  模型转字典
    ///
    ///  - parameter obj: 模型对象
    ///
    ///  - returns: 字典信息
    func objectDictionary(obj: Any) -> [String: Any]? {
        
        var resultModel = [String:Any]();
        let mirror = Mirror(reflecting: obj);
        var chlidrens =  [Mirror.Child]();
        // 判断是否包含父类 ，有父类添加父类属性
        if mirror.superclassMirror != nil && mirror.superclassMirror!.children.count > 0  {
            mirror.superclassMirror!.children.forEach { (child) in
                chlidrens.append(child);
            }
        }
        if mirror.superclassMirror != nil && mirror.superclassMirror!.superclassMirror != nil && mirror.superclassMirror!.superclassMirror!.children.count > 0{
            mirror.superclassMirror!.superclassMirror!.children.forEach { (child) in
                chlidrens.append(child);
            }
        }
        if mirror.superclassMirror != nil &&
            mirror.superclassMirror!.superclassMirror != nil &&
            mirror.superclassMirror!.superclassMirror!.superclassMirror != nil &&
            mirror.superclassMirror!.superclassMirror!.superclassMirror!.children.count > 0{
            mirror.superclassMirror!.superclassMirror!.superclassMirror!.children.forEach { (child) in
                chlidrens.append(child);
            }
        }
        if(mirror.children.count>0)
        {
            mirror.children.forEach { (child) in
                chlidrens.append(child);
            }
        }
        //将对象转换为字典类型
        if(chlidrens.count > 0 )
        {
            chlidrens.forEach { (children) in
                if ( children.label != nil)
                {
                    resultModel[children.label!]=children.value
                }
            }
            return resultModel;
        }
      return nil
    }
    
}
