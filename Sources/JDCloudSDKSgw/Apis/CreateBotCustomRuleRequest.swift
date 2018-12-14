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

   自定义BOT规则相关接口
   API related to BOT custom rule

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建自定义BOT规则
public class CreateBotCustomRuleRequest:JdCloudRequest
{
    /// 创建自定义BOT规则所需基本信息。
    var botCustomRule:BotCustomRule

    /// waf 实例id
    var instanceId:String


    public init(regionId: String,botCustomRule:BotCustomRule,instanceId:String){
        self.botCustomRule = botCustomRule
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum CreateBotCustomRuleRequestRequestCodingKeys: String, CodingKey {
        case botCustomRule
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateBotCustomRuleRequestRequestCodingKeys.self)
        try container.encode(botCustomRule, forKey: .botCustomRule)
        try container.encode(instanceId, forKey: .instanceId)

    }
}
