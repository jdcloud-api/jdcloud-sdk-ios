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

   京东云DDoS防护包相关接口
   京东云DDoS防护包相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class AntiproJDCloudClient:NSObject,JDCloudClient{
    
    private final var antiproJDCloudClient:AntiproJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        antiproJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "antipro.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        antiproJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "antipro/" + "v1"
    
    public let serviceName: String = "antipro"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func createInstanceAsync(request:CreateInstanceRequest,requestComplation:@escaping ExecuteResult<CreateInstanceResult>) throws {
        antiproJDCloudClient = self
        try CreateInstanceExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeCcsIpResourcesAsync(request:DescribeCcsIpResourcesRequest,requestComplation:@escaping ExecuteResult<DescribeCcsIpResourcesResult>) throws {
        antiproJDCloudClient = self
        try DescribeCcsIpResourcesExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteProtectedIpAsync(request:DeleteProtectedIpRequest,requestComplation:@escaping ExecuteResult<DeleteProtectedIpResult>) throws {
        antiproJDCloudClient = self
        try DeleteProtectedIpExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeInstanceAsync(request:DescribeInstanceRequest,requestComplation:@escaping ExecuteResult<DescribeInstanceResult>) throws {
        antiproJDCloudClient = self
        try DescribeInstanceExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func addProtectedIpAsync(request:AddProtectedIpRequest,requestComplation:@escaping ExecuteResult<AddProtectedIpResult>) throws {
        antiproJDCloudClient = self
        try AddProtectedIpExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeIpMonitorFlowAsync(request:DescribeIpMonitorFlowRequest,requestComplation:@escaping ExecuteResult<DescribeIpMonitorFlowResult>) throws {
        antiproJDCloudClient = self
        try DescribeIpMonitorFlowExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeCpsIpResourcesAsync(request:DescribeCpsIpResourcesRequest,requestComplation:@escaping ExecuteResult<DescribeCpsIpResourcesResult>) throws {
        antiproJDCloudClient = self
        try DescribeCpsIpResourcesExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeGeoAreasAsync(request:DescribeGeoAreasRequest,requestComplation:@escaping ExecuteResult<DescribeGeoAreasResult>) throws {
        antiproJDCloudClient = self
        try DescribeGeoAreasExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAttackStatisticsAsync(request:DescribeAttackStatisticsRequest,requestComplation:@escaping ExecuteResult<DescribeAttackStatisticsResult>) throws {
        antiproJDCloudClient = self
        try DescribeAttackStatisticsExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAttackSourceAsync(request:DescribeAttackSourceRequest,requestComplation:@escaping ExecuteResult<DescribeAttackSourceResult>) throws {
        antiproJDCloudClient = self
        try DescribeAttackSourceExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyInstanceAsync(request:ModifyInstanceRequest,requestComplation:@escaping ExecuteResult<ModifyInstanceResult>) throws {
        antiproJDCloudClient = self
        try ModifyInstanceExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeProtectionOutlineAsync(request:DescribeProtectionOutlineRequest,requestComplation:@escaping ExecuteResult<DescribeProtectionOutlineResult>) throws {
        antiproJDCloudClient = self
        try DescribeProtectionOutlineExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeProtectionRuleAsync(request:DescribeProtectionRuleRequest,requestComplation:@escaping ExecuteResult<DescribeProtectionRuleResult>) throws {
        antiproJDCloudClient = self
        try DescribeProtectionRuleExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyInstanceNameAsync(request:ModifyInstanceNameRequest,requestComplation:@escaping ExecuteResult<ModifyInstanceNameResult>) throws {
        antiproJDCloudClient = self
        try ModifyInstanceNameExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeProtectedIpListAsync(request:DescribeProtectedIpListRequest,requestComplation:@escaping ExecuteResult<DescribeProtectedIpListResult>) throws {
        antiproJDCloudClient = self
        try DescribeProtectedIpListExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeInstancesAsync(request:DescribeInstancesRequest,requestComplation:@escaping ExecuteResult<DescribeInstancesResult>) throws {
        antiproJDCloudClient = self
        try DescribeInstancesExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAttackLogsAsync(request:DescribeAttackLogsRequest,requestComplation:@escaping ExecuteResult<DescribeAttackLogsResult>) throws {
        antiproJDCloudClient = self
        try DescribeAttackLogsExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func checkInstanceNameAsync(request:CheckInstanceNameRequest,requestComplation:@escaping ExecuteResult<CheckInstanceNameResult>) throws {
        antiproJDCloudClient = self
        try CheckInstanceNameExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAttackTypeCountAsync(request:DescribeAttackTypeCountRequest,requestComplation:@escaping ExecuteResult<DescribeAttackTypeCountResult>) throws {
        antiproJDCloudClient = self
        try DescribeAttackTypeCountExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyProtectionRuleAsync(request:ModifyProtectionRuleRequest,requestComplation:@escaping ExecuteResult<ModifyProtectionRuleResult>) throws {
        antiproJDCloudClient = self
        try ModifyProtectionRuleExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeElasticIpResourcesAsync(request:DescribeElasticIpResourcesRequest,requestComplation:@escaping ExecuteResult<DescribeElasticIpResourcesResult>) throws {
        antiproJDCloudClient = self
        try DescribeElasticIpResourcesExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeOperationRecordsAsync(request:DescribeOperationRecordsRequest,requestComplation:@escaping ExecuteResult<DescribeOperationRecordsResult>) throws {
        antiproJDCloudClient = self
        try DescribeOperationRecordsExecutor(jdCloudClient: antiproJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension AntiproJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "antipro.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
