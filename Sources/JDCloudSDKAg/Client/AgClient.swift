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

   高可用组
   高可用组相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class AgJDCloudClient:NSObject,JDCloudClient{
    
    private final var agJDCloudClient:AgJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        agJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "ag.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        agJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "ag/" + "v1"
    
    public let serviceName: String = "ag"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func updateAgAsync(request:UpdateAgRequest,requestComplation:@escaping ExecuteResult<UpdateAgResult>) throws {
        agJDCloudClient = self
        try UpdateAgExecutor(jdCloudClient: agJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteAgAsync(request:DeleteAgRequest,requestComplation:@escaping ExecuteResult<DeleteAgResult>) throws {
        agJDCloudClient = self
        try DeleteAgExecutor(jdCloudClient: agJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func setInstanceTemplateAsync(request:SetInstanceTemplateRequest,requestComplation:@escaping ExecuteResult<SetInstanceTemplateResult>) throws {
        agJDCloudClient = self
        try SetInstanceTemplateExecutor(jdCloudClient: agJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeQuotasAsync(request:DescribeQuotasRequest,requestComplation:@escaping ExecuteResult<DescribeQuotasResult>) throws {
        agJDCloudClient = self
        try DescribeQuotasExecutor(jdCloudClient: agJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func abandonInstancesAsync(request:AbandonInstancesRequest,requestComplation:@escaping ExecuteResult<AbandonInstancesResult>) throws {
        agJDCloudClient = self
        try AbandonInstancesExecutor(jdCloudClient: agJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createAgAsync(request:CreateAgRequest,requestComplation:@escaping ExecuteResult<CreateAgResult>) throws {
        agJDCloudClient = self
        try CreateAgExecutor(jdCloudClient: agJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAgAsync(request:DescribeAgRequest,requestComplation:@escaping ExecuteResult<DescribeAgResult>) throws {
        agJDCloudClient = self
        try DescribeAgExecutor(jdCloudClient: agJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAgsAsync(request:DescribeAgsRequest,requestComplation:@escaping ExecuteResult<DescribeAgsResult>) throws {
        agJDCloudClient = self
        try DescribeAgsExecutor(jdCloudClient: agJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension AgJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "ag.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
