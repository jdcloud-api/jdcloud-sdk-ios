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

   Instance APIs
   Anti DDoS Protection Package Instance APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改防护包实例或 IP 的防护规则
@objc(ModifyProtectionRuleRequest)
public class ModifyProtectionRuleRequest:JdCloudRequest
{
    /// 修改防护规则请求参数
    var protectionRuleSpec:ProtectionRuleSpec

    /// 防护包实例 Id
    var instanceId:String


    public init(regionId: String,protectionRuleSpec:ProtectionRuleSpec,instanceId:String){
        self.protectionRuleSpec = protectionRuleSpec
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum ModifyProtectionRuleRequestRequestCodingKeys: String, CodingKey {
        case protectionRuleSpec
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyProtectionRuleRequestRequestCodingKeys.self)
        try encoderContainer.encode(protectionRuleSpec, forKey: .protectionRuleSpec)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
