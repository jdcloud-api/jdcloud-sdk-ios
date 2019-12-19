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

   京东云解析OpenAPI接口
   京东云解析OpenAPI接口

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class DomainserviceJDCloudClient:NSObject,JDCloudClient{
    
    private final var domainserviceJDCloudClient:DomainserviceJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        domainserviceJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "domainservice.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        domainserviceJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "domainservice/" + "v2"
    
    public let serviceName: String = "domainservice"
    
    public let version: String = "v2"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func deleteUserViewIPAsync(request:DeleteUserViewIPRequest,requestComplation:@escaping ExecuteResult<DeleteUserViewIPResult>) throws {
        domainserviceJDCloudClient = self
        try DeleteUserViewIPExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeDomainQueryCountAsync(request:DescribeDomainQueryCountRequest,requestComplation:@escaping ExecuteResult<DescribeDomainQueryCountResult>) throws {
        domainserviceJDCloudClient = self
        try DescribeDomainQueryCountExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeDomainQueryTrafficAsync(request:DescribeDomainQueryTrafficRequest,requestComplation:@escaping ExecuteResult<DescribeDomainQueryTrafficResult>) throws {
        domainserviceJDCloudClient = self
        try DescribeDomainQueryTrafficExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyMonitorStatusAsync(request:ModifyMonitorStatusRequest,requestComplation:@escaping ExecuteResult<ModifyMonitorStatusResult>) throws {
        domainserviceJDCloudClient = self
        try ModifyMonitorStatusExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeActionLogAsync(request:DescribeActionLogRequest,requestComplation:@escaping ExecuteResult<DescribeActionLogResult>) throws {
        domainserviceJDCloudClient = self
        try DescribeActionLogExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createResourceRecordAsync(request:CreateResourceRecordRequest,requestComplation:@escaping ExecuteResult<CreateResourceRecordResult>) throws {
        domainserviceJDCloudClient = self
        try CreateResourceRecordExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyDomainAsync(request:ModifyDomainRequest,requestComplation:@escaping ExecuteResult<ModifyDomainResult>) throws {
        domainserviceJDCloudClient = self
        try ModifyDomainExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func batchSetResourceRecordsAsync(request:BatchSetResourceRecordsRequest,requestComplation:@escaping ExecuteResult<BatchSetResourceRecordsResult>) throws {
        domainserviceJDCloudClient = self
        try BatchSetResourceRecordsExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeMonitorTargetAsync(request:DescribeMonitorTargetRequest,requestComplation:@escaping ExecuteResult<DescribeMonitorTargetResult>) throws {
        domainserviceJDCloudClient = self
        try DescribeMonitorTargetExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createMonitorTargetAsync(request:CreateMonitorTargetRequest,requestComplation:@escaping ExecuteResult<CreateMonitorTargetResult>) throws {
        domainserviceJDCloudClient = self
        try CreateMonitorTargetExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createDomainAsync(request:CreateDomainRequest,requestComplation:@escaping ExecuteResult<CreateDomainResult>) throws {
        domainserviceJDCloudClient = self
        try CreateDomainExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeUserViewIPAsync(request:DescribeUserViewIPRequest,requestComplation:@escaping ExecuteResult<DescribeUserViewIPResult>) throws {
        domainserviceJDCloudClient = self
        try DescribeUserViewIPExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyResourceRecordStatusAsync(request:ModifyResourceRecordStatusRequest,requestComplation:@escaping ExecuteResult<ModifyResourceRecordStatusResult>) throws {
        domainserviceJDCloudClient = self
        try ModifyResourceRecordStatusExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyResourceRecordAsync(request:ModifyResourceRecordRequest,requestComplation:@escaping ExecuteResult<ModifyResourceRecordResult>) throws {
        domainserviceJDCloudClient = self
        try ModifyResourceRecordExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeDomainsAsync(request:DescribeDomainsRequest,requestComplation:@escaping ExecuteResult<DescribeDomainsResult>) throws {
        domainserviceJDCloudClient = self
        try DescribeDomainsExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createMonitorAsync(request:CreateMonitorRequest,requestComplation:@escaping ExecuteResult<CreateMonitorResult>) throws {
        domainserviceJDCloudClient = self
        try CreateMonitorExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createUserViewIPAsync(request:CreateUserViewIPRequest,requestComplation:@escaping ExecuteResult<CreateUserViewIPResult>) throws {
        domainserviceJDCloudClient = self
        try CreateUserViewIPExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteUserViewAsync(request:DeleteUserViewRequest,requestComplation:@escaping ExecuteResult<DeleteUserViewResult>) throws {
        domainserviceJDCloudClient = self
        try DeleteUserViewExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyMonitorAsync(request:ModifyMonitorRequest,requestComplation:@escaping ExecuteResult<ModifyMonitorResult>) throws {
        domainserviceJDCloudClient = self
        try ModifyMonitorExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeResourceRecordAsync(request:DescribeResourceRecordRequest,requestComplation:@escaping ExecuteResult<DescribeResourceRecordResult>) throws {
        domainserviceJDCloudClient = self
        try DescribeResourceRecordExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeUserViewAsync(request:DescribeUserViewRequest,requestComplation:@escaping ExecuteResult<DescribeUserViewResult>) throws {
        domainserviceJDCloudClient = self
        try DescribeUserViewExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeMonitorAlarmAsync(request:DescribeMonitorAlarmRequest,requestComplation:@escaping ExecuteResult<DescribeMonitorAlarmResult>) throws {
        domainserviceJDCloudClient = self
        try DescribeMonitorAlarmExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createUserViewAsync(request:CreateUserViewRequest,requestComplation:@escaping ExecuteResult<CreateUserViewResult>) throws {
        domainserviceJDCloudClient = self
        try CreateUserViewExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeViewTreeAsync(request:DescribeViewTreeRequest,requestComplation:@escaping ExecuteResult<DescribeViewTreeResult>) throws {
        domainserviceJDCloudClient = self
        try DescribeViewTreeExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteResourceRecordAsync(request:DeleteResourceRecordRequest,requestComplation:@escaping ExecuteResult<DeleteResourceRecordResult>) throws {
        domainserviceJDCloudClient = self
        try DeleteResourceRecordExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeMonitorAsync(request:DescribeMonitorRequest,requestComplation:@escaping ExecuteResult<DescribeMonitorResult>) throws {
        domainserviceJDCloudClient = self
        try DescribeMonitorExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteMonitorAsync(request:DeleteMonitorRequest,requestComplation:@escaping ExecuteResult<DeleteMonitorResult>) throws {
        domainserviceJDCloudClient = self
        try DeleteMonitorExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteDomainAsync(request:DeleteDomainRequest,requestComplation:@escaping ExecuteResult<DeleteDomainResult>) throws {
        domainserviceJDCloudClient = self
        try DeleteDomainExecutor(jdCloudClient: domainserviceJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension DomainserviceJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "domainservice.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}