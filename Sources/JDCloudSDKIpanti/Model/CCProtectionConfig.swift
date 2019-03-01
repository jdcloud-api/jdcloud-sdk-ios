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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  cCProtectionConfig
@objc(CCProtectionConfig)
public class CCProtectionConfig:NSObject,Codable{
    /// 网站规则的 CC 防护状态, 0: 关闭, 1: 开启
    var enable:Int?
    /// 观察者模式, 0: 关闭, 1: 开启
    var observerMode:Int?
    /// 防护等级, 0: 正常, 1: 宽松, 2: 紧急, 3: 自定义
    var level:Int?
    /// HTTP 请求数阈值
    var ccThreshold:Int64?
    /// Host 的防护阈值
    var hostQps:Int64?
    /// Host + Url 的防护阈值
    var hostUrlQps:Int64?
    /// 每个源 IP 对 Host 的防护阈值
    var ipHostQps:Int64?
    /// 每个源 IP 对 Host + Url 的防护阈值
    var ipHostUrlQps:Int64?
    /// 开启的 cc 防护规则数量
    var ccProtectionRuleEnableCount:Int64?



    public override init(){
            super.init()
    }

    enum CCProtectionConfigCodingKeys: String, CodingKey {
        case enable
        case observerMode
        case level
        case ccThreshold
        case hostQps
        case hostUrlQps
        case ipHostQps
        case ipHostUrlQps
        case ccProtectionRuleEnableCount
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CCProtectionConfigCodingKeys.self)
        if decoderContainer.contains(.enable)
        {
            self.enable = try decoderContainer.decode(Int?.self, forKey: .enable)
        }
        if decoderContainer.contains(.observerMode)
        {
            self.observerMode = try decoderContainer.decode(Int?.self, forKey: .observerMode)
        }
        if decoderContainer.contains(.level)
        {
            self.level = try decoderContainer.decode(Int?.self, forKey: .level)
        }
        if decoderContainer.contains(.ccThreshold)
        {
            self.ccThreshold = try decoderContainer.decode(Int64?.self, forKey: .ccThreshold)
        }
        if decoderContainer.contains(.hostQps)
        {
            self.hostQps = try decoderContainer.decode(Int64?.self, forKey: .hostQps)
        }
        if decoderContainer.contains(.hostUrlQps)
        {
            self.hostUrlQps = try decoderContainer.decode(Int64?.self, forKey: .hostUrlQps)
        }
        if decoderContainer.contains(.ipHostQps)
        {
            self.ipHostQps = try decoderContainer.decode(Int64?.self, forKey: .ipHostQps)
        }
        if decoderContainer.contains(.ipHostUrlQps)
        {
            self.ipHostUrlQps = try decoderContainer.decode(Int64?.self, forKey: .ipHostUrlQps)
        }
        if decoderContainer.contains(.ccProtectionRuleEnableCount)
        {
            self.ccProtectionRuleEnableCount = try decoderContainer.decode(Int64?.self, forKey: .ccProtectionRuleEnableCount)
        }
    }
}
public extension CCProtectionConfig{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CCProtectionConfigCodingKeys.self)
         try encoderContainer.encode(enable, forKey: .enable)
         try encoderContainer.encode(observerMode, forKey: .observerMode)
         try encoderContainer.encode(level, forKey: .level)
         try encoderContainer.encode(ccThreshold, forKey: .ccThreshold)
         try encoderContainer.encode(hostQps, forKey: .hostQps)
         try encoderContainer.encode(hostUrlQps, forKey: .hostUrlQps)
         try encoderContainer.encode(ipHostQps, forKey: .ipHostQps)
         try encoderContainer.encode(ipHostUrlQps, forKey: .ipHostUrlQps)
         try encoderContainer.encode(ccProtectionRuleEnableCount, forKey: .ccProtectionRuleEnableCount)
    }
}
