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

/// 指定模板群发短信
@objc(BatchSendResult)
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
