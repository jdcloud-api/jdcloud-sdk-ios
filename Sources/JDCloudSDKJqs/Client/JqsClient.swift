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

   JCLOUD Queue Service API
   Console UI API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class JqsJDCloudClient :JDCloudClient{
    
    private final var jqsJDCloudClient:JqsJDCloudClient!
    
    init(credential:Credential,sdkEnvironment:SDKEnvironment) {
         self.credential = credential
         self.sdkEnvironment = sdkEnvironment 
    } 
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "jqs" + "v1"
    
    public let serviceName: String = "jqs"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()
    
    public var httpRequestProtocol: String = "https"
    
    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }
    
    public func deleteMessageAsync(request:DeleteMessageRequest,requestComplation:@escaping ExecuteResult<DeleteMessageResult>) throws {
        jqsJDCloudClient = self
        try DeleteMessageExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteQueueAsync(request:DeleteQueueRequest,requestComplation:@escaping ExecuteResult<DeleteQueueResult>) throws {
        jqsJDCloudClient = self
        try DeleteQueueExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteMessageBatchAsync(request:DeleteMessageBatchRequest,requestComplation:@escaping ExecuteResult<DeleteMessageBatchResult>) throws {
        jqsJDCloudClient = self
        try DeleteMessageBatchExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func sendMessageAsync(request:SendMessageRequest,requestComplation:@escaping ExecuteResult<SendMessageResult>) throws {
        jqsJDCloudClient = self
        try SendMessageExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createQueueAsync(request:CreateQueueRequest,requestComplation:@escaping ExecuteResult<CreateQueueResult>) throws {
        jqsJDCloudClient = self
        try CreateQueueExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func tagQueueAsync(request:TagQueueRequest,requestComplation:@escaping ExecuteResult<TagQueueResult>) throws {
        jqsJDCloudClient = self
        try TagQueueExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func setQueueAttributesAsync(request:SetQueueAttributesRequest,requestComplation:@escaping ExecuteResult<SetQueueAttributesResult>) throws {
        jqsJDCloudClient = self
        try SetQueueAttributesExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func purgeQueueAsync(request:PurgeQueueRequest,requestComplation:@escaping ExecuteResult<PurgeQueueResult>) throws {
        jqsJDCloudClient = self
        try PurgeQueueExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func untagQueueAsync(request:UntagQueueRequest,requestComplation:@escaping ExecuteResult<UntagQueueResult>) throws {
        jqsJDCloudClient = self
        try UntagQueueExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func addPermissionAsync(request:AddPermissionRequest,requestComplation:@escaping ExecuteResult<AddPermissionResult>) throws {
        jqsJDCloudClient = self
        try AddPermissionExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func receiveMessageAsync(request:ReceiveMessageRequest,requestComplation:@escaping ExecuteResult<ReceiveMessageResult>) throws {
        jqsJDCloudClient = self
        try ReceiveMessageExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getQueueAttributesAsync(request:GetQueueAttributesRequest,requestComplation:@escaping ExecuteResult<GetQueueAttributesResult>) throws {
        jqsJDCloudClient = self
        try GetQueueAttributesExecutor(jdCloudClient: jqsJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    
}


public extension JqsJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "jqs.jdcloud-api.com");
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
                sdkEnvironment = SDKEnvironment(endPoint: "jqs.jdcloud-api.com");
            }
            self.init(credential: GlobalConfig.credential!,sdkEnvironment: sdkEnvironment)
        }

    }
}