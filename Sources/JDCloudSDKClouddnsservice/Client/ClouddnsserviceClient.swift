/* Copyright 2018 JDCLOUD.COM

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

     http:#www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

   京东云解析OpenAPI接口
   京东云解析OpenAPI接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class ClouddnsserviceJDCloudClient:NSObject,JDCloudClient{
    
    private final var clouddnsserviceJDCloudClient:ClouddnsserviceJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        clouddnsserviceJDCloudClient = self
    }


    public override init() {

        if(GlobalConfig.credential == nil)
        {
            GlobalConfig.credential = Credential(accessKeyId: "",secretAccessKey: "")
        }
        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "clouddnsservice.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        clouddnsserviceJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "clouddnsservice/" + "v1"
    
    public let serviceName: String = "clouddnsservice"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func delDomainAsync(request:DelDomainRequest,requestComplation:@escaping ExecuteResult<DelDomainResult>) throws {
        clouddnsserviceJDCloudClient = self
        try DelDomainExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getDomainQueryCountAsync(request:GetDomainQueryCountRequest,requestComplation:@escaping ExecuteResult<GetDomainQueryCountResult>) throws {
        clouddnsserviceJDCloudClient = self
        try GetDomainQueryCountExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func batchSetDnsResolveAsync(request:BatchSetDnsResolveRequest,requestComplation:@escaping ExecuteResult<BatchSetDnsResolveResult>) throws {
        clouddnsserviceJDCloudClient = self
        try BatchSetDnsResolveExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getActionLogAsync(request:GetActionLogRequest,requestComplation:@escaping ExecuteResult<GetActionLogResult>) throws {
        clouddnsserviceJDCloudClient = self
        try GetActionLogExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getDomainQueryTrafficAsync(request:GetDomainQueryTrafficRequest,requestComplation:@escaping ExecuteResult<GetDomainQueryTrafficResult>) throws {
        clouddnsserviceJDCloudClient = self
        try GetDomainQueryTrafficExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func operateMonitorAsync(request:OperateMonitorRequest,requestComplation:@escaping ExecuteResult<OperateMonitorResult>) throws {
        clouddnsserviceJDCloudClient = self
        try OperateMonitorExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func addUserViewIPAsync(request:AddUserViewIPRequest,requestComplation:@escaping ExecuteResult<AddUserViewIPResult>) throws {
        clouddnsserviceJDCloudClient = self
        try AddUserViewIPExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func addMonitorTargetAsync(request:AddMonitorTargetRequest,requestComplation:@escaping ExecuteResult<AddMonitorTargetResult>) throws {
        clouddnsserviceJDCloudClient = self
        try AddMonitorTargetExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func addRRAsync(request:AddRRRequest,requestComplation:@escaping ExecuteResult<AddRRResult>) throws {
        clouddnsserviceJDCloudClient = self
        try AddRRExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func delUserViewAsync(request:DelUserViewRequest,requestComplation:@escaping ExecuteResult<DelUserViewResult>) throws {
        clouddnsserviceJDCloudClient = self
        try DelUserViewExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func operateRRAsync(request:OperateRRRequest,requestComplation:@escaping ExecuteResult<OperateRRResult>) throws {
        clouddnsserviceJDCloudClient = self
        try OperateRRExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func delUserViewIPAsync(request:DelUserViewIPRequest,requestComplation:@escaping ExecuteResult<DelUserViewIPResult>) throws {
        clouddnsserviceJDCloudClient = self
        try DelUserViewIPExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getMonitorAsync(request:GetMonitorRequest,requestComplation:@escaping ExecuteResult<GetMonitorResult>) throws {
        clouddnsserviceJDCloudClient = self
        try GetMonitorExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func updateMonitorAsync(request:UpdateMonitorRequest,requestComplation:@escaping ExecuteResult<UpdateMonitorResult>) throws {
        clouddnsserviceJDCloudClient = self
        try UpdateMonitorExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getUserViewIPAsync(request:GetUserViewIPRequest,requestComplation:@escaping ExecuteResult<GetUserViewIPResult>) throws {
        clouddnsserviceJDCloudClient = self
        try GetUserViewIPExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getTargetsAsync(request:GetTargetsRequest,requestComplation:@escaping ExecuteResult<GetTargetsResult>) throws {
        clouddnsserviceJDCloudClient = self
        try GetTargetsExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getMonitorAlarmInfoAsync(request:GetMonitorAlarmInfoRequest,requestComplation:@escaping ExecuteResult<GetMonitorAlarmInfoResult>) throws {
        clouddnsserviceJDCloudClient = self
        try GetMonitorAlarmInfoExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func addMonitorAsync(request:AddMonitorRequest,requestComplation:@escaping ExecuteResult<AddMonitorResult>) throws {
        clouddnsserviceJDCloudClient = self
        try AddMonitorExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func updateDomainAsync(request:UpdateDomainRequest,requestComplation:@escaping ExecuteResult<UpdateDomainResult>) throws {
        clouddnsserviceJDCloudClient = self
        try UpdateDomainExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func updateRRAsync(request:UpdateRRRequest,requestComplation:@escaping ExecuteResult<UpdateRRResult>) throws {
        clouddnsserviceJDCloudClient = self
        try UpdateRRExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func addUserViewAsync(request:AddUserViewRequest,requestComplation:@escaping ExecuteResult<AddUserViewResult>) throws {
        clouddnsserviceJDCloudClient = self
        try AddUserViewExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func searchRRAsync(request:SearchRRRequest,requestComplation:@escaping ExecuteResult<SearchRRResult>) throws {
        clouddnsserviceJDCloudClient = self
        try SearchRRExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getUserViewAsync(request:GetUserViewRequest,requestComplation:@escaping ExecuteResult<GetUserViewResult>) throws {
        clouddnsserviceJDCloudClient = self
        try GetUserViewExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getDomainsAsync(request:GetDomainsRequest,requestComplation:@escaping ExecuteResult<GetDomainsResult>) throws {
        clouddnsserviceJDCloudClient = self
        try GetDomainsExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func addDomainAsync(request:AddDomainRequest,requestComplation:@escaping ExecuteResult<AddDomainResult>) throws {
        clouddnsserviceJDCloudClient = self
        try AddDomainExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getViewTreeAsync(request:GetViewTreeRequest,requestComplation:@escaping ExecuteResult<GetViewTreeResult>) throws {
        clouddnsserviceJDCloudClient = self
        try GetViewTreeExecutor(jdCloudClient: clouddnsserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension ClouddnsserviceJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "clouddnsservice.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
