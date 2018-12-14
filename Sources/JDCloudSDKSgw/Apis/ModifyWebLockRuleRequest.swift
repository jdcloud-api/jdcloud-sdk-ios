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

   实例管理-网页防篡改相关接口
   API related to apply

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改网页防篡改规则
public class ModifyWebLockRuleRequest:JdCloudRequest
{
    /// 创建防护配置规则所需基本信息。
    var weblockRule:WebLockRule

    /// waf 实例id
    var instanceId:String

    /// 网页防篡改规则id
    var ruleId:String


    public init(regionId: String,weblockRule:WebLockRule,instanceId:String,ruleId:String){
        self.weblockRule = weblockRule
        self.instanceId = instanceId
        self.ruleId = ruleId
        super.init(regionId: regionId)
    }


    enum ModifyWebLockRuleRequestRequestCodingKeys: String, CodingKey {
        case weblockRule
        case instanceId
        case ruleId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyWebLockRuleRequestRequestCodingKeys.self)
        try container.encode(weblockRule, forKey: .weblockRule)
        try container.encode(instanceId, forKey: .instanceId)
        try container.encode(ruleId, forKey: .ruleId)

    }
}
