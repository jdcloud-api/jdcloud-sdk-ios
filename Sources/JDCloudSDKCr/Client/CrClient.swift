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

   容器镜像仓库
   容器镜像仓库服务

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class CrJDCloudClient:NSObject,JDCloudClient{
    
    private final var crJDCloudClient:CrJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        crJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "cr.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        crJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "cr/" + "v1"
    
    public let serviceName: String = "cr"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func deleteImageAsync(request:DeleteImageRequest,requestComplation:@escaping ExecuteResult<DeleteImageResult>) throws {
        crJDCloudClient = self
        try DeleteImageExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeRepositoriesAsync(request:DescribeRepositoriesRequest,requestComplation:@escaping ExecuteResult<DescribeRepositoriesResult>) throws {
        crJDCloudClient = self
        try DescribeRepositoriesExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func releaseAuthorizationTokenAsync(request:ReleaseAuthorizationTokenRequest,requestComplation:@escaping ExecuteResult<ReleaseAuthorizationTokenResult>) throws {
        crJDCloudClient = self
        try ReleaseAuthorizationTokenExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAuthorizationTokensAsync(request:DescribeAuthorizationTokensRequest,requestComplation:@escaping ExecuteResult<DescribeAuthorizationTokensResult>) throws {
        crJDCloudClient = self
        try DescribeAuthorizationTokensExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func checkRepositoryNameAsync(request:CheckRepositoryNameRequest,requestComplation:@escaping ExecuteResult<CheckRepositoryNameResult>) throws {
        crJDCloudClient = self
        try CheckRepositoryNameExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeImagesAsync(request:DescribeImagesRequest,requestComplation:@escaping ExecuteResult<DescribeImagesResult>) throws {
        crJDCloudClient = self
        try DescribeImagesExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeRegistriesAsync(request:DescribeRegistriesRequest,requestComplation:@escaping ExecuteResult<DescribeRegistriesResult>) throws {
        crJDCloudClient = self
        try DescribeRegistriesExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeRegistryAsync(request:DescribeRegistryRequest,requestComplation:@escaping ExecuteResult<DescribeRegistryResult>) throws {
        crJDCloudClient = self
        try DescribeRegistryExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getAuthorizationTokenAsync(request:GetAuthorizationTokenRequest,requestComplation:@escaping ExecuteResult<GetAuthorizationTokenResult>) throws {
        crJDCloudClient = self
        try GetAuthorizationTokenExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createRepositoryAsync(request:CreateRepositoryRequest,requestComplation:@escaping ExecuteResult<CreateRepositoryResult>) throws {
        crJDCloudClient = self
        try CreateRepositoryExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeQuotasAsync(request:DescribeQuotasRequest,requestComplation:@escaping ExecuteResult<DescribeQuotasResult>) throws {
        crJDCloudClient = self
        try DescribeQuotasExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createRegistryAsync(request:CreateRegistryRequest,requestComplation:@escaping ExecuteResult<CreateRegistryResult>) throws {
        crJDCloudClient = self
        try CreateRegistryExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteRepositoryAsync(request:DeleteRepositoryRequest,requestComplation:@escaping ExecuteResult<DeleteRepositoryResult>) throws {
        crJDCloudClient = self
        try DeleteRepositoryExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteRegistryAsync(request:DeleteRegistryRequest,requestComplation:@escaping ExecuteResult<DeleteRegistryResult>) throws {
        crJDCloudClient = self
        try DeleteRegistryExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func checkRegistryNameAsync(request:CheckRegistryNameRequest,requestComplation:@escaping ExecuteResult<CheckRegistryNameResult>) throws {
        crJDCloudClient = self
        try CheckRegistryNameExecutor(jdCloudClient: crJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension CrJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "cr.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
