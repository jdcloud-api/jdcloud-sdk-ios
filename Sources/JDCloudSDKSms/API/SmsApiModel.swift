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

   Send-Message-Related-APIs
   短信发送相关API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  短信发送回执接口
public class StatusReportRequest:JdCloudRequest
{
    /// 发送短信的序列号
    var sequenceNumber:String

    /// 需要获取回执的手机号码列表，选填
    var phoneList:[String?]?


    public init(regionId: String,sequenceNumber:String){
        self.sequenceNumber = sequenceNumber
        super.init(regionId: regionId)
    }


    enum StatusReportRequestRequestCodingKeys: String, CodingKey {
        case sequenceNumber
        case phoneList
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StatusReportRequestRequestCodingKeys.self)
        try encoderContainer.encode(sequenceNumber, forKey: .sequenceNumber)
        try encoderContainer.encode(phoneList, forKey: .phoneList)

    }
}


///  短信回复接口
public class ReplyRequest:JdCloudRequest
{
    /// 应用Id
    var appId:String

    /// 查询时间
    var dataDate:String

    /// 手机号列表（选填）
    var phoneList:[String?]?


    public init(regionId: String,appId:String,dataDate:String){
        self.appId = appId
        self.dataDate = dataDate
        super.init(regionId: regionId)
    }


    enum ReplyRequestRequestCodingKeys: String, CodingKey {
        case appId
        case dataDate
        case phoneList
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ReplyRequestRequestCodingKeys.self)
        try encoderContainer.encode(appId, forKey: .appId)
        try encoderContainer.encode(dataDate, forKey: .dataDate)
        try encoderContainer.encode(phoneList, forKey: .phoneList)

    }
}

/// 短信发送回执接口 
public class StatusReportResult:NSObject,JdCloudResult
{
    /// 拉取单个手机短信状态响应参数
    var data:[StatusReportResp?]?

    /// 请求状态
    var status:Bool?

    /// 错误码
    var code:String?

    /// 错误消息
    var message:String?



    public override init(){
        super.init()
    }

    enum StatusReportResultCodingKeys: String, CodingKey {
        case data
        case status
        case code
        case message
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StatusReportResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode([StatusReportResp?]?.self, forKey: .data)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Bool?.self, forKey: .status)
        }
        if decoderContainer.contains(.code)
        {
            self.code = try decoderContainer.decode(String?.self, forKey: .code)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
    }
}
public extension StatusReportResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StatusReportResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(code, forKey: .code)
        try encoderContainer.encode(message, forKey: .message)
    }
}

///  指定模板群发短信
public class BatchSendRequest:JdCloudRequest
{
    /// 模板Id
    var templateId:String

    /// 签名Id
    var signId:String

    /// 群发的国内电话号码,群发时一次最多不要超过200个手机号
    var phoneList:[String?]?

    /// 短信模板变量对应的数据值,Array格式
    var params:[String?]?


    public init(regionId: String,templateId:String,signId:String){
        self.templateId = templateId
        self.signId = signId
        super.init(regionId: regionId)
    }


    enum BatchSendRequestRequestCodingKeys: String, CodingKey {
        case templateId
        case signId
        case phoneList
        case params
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BatchSendRequestRequestCodingKeys.self)
        try encoderContainer.encode(templateId, forKey: .templateId)
        try encoderContainer.encode(signId, forKey: .signId)
        try encoderContainer.encode(phoneList, forKey: .phoneList)
        try encoderContainer.encode(params, forKey: .params)

    }
}

public class StatusReportResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:StatusReportResult?;

    enum StatusReportResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StatusReportResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(StatusReportResult?.self, forKey: .result) ?? nil
    }
}

public extension StatusReportResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StatusReportResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 指定模板群发短信 
public class BatchSendResult:NSObject,JdCloudResult
{
    /// 指定短信Id群发短信响应参数
    var data:BatchSendResp?

    /// 请求状态
    var status:Bool?

    /// 错误码
    var code:String?

    /// 错误消息
    var message:String?



    public override init(){
        super.init()
    }

    enum BatchSendResultCodingKeys: String, CodingKey {
        case data
        case status
        case code
        case message
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BatchSendResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode(BatchSendResp?.self, forKey: .data)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Bool?.self, forKey: .status)
        }
        if decoderContainer.contains(.code)
        {
            self.code = try decoderContainer.decode(String?.self, forKey: .code)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
    }
}
public extension BatchSendResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BatchSendResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(code, forKey: .code)
        try encoderContainer.encode(message, forKey: .message)
    }
}
public class BatchSendResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:BatchSendResult?;

    enum BatchSendResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BatchSendResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(BatchSendResult?.self, forKey: .result) ?? nil
    }
}

public extension BatchSendResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BatchSendResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 短信回复接口 
public class ReplyResult:NSObject,JdCloudResult
{
    /// 拉取单个手机短信状态响应参数
    var data:[ReplyResp?]?

    /// 请求状态
    var status:Bool?

    /// 错误码
    var code:String?

    /// 错误消息
    var message:String?



    public override init(){
        super.init()
    }

    enum ReplyResultCodingKeys: String, CodingKey {
        case data
        case status
        case code
        case message
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ReplyResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode([ReplyResp?]?.self, forKey: .data)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Bool?.self, forKey: .status)
        }
        if decoderContainer.contains(.code)
        {
            self.code = try decoderContainer.decode(String?.self, forKey: .code)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
    }
}
public extension ReplyResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ReplyResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(code, forKey: .code)
        try encoderContainer.encode(message, forKey: .message)
    }
}
public class ReplyResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:ReplyResult?;

    enum ReplyResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ReplyResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(ReplyResult?.self, forKey: .result) ?? nil
    }
}

public extension ReplyResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ReplyResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
