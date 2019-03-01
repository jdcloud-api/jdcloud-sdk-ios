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


///  删除网站规则
@objc(DeleteWebRuleRequest)
public class DeleteWebRuleRequest:JdCloudRequest
{
    /// 高防实例 Id
    var instanceId:Int64

    /// 网站规则 Id
    var webRuleId:Int64


    public init(regionId: String,instanceId:Int64,webRuleId:Int64){
        self.instanceId = instanceId
        self.webRuleId = webRuleId
        super.init(regionId: regionId)
    }


    enum DeleteWebRuleRequestRequestCodingKeys: String, CodingKey {
        case instanceId
        case webRuleId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteWebRuleRequestRequestCodingKeys.self)
        try encoderContainer.encode(instanceId, forKey: .instanceId)
        try encoderContainer.encode(webRuleId, forKey: .webRuleId)

    }
}
