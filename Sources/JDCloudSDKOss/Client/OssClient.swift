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

   对象存储API
   对象存储API，主要包含查询Bucket列表，创建Bucket, 删除Bucket，查询Bucket是否存在, 更多API见：https://docs.jdcloud.com/en/object-storage-service/compatibility-api-overview

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class OssJDCloudClient :JDCloudClient{
    
    private final var ossJDCloudClient:OssJDCloudClient!
    
    init(credential:Credential,sdkEnvironment:SDKEnvironment) {
         self.credential = credential
         self.sdkEnvironment = sdkEnvironment 
    } 
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "oss" + "v1"
    
    public let serviceName: String = "oss"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()
    
    public var httpRequestProtocol: String = "https"
    
    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }
    
    public func deleteBucketAsync(request:DeleteBucketRequest,requestComplation:@escaping ExecuteResult<DeleteBucketResult>) throws {
        ossJDCloudClient = self
        try DeleteBucketExecutor(jdCloudClient: ossJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func putImgProtectedAsync(request:PutImgProtectedRequest,requestComplation:@escaping ExecuteResult<PutImgProtectedResult>) throws {
        ossJDCloudClient = self
        try PutImgProtectedExecutor(jdCloudClient: ossJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateBucketMaxCountAsync(request:UpdateBucketMaxCountRequest,requestComplation:@escaping ExecuteResult<UpdateBucketMaxCountResult>) throws {
        ossJDCloudClient = self
        try UpdateBucketMaxCountExecutor(jdCloudClient: ossJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteImgProtectedAsync(request:DeleteImgProtectedRequest,requestComplation:@escaping ExecuteResult<DeleteImgProtectedResult>) throws {
        ossJDCloudClient = self
        try DeleteImgProtectedExecutor(jdCloudClient: ossJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getimgProtectedConditionAsync(request:GetimgProtectedConditionRequest,requestComplation:@escaping ExecuteResult<GetimgProtectedConditionResult>) throws {
        ossJDCloudClient = self
        try GetimgProtectedConditionExecutor(jdCloudClient: ossJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func listBucketsAsync(request:ListBucketsRequest,requestComplation:@escaping ExecuteResult<ListBucketsResult>) throws {
        ossJDCloudClient = self
        try ListBucketsExecutor(jdCloudClient: ossJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func headBucketAsync(request:HeadBucketRequest,requestComplation:@escaping ExecuteResult<HeadBucketResult>) throws {
        ossJDCloudClient = self
        try HeadBucketExecutor(jdCloudClient: ossJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func putBucketAsync(request:PutBucketRequest,requestComplation:@escaping ExecuteResult<PutBucketResult>) throws {
        ossJDCloudClient = self
        try PutBucketExecutor(jdCloudClient: ossJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func moveObjectAsync(request:MoveObjectRequest,requestComplation:@escaping ExecuteResult<MoveObjectResult>) throws {
        ossJDCloudClient = self
        try MoveObjectExecutor(jdCloudClient: ossJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    
}


public extension OssJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "oss.jdcloud-api.com");
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
                sdkEnvironment = SDKEnvironment(endPoint: "oss.jdcloud-api.com");
            }
            self.init(credential: GlobalConfig.credential!,sdkEnvironment: sdkEnvironment)
        }

    }
}
