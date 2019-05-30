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

   SSL Certificate
   SSL数字证书相关信息接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 删除证书 [MFA enabled]
@objc(DeleteCertsResult)
public class DeleteCertsResult:NSObject,JdCloudResult
{
    /// 状态码
    var code:Int?

    /// 消息
    var message:String?



    public override init(){
        super.init()
    }

    enum DeleteCertsResultCodingKeys: String, CodingKey {
        case code
        case message
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeleteCertsResultCodingKeys.self)
        if decoderContainer.contains(.code)
        {
            self.code = try decoderContainer.decode(Int?.self, forKey: .code)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
    }
}
public extension DeleteCertsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteCertsResultCodingKeys.self)
        try encoderContainer.encode(code, forKey: .code)
        try encoderContainer.encode(message, forKey: .message)
    }
}