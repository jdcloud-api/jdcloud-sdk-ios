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

   资源单管理
   资源单管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询资源状态接口
public class QueryResourceAeStateRequest:JdCloudRequest
{
    /// 资源ID
    var resourceId:String

    /// 计费类型 1:按配置 2:按用量 3:包年包月 4:一次性
    var billingType:Int?


    public init(regionId: String,resourceId:String){
        self.resourceId = resourceId
        super.init(regionId: regionId)
    }


    enum QueryResourceAeStateRequestRequestCodingKeys: String, CodingKey {
        case resourceId
        case billingType
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: QueryResourceAeStateRequestRequestCodingKeys.self)
        try container.encode(resourceId, forKey: .resourceId)
        try container.encode(billingType, forKey: .billingType)

    }
}
