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

   Iotlink-Related-API
   物联网卡服务相关API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  物联网卡开启流量操作
public class OpenIotFlowRequest:JdCloudRequest
{
    /// 物联网卡号码列表(单次提交最多不超过200个号码)
    var iccids:[String?]?




    enum OpenIotFlowRequestRequestCodingKeys: String, CodingKey {
        case iccids
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OpenIotFlowRequestRequestCodingKeys.self)
        try encoderContainer.encode(iccids, forKey: .iccids)

    }
}


///  根据物联网卡iccid查询该卡的开关机状态信息
public class OnOffStatusRequest:JdCloudRequest
{
    /// 物联网卡iccid
    var iccid:String


    public init(regionId: String,iccid:String){
        self.iccid = iccid
        super.init(regionId: regionId)
    }


    enum OnOffStatusRequestRequestCodingKeys: String, CodingKey {
        case iccid
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OnOffStatusRequestRequestCodingKeys.self)
        try encoderContainer.encode(iccid, forKey: .iccid)

    }
}

/// 物联网卡停机操作 
public class CloseIotCardResult:NSObject,JdCloudResult
{
    /// 请求状态(0:成功;1:失败)
    var status:String?

    /// 消息描述
    var message:String?

    /// 物联网卡停机操作结果集
    var result:[OperationIotlinkResp?]?



    public override init(){
        super.init()
    }

    enum CloseIotCardResultCodingKeys: String, CodingKey {
        case status
        case message
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CloseIotCardResultCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode([OperationIotlinkResp?]?.self, forKey: .result)
        }
    }
}
public extension CloseIotCardResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CloseIotCardResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(result, forKey: .result)
    }
}
public class CloseIotCardResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:CloseIotCardResult?;

    enum CloseIotCardResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CloseIotCardResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(CloseIotCardResult?.self, forKey: .result) ?? nil
    }
}

public extension CloseIotCardResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CloseIotCardResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
public class CloseIotFlowResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:CloseIotFlowResult?;

    enum CloseIotFlowResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CloseIotFlowResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(CloseIotFlowResult?.self, forKey: .result) ?? nil
    }
}

public extension CloseIotFlowResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CloseIotFlowResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    

///  物联网卡停机操作
public class CloseIotCardRequest:JdCloudRequest
{
    /// 物联网卡号码列表(单次提交最多不超过200个号码)
    var iccids:[String?]?




    enum CloseIotCardRequestRequestCodingKeys: String, CodingKey {
        case iccids
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CloseIotCardRequestRequestCodingKeys.self)
        try encoderContainer.encode(iccids, forKey: .iccids)

    }
}

/// 物联网卡开机操作 
public class OpenIotCardResult:NSObject,JdCloudResult
{
    /// 请求状态(0:成功;1:失败)
    var status:String?

    /// 消息描述
    var message:String?

    /// 物联网卡开机操作结果集
    var result:[OperationIotlinkResp?]?



    public override init(){
        super.init()
    }

    enum OpenIotCardResultCodingKeys: String, CodingKey {
        case status
        case message
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OpenIotCardResultCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode([OperationIotlinkResp?]?.self, forKey: .result)
        }
    }
}
public extension OpenIotCardResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OpenIotCardResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(result, forKey: .result)
    }
}
/// 根据物联网卡iccid查询该卡的当月套餐内的GPRS实时使用量 
public class GprsRealtimeInfoResult:NSObject,JdCloudResult
{
    /// 请求状态(0:成功;1:失败)
    var status:String?

    /// 消息描述
    var message:String?

    /// 指定物联网卡的当月套餐内的GPRS实时使用量
    var result:GprsRealtimeInfoResp?



    public override init(){
        super.init()
    }

    enum GprsRealtimeInfoResultCodingKeys: String, CodingKey {
        case status
        case message
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GprsRealtimeInfoResultCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode(GprsRealtimeInfoResp?.self, forKey: .result)
        }
    }
}
public extension GprsRealtimeInfoResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GprsRealtimeInfoResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(result, forKey: .result)
    }
}
public class LifeStatusResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:LifeStatusResult?;

    enum LifeStatusResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: LifeStatusResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(LifeStatusResult?.self, forKey: .result) ?? nil
    }
}

public extension LifeStatusResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: LifeStatusResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 根据物联网卡iccid查询该卡的gprs状态信息 
public class GprsStatusResult:NSObject,JdCloudResult
{
    /// 请求状态(0:成功;1:失败)
    var status:String?

    /// 消息描述
    var message:String?

    /// 指定物联网卡的gprs状态信息
    var result:GprsStatusResp?



    public override init(){
        super.init()
    }

    enum GprsStatusResultCodingKeys: String, CodingKey {
        case status
        case message
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GprsStatusResultCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode(GprsStatusResp?.self, forKey: .result)
        }
    }
}
public extension GprsStatusResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GprsStatusResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(result, forKey: .result)
    }
}

///  物联网卡开机操作
public class OpenIotCardRequest:JdCloudRequest
{
    /// 物联网卡号码列表(单次提交最多不超过200个号码)
    var iccids:[String?]?




    enum OpenIotCardRequestRequestCodingKeys: String, CodingKey {
        case iccids
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OpenIotCardRequestRequestCodingKeys.self)
        try encoderContainer.encode(iccids, forKey: .iccids)

    }
}


///  根据物联网卡iccid查询该卡的生命周期信息
public class LifeStatusRequest:JdCloudRequest
{
    /// 物联网卡iccid
    var iccid:String


    public init(regionId: String,iccid:String){
        self.iccid = iccid
        super.init(regionId: regionId)
    }


