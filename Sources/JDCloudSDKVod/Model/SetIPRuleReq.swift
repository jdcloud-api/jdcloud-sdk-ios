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

   Domain Management
   域名管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  设置域名IP访问控制规则配置请求消息体
@objc(SetIPRuleReq)
public class SetIPRuleReq:NSObject,Codable{
    /// 规则类型，取值 &#39;ip&#39;
    var ruleType:String?
    /// 规则配置对象
    var config:Config?
    /// 是否启用该规则
    var enabled:Bool?



    public override init(){
            super.init()
    }

    enum SetIPRuleReqCodingKeys: String, CodingKey {
        case ruleType
        case config
        case enabled
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SetIPRuleReqCodingKeys.self)
        if decoderContainer.contains(.ruleType)
        {
            self.ruleType = try decoderContainer.decode(String?.self, forKey: .ruleType)
        }
        if decoderContainer.contains(.config)
        {
            self.config = try decoderContainer.decode(Config?.self, forKey: .config)
        }
        if decoderContainer.contains(.enabled)
        {
            self.enabled = try decoderContainer.decode(Bool?.self, forKey: .enabled)
        }
    }
}
public extension SetIPRuleReq{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetIPRuleReqCodingKeys.self)
         try encoderContainer.encode(ruleType, forKey: .ruleType)
         try encoderContainer.encode(config, forKey: .config)
         try encoderContainer.encode(enabled, forKey: .enabled)
    }
}
