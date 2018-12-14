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

   京东云数据库MongoDB接口
   数据库MongoDB相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class MongodbJDCloudClient :JDCloudClient{
    
    private final var mongodbJDCloudClient:MongodbJDCloudClient!
    
    init(credential:Credential,sdkEnvironment:SDKEnvironment) {
         self.credential = credential
         self.sdkEnvironment = sdkEnvironment 
    } 
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "mongodb" + "v1"
    
    public let serviceName: String = "mongodb"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()
    
    public var httpRequestProtocol: String = "https"
    
    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }
    
    public func modifyInstanceSpecAsync(request:ModifyInstanceSpecRequest,requestComplation:@escaping ExecuteResult<ModifyInstanceSpecResult>) throws {
        mongodbJDCloudClient = self
        try ModifyInstanceSpecExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeSecurityIpsAsync(request:DescribeSecurityIpsRequest,requestComplation:@escaping ExecuteResult<DescribeSecurityIpsResult>) throws {
        mongodbJDCloudClient = self
        try DescribeSecurityIpsExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeInstancesAsync(request:DescribeInstancesRequest,requestComplation:@escaping ExecuteResult<DescribeInstancesResult>) throws {
        mongodbJDCloudClient = self
        try DescribeInstancesExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteMongoDbsAsync(request:DeleteMongoDbsRequest,requestComplation:@escaping ExecuteResult<DeleteMongoDbsResult>) throws {
        mongodbJDCloudClient = self
        try DeleteMongoDbsExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeBackupSynchronicitiesAsync(request:DescribeBackupSynchronicitiesRequest,requestComplation:@escaping ExecuteResult<DescribeBackupSynchronicitiesResult>) throws {
        mongodbJDCloudClient = self
        try DescribeBackupSynchronicitiesExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createBackupSynchronicityAsync(request:CreateBackupSynchronicityRequest,requestComplation:@escaping ExecuteResult<CreateBackupSynchronicityResult>) throws {
        mongodbJDCloudClient = self
        try CreateBackupSynchronicityExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeTopologyAsync(request:DescribeTopologyRequest,requestComplation:@escaping ExecuteResult<DescribeTopologyResult>) throws {
        mongodbJDCloudClient = self
        try DescribeTopologyExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeFlavorsAsync(request:DescribeFlavorsRequest,requestComplation:@escaping ExecuteResult<DescribeFlavorsResult>) throws {
        mongodbJDCloudClient = self
        try DescribeFlavorsExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyInstanceNameAsync(request:ModifyInstanceNameRequest,requestComplation:@escaping ExecuteResult<ModifyInstanceNameResult>) throws {
        mongodbJDCloudClient = self
        try ModifyInstanceNameExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAvailableZonesAsync(request:DescribeAvailableZonesRequest,requestComplation:@escaping ExecuteResult<DescribeAvailableZonesResult>) throws {
        mongodbJDCloudClient = self
        try DescribeAvailableZonesExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func verifyInstanceValidationAsync(request:VerifyInstanceValidationRequest,requestComplation:@escaping ExecuteResult<VerifyInstanceValidationResult>) throws {
        mongodbJDCloudClient = self
        try VerifyInstanceValidationExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteBackupAsync(request:DeleteBackupRequest,requestComplation:@escaping ExecuteResult<DeleteBackupResult>) throws {
        mongodbJDCloudClient = self
        try DeleteBackupExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeUserQuotaAsync(request:DescribeUserQuotaRequest,requestComplation:@escaping ExecuteResult<DescribeUserQuotaResult>) throws {
        mongodbJDCloudClient = self
        try DescribeUserQuotaExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteBackupSynchronicitiesAsync(request:DeleteBackupSynchronicitiesRequest,requestComplation:@escaping ExecuteResult<DeleteBackupSynchronicitiesResult>) throws {
        mongodbJDCloudClient = self
        try DeleteBackupSynchronicitiesExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func restartInstanceAsync(request:RestartInstanceRequest,requestComplation:@escaping ExecuteResult<RestartInstanceResult>) throws {
        mongodbJDCloudClient = self
        try RestartInstanceExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createInstanceAsync(request:CreateInstanceRequest,requestComplation:@escaping ExecuteResult<CreateInstanceResult>) throws {
        mongodbJDCloudClient = self
        try CreateInstanceExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeBackupPolicyAsync(request:DescribeBackupPolicyRequest,requestComplation:@escaping ExecuteResult<DescribeBackupPolicyResult>) throws {
        mongodbJDCloudClient = self
        try DescribeBackupPolicyExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func backupDownloadURLAsync(request:BackupDownloadURLRequest,requestComplation:@escaping ExecuteResult<BackupDownloadURLResult>) throws {
        mongodbJDCloudClient = self
        try BackupDownloadURLExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteInstanceAsync(request:DeleteInstanceRequest,requestComplation:@escaping ExecuteResult<DeleteInstanceResult>) throws {
        mongodbJDCloudClient = self
        try DeleteInstanceExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func restoreInstanceAsync(request:RestoreInstanceRequest,requestComplation:@escaping ExecuteResult<RestoreInstanceResult>) throws {
        mongodbJDCloudClient = self
        try RestoreInstanceExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func resetPasswordAsync(request:ResetPasswordRequest,requestComplation:@escaping ExecuteResult<ResetPasswordResult>) throws {
        mongodbJDCloudClient = self
        try ResetPasswordExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createBackupAsync(request:CreateBackupRequest,requestComplation:@escaping ExecuteResult<CreateBackupResult>) throws {
        mongodbJDCloudClient = self
        try CreateBackupExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyBackupPolicyAsync(request:ModifyBackupPolicyRequest,requestComplation:@escaping ExecuteResult<ModifyBackupPolicyResult>) throws {
        mongodbJDCloudClient = self
        try ModifyBackupPolicyExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifySecurityIpsAsync(request:ModifySecurityIpsRequest,requestComplation:@escaping ExecuteResult<ModifySecurityIpsResult>) throws {
        mongodbJDCloudClient = self
        try ModifySecurityIpsExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeBackupsAsync(request:DescribeBackupsRequest,requestComplation:@escaping ExecuteResult<DescribeBackupsResult>) throws {
        mongodbJDCloudClient = self
        try DescribeBackupsExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    
}


public extension MongodbJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "mongodb.jdcloud-api.com");
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
                sdkEnvironment = SDKEnvironment(endPoint: "mongodb.jdcloud-api.com");
            }
            self.init(credential: GlobalConfig.credential!,sdkEnvironment: sdkEnvironment)
        }

    }
}
