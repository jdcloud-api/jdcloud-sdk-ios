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

   云物理服务器
   云物理服务器相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore
@objc(CpsJDCloudClient)
public class CpsJDCloudClient:NSObject,JDCloudClient{
    
    private final var cpsJDCloudClient:CpsJDCloudClient!


    @objc public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        cpsJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "cps.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        cpsJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "cps" + "v1"
    
    public let serviceName: String = "cps"
    
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
    public func describeSubnetAsync(request:DescribeSubnetRequest,requestComplation:@escaping (NSNumber?,DescribeSubnetResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try DescribeSubnetExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeSubnetResponse.self, from: responseData!)
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
    public func describeDeviceTypesAsync(request:DescribeDeviceTypesRequest,requestComplation:@escaping (NSNumber?,DescribeDeviceTypesResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try DescribeDeviceTypesExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeDeviceTypesResponse.self, from: responseData!)
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
    public func stopInstanceAsync(request:StopInstanceRequest,requestComplation:@escaping (NSNumber?,StopInstanceResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try StopInstanceExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(StopInstanceResponse.self, from: responseData!)
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
    public func restartInstanceAsync(request:RestartInstanceRequest,requestComplation:@escaping (NSNumber?,RestartInstanceResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try RestartInstanceExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(RestartInstanceResponse.self, from: responseData!)
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
    public func describeInstanceStatusAsync(request:DescribeInstanceStatusRequest,requestComplation:@escaping (NSNumber?,DescribeInstanceStatusResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try DescribeInstanceStatusExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeInstanceStatusResponse.self, from: responseData!)
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
    public func reinstallInstanceAsync(request:ReinstallInstanceRequest,requestComplation:@escaping (NSNumber?,ReinstallInstanceResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try ReinstallInstanceExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(ReinstallInstanceResponse.self, from: responseData!)
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
    public func describeOSAsync(request:DescribeOSRequest,requestComplation:@escaping (NSNumber?,DescribeOSResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try DescribeOSExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeOSResponse.self, from: responseData!)
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
    public func describeDeviceRaidsAsync(request:DescribeDeviceRaidsRequest,requestComplation:@escaping (NSNumber?,DescribeDeviceRaidsResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try DescribeDeviceRaidsExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeDeviceRaidsResponse.self, from: responseData!)
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
    public func describeInstanceNameAsync(request:DescribeInstanceNameRequest,requestComplation:@escaping (NSNumber?,DescribeInstanceNameResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try DescribeInstanceNameExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeInstanceNameResponse.self, from: responseData!)
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
    public func describeInstanceRaidAsync(request:DescribeInstanceRaidRequest,requestComplation:@escaping (NSNumber?,DescribeInstanceRaidResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try DescribeInstanceRaidExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeInstanceRaidResponse.self, from: responseData!)
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
    public func modifyBandwidthAsync(request:ModifyBandwidthRequest,requestComplation:@escaping (NSNumber?,ModifyBandwidthResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try ModifyBandwidthExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(ModifyBandwidthResponse.self, from: responseData!)
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
    public func describeInstanceAsync(request:DescribeInstanceRequest,requestComplation:@escaping (NSNumber?,DescribeInstanceResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try DescribeInstanceExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeInstanceResponse.self, from: responseData!)
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
    public func describeInstancesAsync(request:DescribeInstancesRequest,requestComplation:@escaping (NSNumber?,DescribeInstancesResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try DescribeInstancesExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeInstancesResponse.self, from: responseData!)
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
    public func describeRegionesAsync(request:DescribeRegionesRequest,requestComplation:@escaping (NSNumber?,DescribeRegionesResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try DescribeRegionesExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeRegionesResponse.self, from: responseData!)
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
    public func startInstanceAsync(request:StartInstanceRequest,requestComplation:@escaping (NSNumber?,StartInstanceResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try StartInstanceExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(StartInstanceResponse.self, from: responseData!)
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
    public func createInstancesAsync(request:CreateInstancesRequest,requestComplation:@escaping (NSNumber?,CreateInstancesResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try CreateInstancesExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(CreateInstancesResponse.self, from: responseData!)
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
    public func modifyInstanceAsync(request:ModifyInstanceRequest,requestComplation:@escaping (NSNumber?,ModifyInstanceResponse?,NSError?,NSString?)->()) throws {
        cpsJDCloudClient = self
        try ModifyInstanceExecutor(jdCloudClient: cpsJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(ModifyInstanceResponse.self, from: responseData!)
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


public extension CpsJDCloudClient{

    @objc convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "cps.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
