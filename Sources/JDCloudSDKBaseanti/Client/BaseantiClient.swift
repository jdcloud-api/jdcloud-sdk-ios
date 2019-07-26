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

   Anti-DDoS Basic APIs
   DDoS 基础防护防护 IP、攻击记录相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore
@objc(BaseantiJDCloudClient)
public class BaseantiJDCloudClient:NSObject,JDCloudClient{
    
    private final var baseantiJDCloudClient:BaseantiJDCloudClient!


    @objc public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        baseantiJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "baseanti.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        baseantiJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "baseanti" + "v1"
    
    public let serviceName: String = "baseanti"
    
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
    public func describeIpSafetyInfoAsync(request:DescribeIpSafetyInfoRequest,requestComplation:@escaping (NSNumber?,DescribeIpSafetyInfoResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeIpSafetyInfoExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeIpSafetyInfoResponse.self, from: responseData!)
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
    public func setIpCleanThresholdAsync(request:SetIpCleanThresholdRequest,requestComplation:@escaping (NSNumber?,SetIpCleanThresholdResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try SetIpCleanThresholdExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(SetIpCleanThresholdResponse.self, from: responseData!)
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
    public func describeIpMonitorFlowAsync(request:DescribeIpMonitorFlowRequest,requestComplation:@escaping (NSNumber?,DescribeIpMonitorFlowResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeIpMonitorFlowExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeIpMonitorFlowResponse.self, from: responseData!)
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
    public func describeIpResourcesAsync(request:DescribeIpResourcesRequest,requestComplation:@escaping (NSNumber?,DescribeIpResourcesResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeIpResourcesExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeIpResourcesResponse.self, from: responseData!)
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
    public func describeAttackStatisticsAsync(request:DescribeAttackStatisticsRequest,requestComplation:@escaping (NSNumber?,DescribeAttackStatisticsResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeAttackStatisticsExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeAttackStatisticsResponse.self, from: responseData!)
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
    public func describeElasticIpResourcesAsync(request:DescribeElasticIpResourcesRequest,requestComplation:@escaping (NSNumber?,DescribeElasticIpResourcesResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeElasticIpResourcesExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeElasticIpResourcesResponse.self, from: responseData!)
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
    public func describeCcsIpResourcesAsync(request:DescribeCcsIpResourcesRequest,requestComplation:@escaping (NSNumber?,DescribeCcsIpResourcesResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeCcsIpResourcesExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeCcsIpResourcesResponse.self, from: responseData!)
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
    public func describeIpCleanThresholdRangeAsync(request:DescribeIpCleanThresholdRangeRequest,requestComplation:@escaping (NSNumber?,DescribeIpCleanThresholdRangeResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeIpCleanThresholdRangeExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeIpCleanThresholdRangeResponse.self, from: responseData!)
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
    public func describeAttackTypeCountAsync(request:DescribeAttackTypeCountRequest,requestComplation:@escaping (NSNumber?,DescribeAttackTypeCountResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeAttackTypeCountExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeAttackTypeCountResponse.self, from: responseData!)
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
    public func describeIpResourceProtectInfoAsync(request:DescribeIpResourceProtectInfoRequest,requestComplation:@escaping (NSNumber?,DescribeIpResourceProtectInfoResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeIpResourceProtectInfoExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeIpResourceProtectInfoResponse.self, from: responseData!)
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
    public func describeCpsIpResourcesAsync(request:DescribeCpsIpResourcesRequest,requestComplation:@escaping (NSNumber?,DescribeCpsIpResourcesResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeCpsIpResourcesExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeCpsIpResourcesResponse.self, from: responseData!)
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
    public func setCleanThresholdAsync(request:SetCleanThresholdRequest,requestComplation:@escaping (NSNumber?,SetCleanThresholdResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try SetCleanThresholdExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(SetCleanThresholdResponse.self, from: responseData!)
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
    public func describeIpResourceFlowAsync(request:DescribeIpResourceFlowRequest,requestComplation:@escaping (NSNumber?,DescribeIpResourceFlowResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeIpResourceFlowExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeIpResourceFlowResponse.self, from: responseData!)
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
    public func describeIpResourceInfoAsync(request:DescribeIpResourceInfoRequest,requestComplation:@escaping (NSNumber?,DescribeIpResourceInfoResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeIpResourceInfoExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeIpResourceInfoResponse.self, from: responseData!)
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
    public func describeAttackLogsAsync(request:DescribeAttackLogsRequest,requestComplation:@escaping (NSNumber?,DescribeAttackLogsResponse?,NSError?,NSString?)->()) throws {
        baseantiJDCloudClient = self
        try DescribeAttackLogsExecutor(jdCloudClient: baseantiJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeAttackLogsResponse.self, from: responseData!)
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


public extension BaseantiJDCloudClient{

    @objc convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "baseanti.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
