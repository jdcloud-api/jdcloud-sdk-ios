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

///  创建安全组规则
@objc(CreateSgRule)
public class CreateSgRule:NSObject,Codable{
    /// 规则类型，ingress、egress
    /// Required:true
    var ruleType:String
    /// 协议，tcp、udp、icmp 或者 all
    /// Required:true
    var protocolValue:String
    /// 起始端口
    /// Required:true
    var fromPort:Int32
    /// 终止端口
    /// Required:true
    var toPort:Int32
    /// 安全组ID
    /// Required:true
    var securityGroupId:String
    /// 网络类型，internet、intranet
    var nicType:String?
    /// 认证策略，accept、drop
    var policy:String?
    /// 认证策略的权重，1-100。
    var priority:Int32?
    /// 目标IP地址范围
    /// Required:true
    var cidrIp:String



    public  init(ruleType:String,protocolValue:String,fromPort:Int32,toPort:Int32,securityGroupId:String,cidrIp:String){
             self.ruleType = ruleType
             self.protocolValue = protocolValue
             self.fromPort = fromPort
             self.toPort = toPort
             self.securityGroupId = securityGroupId
             self.cidrIp = cidrIp
    }

    enum CreateSgRuleCodingKeys: String, CodingKey {
        case ruleType
        case protocolValue = "protocol"
        case fromPort
        case toPort
        case securityGroupId
        case nicType
        case policy
        case priority
        case cidrIp
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateSgRuleCodingKeys.self)
        self.ruleType = try decoderContainer.decode(String.self, forKey: .ruleType)
        self.protocolValue = try decoderContainer.decode(String.self, forKey: .protocolValue)
        self.fromPort = try decoderContainer.decode(Int32.self, forKey: .fromPort)
        self.toPort = try decoderContainer.decode(Int32.self, forKey: .toPort)
        self.securityGroupId = try decoderContainer.decode(String.self, forKey: .securityGroupId)
        if decoderContainer.contains(.nicType)
        {
            self.nicType = try decoderContainer.decode(String?.self, forKey: .nicType)
        }
        if decoderContainer.contains(.policy)
        {
            self.policy = try decoderContainer.decode(String?.self, forKey: .policy)
        }
        if decoderContainer.contains(.priority)
        {
            self.priority = try decoderContainer.decode(Int32?.self, forKey: .priority)
        }
        self.cidrIp = try decoderContainer.decode(String.self, forKey: .cidrIp)
    }
}
public extension CreateSgRule{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateSgRuleCodingKeys.self)
         try encoderContainer.encode(ruleType, forKey: .ruleType)
         try encoderContainer.encode(protocolValue, forKey: .protocolValue)
         try encoderContainer.encode(fromPort, forKey: .fromPort)
         try encoderContainer.encode(toPort, forKey: .toPort)
         try encoderContainer.encode(securityGroupId, forKey: .securityGroupId)
         try encoderContainer.encode(nicType, forKey: .nicType)
         try encoderContainer.encode(policy, forKey: .policy)
         try encoderContainer.encode(priority, forKey: .priority)
         try encoderContainer.encode(cidrIp, forKey: .cidrIp)
    }
}
