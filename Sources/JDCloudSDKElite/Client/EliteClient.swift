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

   elite相关API
   elite相关API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class EliteJDCloudClient:NSObject,JDCloudClient{
    
    private final var eliteJDCloudClient:EliteJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        eliteJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "elite.cn-south-1.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        eliteJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "elite/" + "v1"
    
    public let serviceName: String = "elite"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func listSaleServiceAsync(request:ListSaleServiceRequest,requestComplation:@escaping ExecuteResult<ListSaleServiceResult>) throws {
        eliteJDCloudClient = self
        try ListSaleServiceExecutor(jdCloudClient: eliteJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func jdxQueryPriceAsync(request:JdxQueryPriceRequest,requestComplation:@escaping ExecuteResult<JdxQueryPriceResult>) throws {
        eliteJDCloudClient = self
        try JdxQueryPriceExecutor(jdCloudClient: eliteJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func jdxQueryDeliveryInfoAsync(request:JdxQueryDeliveryInfoRequest,requestComplation:@escaping ExecuteResult<JdxQueryDeliveryInfoResult>) throws {
        eliteJDCloudClient = self
        try JdxQueryDeliveryInfoExecutor(jdCloudClient: eliteJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getStoreServiceAsync(request:GetStoreServiceRequest,requestComplation:@escaping ExecuteResult<GetStoreServiceResult>) throws {
        eliteJDCloudClient = self
        try GetStoreServiceExecutor(jdCloudClient: eliteJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func jdxReportOrderAsync(request:JdxReportOrderRequest,requestComplation:@escaping ExecuteResult<JdxReportOrderResult>) throws {
        eliteJDCloudClient = self
        try JdxReportOrderExecutor(jdCloudClient: eliteJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getSaleServiceByDeliverNumberAsync(request:GetSaleServiceByDeliverNumberRequest,requestComplation:@escaping ExecuteResult<GetSaleServiceByDeliverNumberResult>) throws {
        eliteJDCloudClient = self
        try GetSaleServiceByDeliverNumberExecutor(jdCloudClient: eliteJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func jdxCreateOrderAsync(request:JdxCreateOrderRequest,requestComplation:@escaping ExecuteResult<JdxCreateOrderResult>) throws {
        eliteJDCloudClient = self
        try JdxCreateOrderExecutor(jdCloudClient: eliteJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func jdxQueryProductAsync(request:JdxQueryProductRequest,requestComplation:@escaping ExecuteResult<JdxQueryProductResult>) throws {
        eliteJDCloudClient = self
        try JdxQueryProductExecutor(jdCloudClient: eliteJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func confirmSaleServiceDeliveryAsync(request:ConfirmSaleServiceDeliveryRequest,requestComplation:@escaping ExecuteResult<ConfirmSaleServiceDeliveryResult>) throws {
        eliteJDCloudClient = self
        try ConfirmSaleServiceDeliveryExecutor(jdCloudClient: eliteJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension EliteJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "elite.cn-south-1.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
