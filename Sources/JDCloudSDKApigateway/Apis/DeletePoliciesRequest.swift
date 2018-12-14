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

   流控策略
   关于流控策略配置和查看的相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  批量删除流控策略接口
public class DeletePoliciesRequest:JdCloudRequest
{
    /// 要删除流控策略的ID集合
    var policyIds:String


    public init(regionId: String,policyIds:String){
        self.policyIds = policyIds
        super.init(regionId: regionId)
    }


    enum DeletePoliciesRequestRequestCodingKeys: String, CodingKey {
        case policyIds
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DeletePoliciesRequestRequestCodingKeys.self)
        try container.encode(policyIds, forKey: .policyIds)

    }
}