    enum LifeStatusRequestRequestCodingKeys: String, CodingKey {
        case iccid
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: LifeStatusRequestRequestCodingKeys.self)
        try encoderContainer.encode(iccid, forKey: .iccid)

    }
}

/// 物联网卡停流量操作 
public class CloseIotFlowResult:NSObject,JdCloudResult
{
    /// 请求状态(0:成功;1:失败)
    var status:String?

    /// 消息描述
    var message:String?

    /// 物联网卡停流量操作结果集
    var result:[OperationIotlinkResp?]?



    public override init(){
        super.init()
    }

    enum CloseIotFlowResultCodingKeys: String, CodingKey {
        case status
        case message
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CloseIotFlowResultCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode([OperationIotlinkResp?]?.self, forKey: .result)
        }
    }
}
public extension CloseIotFlowResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CloseIotFlowResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(result, forKey: .result)
    }
}
public class GprsStatusResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:GprsStatusResult?;

    enum GprsStatusResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GprsStatusResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(GprsStatusResult?.self, forKey: .result) ?? nil
    }
}

public extension GprsStatusResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GprsStatusResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
public class OnOffStatusResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:OnOffStatusResult?;

    enum OnOffStatusResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OnOffStatusResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(OnOffStatusResult?.self, forKey: .result) ?? nil
    }
}

public extension OnOffStatusResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OnOffStatusResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
public class GprsRealtimeInfoResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:GprsRealtimeInfoResult?;

    enum GprsRealtimeInfoResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GprsRealtimeInfoResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(GprsRealtimeInfoResult?.self, forKey: .result) ?? nil
    }
}

public extension GprsRealtimeInfoResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GprsRealtimeInfoResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
public class OpenIotCardResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:OpenIotCardResult?;

    enum OpenIotCardResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OpenIotCardResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(OpenIotCardResult?.self, forKey: .result) ?? nil
    }
}

public extension OpenIotCardResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OpenIotCardResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 根据物联网卡iccid查询该卡的开关机状态信息 
public class OnOffStatusResult:NSObject,JdCloudResult
{
    /// 请求状态(0:成功;1:失败)
    var status:String?

    /// 消息描述
    var message:String?

    /// 指定物联网卡的开关机状态信息
    var result:OnOffStatusResp?



    public override init(){
        super.init()
    }

    enum OnOffStatusResultCodingKeys: String, CodingKey {
        case status
        case message
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OnOffStatusResultCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode(OnOffStatusResp?.self, forKey: .result)
        }
    }
}
public extension OnOffStatusResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OnOffStatusResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(result, forKey: .result)
    }
}
public class OpenIotFlowResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:OpenIotFlowResult?;

    enum OpenIotFlowResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OpenIotFlowResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(OpenIotFlowResult?.self, forKey: .result) ?? nil
    }
}

public extension OpenIotFlowResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OpenIotFlowResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    

///  物联网卡停流量操作
public class CloseIotFlowRequest:JdCloudRequest
{
    /// 物联网卡号码列表(单次提交最多不超过200个号码)
    var iccids:[String?]?




    enum CloseIotFlowRequestRequestCodingKeys: String, CodingKey {
        case iccids
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CloseIotFlowRequestRequestCodingKeys.self)
        try encoderContainer.encode(iccids, forKey: .iccids)

    }
}

/// 物联网卡开启流量操作 
public class OpenIotFlowResult:NSObject,JdCloudResult
{
    /// 请求状态(0:成功;1:失败)
    var status:String?

    /// 消息描述
    var message:String?

    /// 物联网卡开启流量操作结果集
    var result:[OperationIotlinkResp?]?



    public override init(){
        super.init()
    }

    enum OpenIotFlowResultCodingKeys: String, CodingKey {
        case status
        case message
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OpenIotFlowResultCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode([OperationIotlinkResp?]?.self, forKey: .result)
        }
    }
}
public extension OpenIotFlowResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OpenIotFlowResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(result, forKey: .result)
    }
}
/// 根据物联网卡iccid查询该卡的生命周期信息 
public class LifeStatusResult:NSObject,JdCloudResult
{
    /// 请求状态(0:成功;1:失败)
    var status:String?

    /// 消息描述
    var message:String?

    /// 指定物联网卡的生命周期信息
    var result:LifeStatusResp?



    public override init(){
        super.init()
    }

    enum LifeStatusResultCodingKeys: String, CodingKey {
        case status
        case message
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: LifeStatusResultCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode(LifeStatusResp?.self, forKey: .result)
        }
    }
}
public extension LifeStatusResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: LifeStatusResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(result, forKey: .result)
    }
}

///  根据物联网卡iccid查询该卡的当月套餐内的GPRS实时使用量
public class GprsRealtimeInfoRequest:JdCloudRequest
{
    /// 物联网卡iccid
    var iccid:String


    public init(regionId: String,iccid:String){
        self.iccid = iccid
        super.init(regionId: regionId)
    }


    enum GprsRealtimeInfoRequestRequestCodingKeys: String, CodingKey {
        case iccid
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GprsRealtimeInfoRequestRequestCodingKeys.self)
        try encoderContainer.encode(iccid, forKey: .iccid)

    }
}


///  根据物联网卡iccid查询该卡的gprs状态信息
public class GprsStatusRequest:JdCloudRequest
{
    /// 物联网卡iccid
    var iccid:String


    public init(regionId: String,iccid:String){
        self.iccid = iccid
        super.init(regionId: regionId)
    }


    enum GprsStatusRequestRequestCodingKeys: String, CodingKey {
        case iccid
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GprsStatusRequestRequestCodingKeys.self)
        try encoderContainer.encode(iccid, forKey: .iccid)

    }
}

