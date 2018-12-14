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

   实例管理相关接口
   API related to waf instance

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改WAF实例-配置管理-反爬虫防护配置
public class ModifyAntisdEngineConfigRequest:JdCloudRequest
{
    /// 新的反爬虫防护配置信息
    var antisdEngineConfig:AntisdEngineConfig

    /// waf 实例id
    var instanceId:String


    public init(regionId: String,antisdEngineConfig:AntisdEngineConfig,instanceId:String){
        self.antisdEngineConfig = antisdEngineConfig
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum ModifyAntisdEngineConfigRequestRequestCodingKeys: String, CodingKey {
        case antisdEngineConfig
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyAntisdEngineConfigRequestRequestCodingKeys.self)
        try container.encode(antisdEngineConfig, forKey: .antisdEngineConfig)
        try container.encode(instanceId, forKey: .instanceId)

    }
}
