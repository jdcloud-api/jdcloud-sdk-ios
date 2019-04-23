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

   elite交付服务相关接口
   elite交付服务相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 确认交付
@objc(ConfirmSaleServiceDeliveryResult)
public class ConfirmSaleServiceDeliveryResult:NSObject,JdCloudResult
{
    /// true为成功，false为失败
    var status:Bool?

    /// 描述信息
    var message:String?



    public override init(){
        super.init()
    }

    enum ConfirmSaleServiceDeliveryResultCodingKeys: String, CodingKey {
        case status
        case message
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ConfirmSaleServiceDeliveryResultCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Bool?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
    }
}
public extension ConfirmSaleServiceDeliveryResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ConfirmSaleServiceDeliveryResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
    }
}
