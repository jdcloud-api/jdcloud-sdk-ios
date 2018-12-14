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

   子用户管理接口
   子用户管理接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  为子用户解绑策略
public class DetachSubUserPolicyRequest:JdCloudRequest
{
    /// 子账户用户名
    var subUser:String

    /// 策略名称
    var policyName:String


    public init(regionId: String,subUser:String,policyName:String){
        self.subUser = subUser
        self.policyName = policyName
        super.init(regionId: regionId)
    }


    enum DetachSubUserPolicyRequestRequestCodingKeys: String, CodingKey {
        case subUser
        case policyName
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DetachSubUserPolicyRequestRequestCodingKeys.self)
        try container.encode(subUser, forKey: .subUser)
        try container.encode(policyName, forKey: .policyName)

    }
}
