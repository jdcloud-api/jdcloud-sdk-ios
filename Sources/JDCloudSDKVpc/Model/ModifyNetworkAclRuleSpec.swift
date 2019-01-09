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

///  modifyNetworkAclRuleSpec
@objc(ModifyNetworkAclRuleSpec)
public class ModifyNetworkAclRuleSpec:NSObject,Codable{
    /// networkAcl规则ID
    /// Required:true
    var ruleId:String
    /// 规则限定协议。取值范围：All,TCP,UDP,ICMP
    var protocolValue:String?
    /// 规则限定起始传输层端口, 取值范围:1-65535, 若protocol为传输层协议，默认值为1，若protocol不是传输层协议，设置无效，恒为0。如果规则只限定一个端口号，fromPort和toPort填写同一个值
    var fromPort:Int?
    /// 规则限定终止传输层端口, 取值范围:1-65535, 若protocol为传输层协议，默认值为65535，若protocol不是传输层协议，设置无效，恒为0。如果规则只限定一个端口号，fromPort和toPort填写同一个值
    var toPort:Int?
    /// 匹配地址前缀
    var addressPrefix:String?
    /// 访问控制策略：allow:允许，deny：拒绝
    var ruleAction:String?
    /// 规则匹配优先级，取值范围为[1,32768]，优先级数字越小优先级越高
    var priority:Int?
    /// 描述,允许输入UTF-8编码下的全部字符，不超过256字符
    var descriptionValue:String?



    public  init(ruleId:String){
             self.ruleId = ruleId
    }

    enum ModifyNetworkAclRuleSpecCodingKeys: String, CodingKey {
        case ruleId
        case protocolValue = "protocol"
        case fromPort
        case toPort
        case addressPrefix
        case ruleAction
        case priority
        case descriptionValue = "description"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ModifyNetworkAclRuleSpecCodingKeys.self)
        self.ruleId = try decoderContainer.decode(String.self, forKey: .ruleId)
        if decoderContainer.contains(.protocolValue)
        {
            self.protocolValue = try decoderContainer.decode(String?.self, forKey: .protocolValue)
        }
        if decoderContainer.contains(.fromPort)
        {
            self.fromPort = try decoderContainer.decode(Int?.self, forKey: .fromPort)
        }
        if decoderContainer.contains(.toPort)
        {
            self.toPort = try decoderContainer.decode(Int?.self, forKey: .toPort)
        }
        if decoderContainer.contains(.addressPrefix)
        {
            self.addressPrefix = try decoderContainer.decode(String?.self, forKey: .addressPrefix)
        }
        if decoderContainer.contains(.ruleAction)
        {
            self.ruleAction = try decoderContainer.decode(String?.self, forKey: .ruleAction)
        }
        if decoderContainer.contains(.priority)
        {
            self.priority = try decoderContainer.decode(Int?.self, forKey: .priority)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
    }
}
public extension ModifyNetworkAclRuleSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyNetworkAclRuleSpecCodingKeys.self)
         try encoderContainer.encode(ruleId, forKey: .ruleId)
         try encoderContainer.encode(protocolValue, forKey: .protocolValue)
         try encoderContainer.encode(fromPort, forKey: .fromPort)
         try encoderContainer.encode(toPort, forKey: .toPort)
         try encoderContainer.encode(addressPrefix, forKey: .addressPrefix)
         try encoderContainer.encode(ruleAction, forKey: .ruleAction)
         try encoderContainer.encode(priority, forKey: .priority)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
    }
}
