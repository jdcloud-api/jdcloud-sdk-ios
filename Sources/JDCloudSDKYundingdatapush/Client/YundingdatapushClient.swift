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

   云鼎2.0数据推送 openApi
   云鼎2.0数据推送 openApi 相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class YundingdatapushJDCloudClient:NSObject,JDCloudClient{
    
    private final var yundingdatapushJDCloudClient:YundingdatapushJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        yundingdatapushJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "yundingdatapush.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        yundingdatapushJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "yundingdatapush/" + "v1"
    
    public let serviceName: String = "yundingdatapush"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func addDatapushVenderAsync(request:AddDatapushVenderRequest,requestComplation:@escaping ExecuteResult<AddDatapushVenderResult>) throws {
        yundingdatapushJDCloudClient = self
        try AddDatapushVenderExecutor(jdCloudClient: yundingdatapushJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeDatapushVendersAsync(request:DescribeDatapushVendersRequest,requestComplation:@escaping ExecuteResult<DescribeDatapushVendersResult>) throws {
        yundingdatapushJDCloudClient = self
        try DescribeDatapushVendersExecutor(jdCloudClient: yundingdatapushJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeRdsInstancesAsync(request:DescribeRdsInstancesRequest,requestComplation:@escaping ExecuteResult<DescribeRdsInstancesResult>) throws {
        yundingdatapushJDCloudClient = self
        try DescribeRdsInstancesExecutor(jdCloudClient: yundingdatapushJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteDatapushVenderAsync(request:DeleteDatapushVenderRequest,requestComplation:@escaping ExecuteResult<DeleteDatapushVenderResult>) throws {
        yundingdatapushJDCloudClient = self
        try DeleteDatapushVenderExecutor(jdCloudClient: yundingdatapushJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension YundingdatapushJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "yundingdatapush.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}