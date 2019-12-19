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

   oss openapi
   oss openapi

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class OssopenapiJDCloudClient:NSObject,JDCloudClient{
    
    private final var ossopenapiJDCloudClient:OssopenapiJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        ossopenapiJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "ossopenapi.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        ossopenapiJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "ossopenapi/" + "v1"
    
    public let serviceName: String = "ossopenapi"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func getSingleBucketCapacityAsync(request:GetSingleBucketCapacityRequest,requestComplation:@escaping ExecuteResult<GetSingleBucketCapacityResult>) throws {
        ossopenapiJDCloudClient = self
        try GetSingleBucketCapacityExecutor(jdCloudClient: ossopenapiJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getBackSourceConfigurationAsync(request:GetBackSourceConfigurationRequest,requestComplation:@escaping ExecuteResult<GetBackSourceConfigurationResult>) throws {
        ossopenapiJDCloudClient = self
        try GetBackSourceConfigurationExecutor(jdCloudClient: ossopenapiJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func putBackSourceConfigurationAsync(request:PutBackSourceConfigurationRequest,requestComplation:@escaping ExecuteResult<PutBackSourceConfigurationResult>) throws {
        ossopenapiJDCloudClient = self
        try PutBackSourceConfigurationExecutor(jdCloudClient: ossopenapiJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteBackSourceConfigurationAsync(request:DeleteBackSourceConfigurationRequest,requestComplation:@escaping ExecuteResult<DeleteBackSourceConfigurationResult>) throws {
        ossopenapiJDCloudClient = self
        try DeleteBackSourceConfigurationExecutor(jdCloudClient: ossopenapiJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension OssopenapiJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "ossopenapi.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
