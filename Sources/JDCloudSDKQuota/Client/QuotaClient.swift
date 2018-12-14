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

   JDCLOUD quota API
   API as quota

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class QuotaJDCloudClient :JDCloudClient{
    
    private final var quotaJDCloudClient:QuotaJDCloudClient!
    
    init(credential:Credential,sdkEnvironment:SDKEnvironment) {
         self.credential = credential
         self.sdkEnvironment = sdkEnvironment 
    } 
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "quota" + "v1"
    
    public let serviceName: String = "quota"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()
    
    public var httpRequestProtocol: String = "https"
    
    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }
    
    public func queryRegionServiceAsync(request:QueryRegionServiceRequest,requestComplation:@escaping ExecuteResult<QueryRegionServiceResult>) throws {
        quotaJDCloudClient = self
        try QueryRegionServiceExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getResourceQuotaListAsync(request:GetResourceQuotaListRequest,requestComplation:@escaping ExecuteResult<GetResourceQuotaListResult>) throws {
        quotaJDCloudClient = self
        try GetResourceQuotaListExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func userQuotaDetailsAsync(request:UserQuotaDetailsRequest,requestComplation:@escaping ExecuteResult<UserQuotaDetailsResult>) throws {
        quotaJDCloudClient = self
        try UserQuotaDetailsExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyUserQuotaDefaultAsync(request:ModifyUserQuotaDefaultRequest,requestComplation:@escaping ExecuteResult<ModifyUserQuotaDefaultResult>) throws {
        quotaJDCloudClient = self
        try ModifyUserQuotaDefaultExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getResourceQuotaByObjectAsync(request:GetResourceQuotaByObjectRequest,requestComplation:@escaping ExecuteResult<GetResourceQuotaByObjectResult>) throws {
        quotaJDCloudClient = self
        try GetResourceQuotaByObjectExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryOneUserQuotaAsync(request:QueryOneUserQuotaRequest,requestComplation:@escaping ExecuteResult<QueryOneUserQuotaResult>) throws {
        quotaJDCloudClient = self
        try QueryOneUserQuotaExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getResourceQuotaDetailAsync(request:GetResourceQuotaDetailRequest,requestComplation:@escaping ExecuteResult<GetResourceQuotaDetailResult>) throws {
        quotaJDCloudClient = self
        try GetResourceQuotaDetailExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func resourceQuotaRegionDetailsAsync(request:ResourceQuotaRegionDetailsRequest,requestComplation:@escaping ExecuteResult<ResourceQuotaRegionDetailsResult>) throws {
        quotaJDCloudClient = self
        try ResourceQuotaRegionDetailsExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getResourceInfoAsync(request:GetResourceInfoRequest,requestComplation:@escaping ExecuteResult<GetResourceInfoResult>) throws {
        quotaJDCloudClient = self
        try GetResourceInfoExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getBelongedVPCListAsync(request:GetBelongedVPCListRequest,requestComplation:@escaping ExecuteResult<GetBelongedVPCListResult>) throws {
        quotaJDCloudClient = self
        try GetBelongedVPCListExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func verifyAsync(request:VerifyRequest,requestComplation:@escaping ExecuteResult<VerifyResult>) throws {
        quotaJDCloudClient = self
        try VerifyExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getVPCResourceInfoAsync(request:GetVPCResourceInfoRequest,requestComplation:@escaping ExecuteResult<GetVPCResourceInfoResult>) throws {
        quotaJDCloudClient = self
        try GetVPCResourceInfoExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateUserQuotaAsync(request:UpdateUserQuotaRequest,requestComplation:@escaping ExecuteResult<UpdateUserQuotaResult>) throws {
        quotaJDCloudClient = self
        try UpdateUserQuotaExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryConfigureServiceAsync(request:QueryConfigureServiceRequest,requestComplation:@escaping ExecuteResult<QueryConfigureServiceResult>) throws {
        quotaJDCloudClient = self
        try QueryConfigureServiceExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func templateAsync(request:TemplateRequest,requestComplation:@escaping ExecuteResult<TemplateResult>) throws {
        quotaJDCloudClient = self
        try TemplateExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryUserQuotaListAsync(request:QueryUserQuotaListRequest,requestComplation:@escaping ExecuteResult<QueryUserQuotaListResult>) throws {
        quotaJDCloudClient = self
        try QueryUserQuotaListExecutor(jdCloudClient: quotaJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    
}


public extension QuotaJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "quota.jdcloud.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }

    convenience init() throws{

        if(GlobalConfig.credential == nil)
        {
            throw SDKError.argumentNullError("credential can not be nil")
        }else{
              var sdkEnvironment:SDKEnvironment
            if(GlobalConfig.sdkEnvironment != nil)
            {
                sdkEnvironment = GlobalConfig.sdkEnvironment!
            }else{
                sdkEnvironment = SDKEnvironment(endPoint: "quota.jdcloud.com");
            }
            self.init(credential: GlobalConfig.credential!,sdkEnvironment: sdkEnvironment)
        }

    }
}
