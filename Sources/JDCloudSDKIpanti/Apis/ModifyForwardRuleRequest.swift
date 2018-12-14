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

   非网站转发配置相关接口
   非网站转发配置相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  更新非网站类规则
public class ModifyForwardRuleRequest:JdCloudRequest
{
    /// 更新非网站类规则请求参数
    var forwardRuleSpec:ForwardRuleSpec

    /// 实例 ID
    var instanceId:String

    /// 转发规则 ID
    var forwardRuleId:String


    public init(regionId: String,forwardRuleSpec:ForwardRuleSpec,instanceId:String,forwardRuleId:String){
        self.forwardRuleSpec = forwardRuleSpec
        self.instanceId = instanceId
        self.forwardRuleId = forwardRuleId
        super.init(regionId: regionId)
    }


    enum ModifyForwardRuleRequestRequestCodingKeys: String, CodingKey {
        case forwardRuleSpec
        case instanceId
        case forwardRuleId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyForwardRuleRequestRequestCodingKeys.self)
        try container.encode(forwardRuleSpec, forKey: .forwardRuleSpec)
        try container.encode(instanceId, forKey: .instanceId)
        try container.encode(forwardRuleId, forKey: .forwardRuleId)

    }
}
