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

   User API
   用户相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class UserJDCloudClient :JDCloudClient{
    
    private final var userJDCloudClient:UserJDCloudClient!
    
    init(credential:Credential,sdkEnvironment:SDKEnvironment) {
         self.credential = credential
         self.sdkEnvironment = sdkEnvironment 
    } 
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "user" + "v1"
    
    public let serviceName: String = "user"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()
    
    public var httpRequestProtocol: String = "https"
    
    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }
    
    public func describeBalanceAsync(request:DescribeBalanceRequest,requestComplation:@escaping ExecuteResult<DescribeBalanceResult>) throws {
        userJDCloudClient = self
        try DescribeBalanceExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeMappedAzAsync(request:DescribeMappedAzRequest,requestComplation:@escaping ExecuteResult<DescribeMappedAzResult>) throws {
        userJDCloudClient = self
        try DescribeMappedAzExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeContactPersonAsync(request:DescribeContactPersonRequest,requestComplation:@escaping ExecuteResult<DescribeContactPersonResult>) throws {
        userJDCloudClient = self
        try DescribeContactPersonExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeControlManagementSummaryAsync(request:DescribeControlManagementSummaryRequest,requestComplation:@escaping ExecuteResult<DescribeControlManagementSummaryResult>) throws {
        userJDCloudClient = self
        try DescribeControlManagementSummaryExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeRegionAzMappingAsync(request:DescribeRegionAzMappingRequest,requestComplation:@escaping ExecuteResult<DescribeRegionAzMappingResult>) throws {
        userJDCloudClient = self
        try DescribeRegionAzMappingExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeUsersAsync(request:DescribeUsersRequest,requestComplation:@escaping ExecuteResult<DescribeUsersResult>) throws {
        userJDCloudClient = self
        try DescribeUsersExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeEnableStatusAsync(request:DescribeEnableStatusRequest,requestComplation:@escaping ExecuteResult<DescribeEnableStatusResult>) throws {
        userJDCloudClient = self
        try DescribeEnableStatusExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describePrivilegeAsync(request:DescribePrivilegeRequest,requestComplation:@escaping ExecuteResult<DescribePrivilegeResult>) throws {
        userJDCloudClient = self
        try DescribePrivilegeExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeNickNameAsync(request:DescribeNickNameRequest,requestComplation:@escaping ExecuteResult<DescribeNickNameResult>) throws {
        userJDCloudClient = self
        try DescribeNickNameExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describePrivilegeNewAsync(request:DescribePrivilegeNewRequest,requestComplation:@escaping ExecuteResult<DescribePrivilegeNewResult>) throws {
        userJDCloudClient = self
        try DescribePrivilegeNewExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAzMappingAsync(request:DescribeAzMappingRequest,requestComplation:@escaping ExecuteResult<DescribeAzMappingResult>) throws {
        userJDCloudClient = self
        try DescribeAzMappingExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func isRealUserAsync(request:IsRealUserRequest,requestComplation:@escaping ExecuteResult<IsRealUserResult>) throws {
        userJDCloudClient = self
        try IsRealUserExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeContactPersonsAsync(request:DescribeContactPersonsRequest,requestComplation:@escaping ExecuteResult<DescribeContactPersonsResult>) throws {
        userJDCloudClient = self
        try DescribeContactPersonsExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeContactGroupAsync(request:DescribeContactGroupRequest,requestComplation:@escaping ExecuteResult<DescribeContactGroupResult>) throws {
        userJDCloudClient = self
        try DescribeContactGroupExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeContactGroupsAsync(request:DescribeContactGroupsRequest,requestComplation:@escaping ExecuteResult<DescribeContactGroupsResult>) throws {
        userJDCloudClient = self
        try DescribeContactGroupsExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeContactGroupPersonsAsync(request:DescribeContactGroupPersonsRequest,requestComplation:@escaping ExecuteResult<DescribeContactGroupPersonsResult>) throws {
        userJDCloudClient = self
        try DescribeContactGroupPersonsExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeGrayUserAsync(request:DescribeGrayUserRequest,requestComplation:@escaping ExecuteResult<DescribeGrayUserResult>) throws {
        userJDCloudClient = self
        try DescribeGrayUserExecutor(jdCloudClient: userJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    
}


public extension UserJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "user.jdcloud-api.com");
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
                sdkEnvironment = SDKEnvironment(endPoint: "user.jdcloud-api.com");
            }
            self.init(credential: GlobalConfig.credential!,sdkEnvironment: sdkEnvironment)
        }

    }
}
