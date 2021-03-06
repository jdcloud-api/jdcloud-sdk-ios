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

   云硬盘API
   云硬盘API包含云硬盘相关接口和快照相关接口。可提供批量创建云硬盘，删除云硬盘，制作云硬盘快照等功能。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class DiskJDCloudClient:NSObject,JDCloudClient{
    
    private final var diskJDCloudClient:DiskJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        diskJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "disk.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        diskJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "disk/" + "v1"
    
    public let serviceName: String = "disk"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func modifySnapshotAttributeAsync(request:ModifySnapshotAttributeRequest,requestComplation:@escaping ExecuteResult<ModifySnapshotAttributeResult>) throws {
        diskJDCloudClient = self
        try ModifySnapshotAttributeExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteSnapshotAsync(request:DeleteSnapshotRequest,requestComplation:@escaping ExecuteResult<DeleteSnapshotResult>) throws {
        diskJDCloudClient = self
        try DeleteSnapshotExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createDisksAsync(request:CreateDisksRequest,requestComplation:@escaping ExecuteResult<CreateDisksResult>) throws {
        diskJDCloudClient = self
        try CreateDisksExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeSnapshotsAsync(request:DescribeSnapshotsRequest,requestComplation:@escaping ExecuteResult<DescribeSnapshotsResult>) throws {
        diskJDCloudClient = self
        try DescribeSnapshotsExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func restoreDiskAsync(request:RestoreDiskRequest,requestComplation:@escaping ExecuteResult<RestoreDiskResult>) throws {
        diskJDCloudClient = self
        try RestoreDiskExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeDiskAsync(request:DescribeDiskRequest,requestComplation:@escaping ExecuteResult<DescribeDiskResult>) throws {
        diskJDCloudClient = self
        try DescribeDiskExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func extendDiskAsync(request:ExtendDiskRequest,requestComplation:@escaping ExecuteResult<ExtendDiskResult>) throws {
        diskJDCloudClient = self
        try ExtendDiskExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyDiskAttributeAsync(request:ModifyDiskAttributeRequest,requestComplation:@escaping ExecuteResult<ModifyDiskAttributeResult>) throws {
        diskJDCloudClient = self
        try ModifyDiskAttributeExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeDisksAsync(request:DescribeDisksRequest,requestComplation:@escaping ExecuteResult<DescribeDisksResult>) throws {
        diskJDCloudClient = self
        try DescribeDisksExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createSnapshotAsync(request:CreateSnapshotRequest,requestComplation:@escaping ExecuteResult<CreateSnapshotResult>) throws {
        diskJDCloudClient = self
        try CreateSnapshotExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeSnapshotAsync(request:DescribeSnapshotRequest,requestComplation:@escaping ExecuteResult<DescribeSnapshotResult>) throws {
        diskJDCloudClient = self
        try DescribeSnapshotExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteDiskAsync(request:DeleteDiskRequest,requestComplation:@escaping ExecuteResult<DeleteDiskResult>) throws {
        diskJDCloudClient = self
        try DeleteDiskExecutor(jdCloudClient: diskJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension DiskJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "disk.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
