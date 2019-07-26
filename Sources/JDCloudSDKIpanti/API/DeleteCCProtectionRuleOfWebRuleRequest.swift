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

   Anti DDos Pro Web Rule Configuration APIs
   Anti DDos Pro Web Rule Configuration APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  删除网站规则的 CC 防护规则
@objc(DeleteCCProtectionRuleOfWebRuleRequest)
public class DeleteCCProtectionRuleOfWebRuleRequest:JdCloudRequest
{
    /// 高防实例 Id
    var instanceId:String

    /// 网站规则 Id
    var webRuleId:String

    /// 网站类规则的 CC 防护规则 Id
    var ccProtectionRuleId:String


    public init(regionId: String,instanceId:String,webRuleId:String,ccProtectionRuleId:String){
        self.instanceId = instanceId
        self.webRuleId = webRuleId
        self.ccProtectionRuleId = ccProtectionRuleId
        super.init(regionId: regionId)
    }


    enum DeleteCCProtectionRuleOfWebRuleRequestRequestCodingKeys: String, CodingKey {
        case instanceId
        case webRuleId
        case ccProtectionRuleId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteCCProtectionRuleOfWebRuleRequestRequestCodingKeys.self)
        try encoderContainer.encode(instanceId, forKey: .instanceId)
        try encoderContainer.encode(webRuleId, forKey: .webRuleId)
        try encoderContainer.encode(ccProtectionRuleId, forKey: .ccProtectionRuleId)

    }
}
