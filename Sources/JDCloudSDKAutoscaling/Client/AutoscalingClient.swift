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

   弹性伸缩
   弹性伸缩相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class AutoscalingJDCloudClient :JDCloudClient{
    
    private final var autoscalingJDCloudClient:AutoscalingJDCloudClient!
    
    init(credential:Credential,sdkEnvironment:SDKEnvironment) {
         self.credential = credential
         self.sdkEnvironment = sdkEnvironment 
    } 
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "autoscaling" + "v1"
    
    public let serviceName: String = "autoscaling"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()
    
    public var httpRequestProtocol: String = "https"
    
    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }
    
    public func deleteAutoscalingGroupAsync(request:DeleteAutoscalingGroupRequest,requestComplation:@escaping ExecuteResult<DeleteAutoscalingGroupResult>) throws {
        autoscalingJDCloudClient = self
        try DeleteAutoscalingGroupExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteScheduledActionAsync(request:DeleteScheduledActionRequest,requestComplation:@escaping ExecuteResult<DeleteScheduledActionResult>) throws {
        autoscalingJDCloudClient = self
        try DeleteScheduledActionExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyDynamicPolicyAsync(request:ModifyDynamicPolicyRequest,requestComplation:@escaping ExecuteResult<ModifyDynamicPolicyResult>) throws {
        autoscalingJDCloudClient = self
        try ModifyDynamicPolicyExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyAutoscalingAsync(request:ModifyAutoscalingRequest,requestComplation:@escaping ExecuteResult<ModifyAutoscalingResult>) throws {
        autoscalingJDCloudClient = self
        try ModifyAutoscalingExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func disableAutoscalingGroupByIdAsync(request:DisableAutoscalingGroupByIdRequest,requestComplation:@escaping ExecuteResult<DisableAutoscalingGroupByIdResult>) throws {
        autoscalingJDCloudClient = self
        try DisableAutoscalingGroupByIdExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func disableLaunchConfigAsync(request:DisableLaunchConfigRequest,requestComplation:@escaping ExecuteResult<DisableLaunchConfigResult>) throws {
        autoscalingJDCloudClient = self
        try DisableLaunchConfigExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryDynamicPolicyByIdAsync(request:QueryDynamicPolicyByIdRequest,requestComplation:@escaping ExecuteResult<QueryDynamicPolicyByIdResult>) throws {
        autoscalingJDCloudClient = self
        try QueryDynamicPolicyByIdExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeInstancesAsync(request:DescribeInstancesRequest,requestComplation:@escaping ExecuteResult<DescribeInstancesResult>) throws {
        autoscalingJDCloudClient = self
        try DescribeInstancesExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeQuotaAsync(request:DescribeQuotaRequest,requestComplation:@escaping ExecuteResult<DescribeQuotaResult>) throws {
        autoscalingJDCloudClient = self
        try DescribeQuotaExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func attachInstancesToAutoscalingGroupAsync(request:AttachInstancesToAutoscalingGroupRequest,requestComplation:@escaping ExecuteResult<AttachInstancesToAutoscalingGroupResult>) throws {
        autoscalingJDCloudClient = self
        try AttachInstancesToAutoscalingGroupExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyAutoscalingGroupAsync(request:ModifyAutoscalingGroupRequest,requestComplation:@escaping ExecuteResult<ModifyAutoscalingGroupResult>) throws {
        autoscalingJDCloudClient = self
        try ModifyAutoscalingGroupExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteLaunchConfigAsync(request:DeleteLaunchConfigRequest,requestComplation:@escaping ExecuteResult<DeleteLaunchConfigResult>) throws {
        autoscalingJDCloudClient = self
        try DeleteLaunchConfigExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAutoscalingAsync(request:DescribeAutoscalingRequest,requestComplation:@escaping ExecuteResult<DescribeAutoscalingResult>) throws {
        autoscalingJDCloudClient = self
        try DescribeAutoscalingExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteInstancesAsync(request:DeleteInstancesRequest,requestComplation:@escaping ExecuteResult<DeleteInstancesResult>) throws {
        autoscalingJDCloudClient = self
        try DeleteInstancesExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryScheduledActionByIdAsync(request:QueryScheduledActionByIdRequest,requestComplation:@escaping ExecuteResult<QueryScheduledActionByIdResult>) throws {
        autoscalingJDCloudClient = self
        try QueryScheduledActionByIdExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createAutoscalingAsync(request:CreateAutoscalingRequest,requestComplation:@escaping ExecuteResult<CreateAutoscalingResult>) throws {
        autoscalingJDCloudClient = self
        try CreateAutoscalingExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyScheduledActionAsync(request:ModifyScheduledActionRequest,requestComplation:@escaping ExecuteResult<ModifyScheduledActionResult>) throws {
        autoscalingJDCloudClient = self
        try ModifyScheduledActionExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func addContactsAsync(request:AddContactsRequest,requestComplation:@escaping ExecuteResult<AddContactsResult>) throws {
        autoscalingJDCloudClient = self
        try AddContactsExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func disableAutoscalingAsync(request:DisableAutoscalingRequest,requestComplation:@escaping ExecuteResult<DisableAutoscalingResult>) throws {
        autoscalingJDCloudClient = self
        try DisableAutoscalingExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyInstancesProtectionAsync(request:ModifyInstancesProtectionRequest,requestComplation:@escaping ExecuteResult<ModifyInstancesProtectionResult>) throws {
        autoscalingJDCloudClient = self
        try ModifyInstancesProtectionExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createLaunchConfigAsync(request:CreateLaunchConfigRequest,requestComplation:@escaping ExecuteResult<CreateLaunchConfigResult>) throws {
        autoscalingJDCloudClient = self
        try CreateLaunchConfigExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func disableDynamicPolicyAsync(request:DisableDynamicPolicyRequest,requestComplation:@escaping ExecuteResult<DisableDynamicPolicyResult>) throws {
        autoscalingJDCloudClient = self
        try DisableDynamicPolicyExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryDynamicPolicyAsync(request:QueryDynamicPolicyRequest,requestComplation:@escaping ExecuteResult<QueryDynamicPolicyResult>) throws {
        autoscalingJDCloudClient = self
        try QueryDynamicPolicyExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryLaunchConfigAsync(request:QueryLaunchConfigRequest,requestComplation:@escaping ExecuteResult<QueryLaunchConfigResult>) throws {
        autoscalingJDCloudClient = self
        try QueryLaunchConfigExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func enableScheduledActionAsync(request:EnableScheduledActionRequest,requestComplation:@escaping ExecuteResult<EnableScheduledActionResult>) throws {
        autoscalingJDCloudClient = self
        try EnableScheduledActionExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createScheduledActionAsync(request:CreateScheduledActionRequest,requestComplation:@escaping ExecuteResult<CreateScheduledActionResult>) throws {
        autoscalingJDCloudClient = self
        try CreateScheduledActionExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteContactAsync(request:DeleteContactRequest,requestComplation:@escaping ExecuteResult<DeleteContactResult>) throws {
        autoscalingJDCloudClient = self
        try DeleteContactExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func enableAutoscalingGroupByIdAsync(request:EnableAutoscalingGroupByIdRequest,requestComplation:@escaping ExecuteResult<EnableAutoscalingGroupByIdResult>) throws {
        autoscalingJDCloudClient = self
        try EnableAutoscalingGroupByIdExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func enableAutoscalingAsync(request:EnableAutoscalingRequest,requestComplation:@escaping ExecuteResult<EnableAutoscalingResult>) throws {
        autoscalingJDCloudClient = self
        try EnableAutoscalingExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createAutoscalingGroupAsync(request:CreateAutoscalingGroupRequest,requestComplation:@escaping ExecuteResult<CreateAutoscalingGroupResult>) throws {
        autoscalingJDCloudClient = self
        try CreateAutoscalingGroupExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func enableDynamicPolicyAsync(request:EnableDynamicPolicyRequest,requestComplation:@escaping ExecuteResult<EnableDynamicPolicyResult>) throws {
        autoscalingJDCloudClient = self
        try EnableDynamicPolicyExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createDynamicPolicyAsync(request:CreateDynamicPolicyRequest,requestComplation:@escaping ExecuteResult<CreateDynamicPolicyResult>) throws {
        autoscalingJDCloudClient = self
        try CreateDynamicPolicyExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryScalingHistoryAsync(request:QueryScalingHistoryRequest,requestComplation:@escaping ExecuteResult<QueryScalingHistoryResult>) throws {
        autoscalingJDCloudClient = self
        try QueryScalingHistoryExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryAutoscalingGroupByIdAsync(request:QueryAutoscalingGroupByIdRequest,requestComplation:@escaping ExecuteResult<QueryAutoscalingGroupByIdResult>) throws {
        autoscalingJDCloudClient = self
        try QueryAutoscalingGroupByIdExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func disableScheduledActionAsync(request:DisableScheduledActionRequest,requestComplation:@escaping ExecuteResult<DisableScheduledActionResult>) throws {
        autoscalingJDCloudClient = self
        try DisableScheduledActionExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func healAutoscalingGroupByIdAsync(request:HealAutoscalingGroupByIdRequest,requestComplation:@escaping ExecuteResult<HealAutoscalingGroupByIdResult>) throws {
        autoscalingJDCloudClient = self
        try HealAutoscalingGroupByIdExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryAutoscalingGroupsByLaunchConfigIdAsync(request:QueryAutoscalingGroupsByLaunchConfigIdRequest,requestComplation:@escaping ExecuteResult<QueryAutoscalingGroupsByLaunchConfigIdResult>) throws {
        autoscalingJDCloudClient = self
        try QueryAutoscalingGroupsByLaunchConfigIdExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func enableLaunchConfigAsync(request:EnableLaunchConfigRequest,requestComplation:@escaping ExecuteResult<EnableLaunchConfigResult>) throws {
        autoscalingJDCloudClient = self
        try EnableLaunchConfigExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteDynamicPolicyAsync(request:DeleteDynamicPolicyRequest,requestComplation:@escaping ExecuteResult<DeleteDynamicPolicyResult>) throws {
        autoscalingJDCloudClient = self
        try DeleteDynamicPolicyExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryInstancesByAutoscalingGroupIdAsync(request:QueryInstancesByAutoscalingGroupIdRequest,requestComplation:@escaping ExecuteResult<QueryInstancesByAutoscalingGroupIdResult>) throws {
        autoscalingJDCloudClient = self
        try QueryInstancesByAutoscalingGroupIdExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryScheduledByAutoscalingGroupIdAsync(request:QueryScheduledByAutoscalingGroupIdRequest,requestComplation:@escaping ExecuteResult<QueryScheduledByAutoscalingGroupIdResult>) throws {
        autoscalingJDCloudClient = self
        try QueryScheduledByAutoscalingGroupIdExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryContactsAsync(request:QueryContactsRequest,requestComplation:@escaping ExecuteResult<QueryContactsResult>) throws {
        autoscalingJDCloudClient = self
        try QueryContactsExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryAutoscalingGroupsAsync(request:QueryAutoscalingGroupsRequest,requestComplation:@escaping ExecuteResult<QueryAutoscalingGroupsResult>) throws {
        autoscalingJDCloudClient = self
        try QueryAutoscalingGroupsExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func detachInstancesAsync(request:DetachInstancesRequest,requestComplation:@escaping ExecuteResult<DetachInstancesResult>) throws {
        autoscalingJDCloudClient = self
        try DetachInstancesExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryLaunchConfigByIdAsync(request:QueryLaunchConfigByIdRequest,requestComplation:@escaping ExecuteResult<QueryLaunchConfigByIdResult>) throws {
        autoscalingJDCloudClient = self
        try QueryLaunchConfigByIdExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAsGroupsByInstanceIdsAsync(request:DescribeAsGroupsByInstanceIdsRequest,requestComplation:@escaping ExecuteResult<DescribeAsGroupsByInstanceIdsResult>) throws {
        autoscalingJDCloudClient = self
        try DescribeAsGroupsByInstanceIdsExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteAutoscalingAsync(request:DeleteAutoscalingRequest,requestComplation:@escaping ExecuteResult<DeleteAutoscalingResult>) throws {
        autoscalingJDCloudClient = self
        try DeleteAutoscalingExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAutoscalingsAsync(request:DescribeAutoscalingsRequest,requestComplation:@escaping ExecuteResult<DescribeAutoscalingsResult>) throws {
        autoscalingJDCloudClient = self
        try DescribeAutoscalingsExecutor(jdCloudClient: autoscalingJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    
}


public extension AutoscalingJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "autoscaling.jdcloud-api.com");
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
                sdkEnvironment = SDKEnvironment(endPoint: "autoscaling.jdcloud-api.com");
            }
            self.init(credential: GlobalConfig.credential!,sdkEnvironment: sdkEnvironment)
        }

    }
}
