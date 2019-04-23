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

///  securityGroupRule
@objc(SecurityGroupRule)
public class SecurityGroupRule:NSObject,Codable{
    /// 安全组规则ID
    var ruleId:String?
    /// 安全组规则方向。0：入规则; 1：出规则
    var direction:Double?
    /// 规则限定协议。300:All; 6:TCP; 17:UDP; 1:ICMP
    var protocolValue:Double?
    /// 匹配地址前缀
    var addressPrefix:String?
    /// 匹配地址协议版本。4：IPv4
    var ipVersion:Double?
    /// 规则限定起始传输层端口, 默认1 ，若protocal不是传输层协议，恒为0
    var fromPort:Double?
    /// 规则限定终止传输层端口, 默认1 ，若protocal不是传输层协议，恒为0
    var toPort:Double?
    /// 安全组规则创建时间
    var createdTime:String?
    /// 描述,​ 允许输入UTF-8编码下的全部字符，不超过256字符
    var descriptionValue:String?



    public override init(){
            super.init()
    }

    enum SecurityGroupRuleCodingKeys: String, CodingKey {
        case ruleId
        case direction
        case protocolValue = "protocol"
        case addressPrefix
        case ipVersion
        case fromPort
        case toPort
        case createdTime
        case descriptionValue = "description"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SecurityGroupRuleCodingKeys.self)
        if decoderContainer.contains(.ruleId)
        {
            self.ruleId = try decoderContainer.decode(String?.self, forKey: .ruleId)
        }
        if decoderContainer.contains(.direction)
        {
            self.direction = try decoderContainer.decode(Double?.self, forKey: .direction)
        }
        if decoderContainer.contains(.protocolValue)
        {
            self.protocolValue = try decoderContainer.decode(Double?.self, forKey: .protocolValue)
        }
        if decoderContainer.contains(.addressPrefix)
        {
            self.addressPrefix = try decoderContainer.decode(String?.self, forKey: .addressPrefix)
        }
        if decoderContainer.contains(.ipVersion)
        {
            self.ipVersion = try decoderContainer.decode(Double?.self, forKey: .ipVersion)
        }
        if decoderContainer.contains(.fromPort)
        {
            self.fromPort = try decoderContainer.decode(Double?.self, forKey: .fromPort)
        }
        if decoderContainer.contains(.toPort)
        {
            self.toPort = try decoderContainer.decode(Double?.self, forKey: .toPort)
        }
        if decoderContainer.contains(.createdTime)
        {
            self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
    }
}
public extension SecurityGroupRule{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SecurityGroupRuleCodingKeys.self)
         try encoderContainer.encode(ruleId, forKey: .ruleId)
         try encoderContainer.encode(direction, forKey: .direction)
         try encoderContainer.encode(protocolValue, forKey: .protocolValue)
         try encoderContainer.encode(addressPrefix, forKey: .addressPrefix)
         try encoderContainer.encode(ipVersion, forKey: .ipVersion)
         try encoderContainer.encode(fromPort, forKey: .fromPort)
         try encoderContainer.encode(toPort, forKey: .toPort)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
    }
}
