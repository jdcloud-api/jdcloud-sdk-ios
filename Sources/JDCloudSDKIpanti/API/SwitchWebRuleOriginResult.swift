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

   Anti DDos Pro Web Rule Configuration APIs
   Anti DDos Pro Web Rule Configuration APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 网站类规则切换成回源状态
@objc(SwitchWebRuleOriginResult)
public class SwitchWebRuleOriginResult:NSObject,JdCloudResult
{
    /// 0: 规则切换成回源失败, 1: 规则切换成回源成功
    var code:Int?

    /// 规则切换成回源失败时给出具体原因
    var message:String?



    public override init(){
        super.init()
    }

    enum SwitchWebRuleOriginResultCodingKeys: String, CodingKey {
        case code
        case message
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SwitchWebRuleOriginResultCodingKeys.self)
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
public extension SwitchWebRuleOriginResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SwitchWebRuleOriginResultCodingKeys.self)
        try encoderContainer.encode(code, forKey: .code)
        try encoderContainer.encode(message, forKey: .message)
    }
}
