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

   自定义CC规则相关接口
   API related to CC custom rule

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改CC自定义规则
public class ModifyCCCustomRuleRequest:JdCloudRequest
{
    /// 创建CC自定义规则列表。
    var ccCustomRule:CcCustomRule

    /// waf 实例id
    var instanceId:String

    /// CC自定义规则
    var ruleId:String


    public init(regionId: String,ccCustomRule:CcCustomRule,instanceId:String,ruleId:String){
        self.ccCustomRule = ccCustomRule
        self.instanceId = instanceId
        self.ruleId = ruleId
        super.init(regionId: regionId)
    }


    enum ModifyCCCustomRuleRequestRequestCodingKeys: String, CodingKey {
        case ccCustomRule
        case instanceId
        case ruleId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyCCCustomRuleRequestRequestCodingKeys.self)
        try container.encode(ccCustomRule, forKey: .ccCustomRule)
        try container.encode(instanceId, forKey: .instanceId)
        try container.encode(ruleId, forKey: .ruleId)

    }
}