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

   京东云iotlink接口
   iotlink相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class IotlinkJDCloudClient:NSObject,JDCloudClient{
    
    private final var iotlinkJDCloudClient:IotlinkJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        iotlinkJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "iotlink.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        iotlinkJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "iotlink/" + "v1"
    
    public let serviceName: String = "iotlink"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func onOffStatusAsync(request:OnOffStatusRequest,requestComplation:@escaping ExecuteResult<OnOffStatusResult>) throws {
        iotlinkJDCloudClient = self
        try OnOffStatusExecutor(jdCloudClient: iotlinkJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func openIotCardAsync(request:OpenIotCardRequest,requestComplation:@escaping ExecuteResult<OpenIotCardResult>) throws {
        iotlinkJDCloudClient = self
        try OpenIotCardExecutor(jdCloudClient: iotlinkJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func closeIotCardAsync(request:CloseIotCardRequest,requestComplation:@escaping ExecuteResult<CloseIotCardResult>) throws {
        iotlinkJDCloudClient = self
        try CloseIotCardExecutor(jdCloudClient: iotlinkJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func lifeStatusAsync(request:LifeStatusRequest,requestComplation:@escaping ExecuteResult<LifeStatusResult>) throws {
        iotlinkJDCloudClient = self
        try LifeStatusExecutor(jdCloudClient: iotlinkJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func closeIotFlowAsync(request:CloseIotFlowRequest,requestComplation:@escaping ExecuteResult<CloseIotFlowResult>) throws {
        iotlinkJDCloudClient = self
        try CloseIotFlowExecutor(jdCloudClient: iotlinkJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func gprsStatusAsync(request:GprsStatusRequest,requestComplation:@escaping ExecuteResult<GprsStatusResult>) throws {
        iotlinkJDCloudClient = self
        try GprsStatusExecutor(jdCloudClient: iotlinkJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func openIotFlowAsync(request:OpenIotFlowRequest,requestComplation:@escaping ExecuteResult<OpenIotFlowResult>) throws {
        iotlinkJDCloudClient = self
        try OpenIotFlowExecutor(jdCloudClient: iotlinkJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func gprsRealtimeInfoAsync(request:GprsRealtimeInfoRequest,requestComplation:@escaping ExecuteResult<GprsRealtimeInfoResult>) throws {
        iotlinkJDCloudClient = self
        try GprsRealtimeInfoExecutor(jdCloudClient: iotlinkJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension IotlinkJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "iotlink.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
