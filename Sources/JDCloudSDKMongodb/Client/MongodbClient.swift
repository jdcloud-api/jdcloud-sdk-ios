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
@objc(MongodbJDCloudClient)
public class MongodbJDCloudClient:NSObject,JDCloudClient{
    
    private final var mongodbJDCloudClient:MongodbJDCloudClient!


    @objc public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        mongodbJDCloudClient = self
    }


    @objc public override init() {

        if(GlobalConfig.credential == nil)
        {
            GlobalConfig.credential = Credential(accessKeyId: "",secretAccessKey: "")
        }
        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "mongodb.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        mongodbJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "mongodb" + "v1"
    
    public let serviceName: String = "mongodb"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    @objc public var httpRequestProtocol: String = "https"

    @objc public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    @objc
    public func modifyInstanceSpecAsync(request:ModifyInstanceSpecRequest,requestComplation:@escaping (NSNumber?,ModifyInstanceSpecResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try ModifyInstanceSpecExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(ModifyInstanceSpecResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func createInstanceAsync(request:CreateInstanceRequest,requestComplation:@escaping (NSNumber?,CreateInstanceResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try CreateInstanceExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(CreateInstanceResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func describeBackupPolicyAsync(request:DescribeBackupPolicyRequest,requestComplation:@escaping (NSNumber?,DescribeBackupPolicyResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try DescribeBackupPolicyExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeBackupPolicyResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func describeSecurityIpsAsync(request:DescribeSecurityIpsRequest,requestComplation:@escaping (NSNumber?,DescribeSecurityIpsResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try DescribeSecurityIpsExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeSecurityIpsResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func backupDownloadURLAsync(request:BackupDownloadURLRequest,requestComplation:@escaping (NSNumber?,BackupDownloadURLResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try BackupDownloadURLExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(BackupDownloadURLResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func describeInstancesAsync(request:DescribeInstancesRequest,requestComplation:@escaping (NSNumber?,DescribeInstancesResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try DescribeInstancesExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeInstancesResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func deleteInstanceAsync(request:DeleteInstanceRequest,requestComplation:@escaping (NSNumber?,DeleteInstanceResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try DeleteInstanceExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DeleteInstanceResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func restoreInstanceAsync(request:RestoreInstanceRequest,requestComplation:@escaping (NSNumber?,RestoreInstanceResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try RestoreInstanceExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(RestoreInstanceResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func describeFlavorsAsync(request:DescribeFlavorsRequest,requestComplation:@escaping (NSNumber?,DescribeFlavorsResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try DescribeFlavorsExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeFlavorsResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func resetPasswordAsync(request:ResetPasswordRequest,requestComplation:@escaping (NSNumber?,ResetPasswordResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try ResetPasswordExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(ResetPasswordResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func createBackupAsync(request:CreateBackupRequest,requestComplation:@escaping (NSNumber?,CreateBackupResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try CreateBackupExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(CreateBackupResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func modifyBackupPolicyAsync(request:ModifyBackupPolicyRequest,requestComplation:@escaping (NSNumber?,ModifyBackupPolicyResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try ModifyBackupPolicyExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(ModifyBackupPolicyResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func modifyInstanceNameAsync(request:ModifyInstanceNameRequest,requestComplation:@escaping (NSNumber?,ModifyInstanceNameResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try ModifyInstanceNameExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(ModifyInstanceNameResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func modifySecurityIpsAsync(request:ModifySecurityIpsRequest,requestComplation:@escaping (NSNumber?,ModifySecurityIpsResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try ModifySecurityIpsExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(ModifySecurityIpsResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func describeAvailableZonesAsync(request:DescribeAvailableZonesRequest,requestComplation:@escaping (NSNumber?,DescribeAvailableZonesResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try DescribeAvailableZonesExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeAvailableZonesResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func describeBackupsAsync(request:DescribeBackupsRequest,requestComplation:@escaping (NSNumber?,DescribeBackupsResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try DescribeBackupsExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeBackupsResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func deleteBackupAsync(request:DeleteBackupRequest,requestComplation:@escaping (NSNumber?,DeleteBackupResponse?,NSError?,NSString?)->()) throws {
        mongodbJDCloudClient = self
        try DeleteBackupExecutor(jdCloudClient: mongodbJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DeleteBackupResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }

    
}


public extension MongodbJDCloudClient{

    @objc convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "mongodb.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
