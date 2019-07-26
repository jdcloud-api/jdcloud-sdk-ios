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

/// 开启网站类规则 CC 观察者模式, 观察模式下，CC 防护只告警不防御。支持批量操作, 批量操作时 webRuleId 传多个, 以 &#39;,&#39; 分隔, 返回 result.code 为 1 表示操作成功, 为 0 时可能全部失败, 也可能部分失败
@objc(EnableWebRuleCCObserverModeResult)
public class EnableWebRuleCCObserverModeResult:NSObject,JdCloudResult
{
    /// 0: 开启 CC 观察者模式失败, 1: 开启 CC 观察者模式成功
    var code:Int?

    /// 开启 CC 观察者模式失败时给出具体原因
    var message:String?



    public override init(){
        super.init()
    }

    enum EnableWebRuleCCObserverModeResultCodingKeys: String, CodingKey {
        case code
        case message
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: EnableWebRuleCCObserverModeResultCodingKeys.self)
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
public extension EnableWebRuleCCObserverModeResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: EnableWebRuleCCObserverModeResultCodingKeys.self)
        try encoderContainer.encode(code, forKey: .code)
        try encoderContainer.encode(message, forKey: .message)
    }
}
