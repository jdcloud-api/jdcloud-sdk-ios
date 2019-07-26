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

   Domain
   域名管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  设置CDN域名IP黑名单规则
@objc(SetIPRuleRequest)
public class SetIPRuleRequest:JdCloudRequest
{
    /// IP黑名单规则配置对象
    var config:IPRuleConfigObject

    /// 是否启用该规则
    var enabled:Bool

    /// 域名ID
    var domainId:Int64


    public init(regionId: String,config:IPRuleConfigObject,enabled:Bool,domainId:Int64){
        self.config = config
        self.enabled = enabled
        self.domainId = domainId
        super.init(regionId: regionId)
    }


    enum SetIPRuleRequestRequestCodingKeys: String, CodingKey {
        case config
        case enabled
        case domainId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetIPRuleRequestRequestCodingKeys.self)
        try encoderContainer.encode(config, forKey: .config)
        try encoderContainer.encode(enabled, forKey: .enabled)
        try encoderContainer.encode(domainId, forKey: .domainId)

    }
}
