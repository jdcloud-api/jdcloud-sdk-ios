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

   Anti DDoS Protection Package Instance APIs
   Anti DDoS Protection Package Instance APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改防护包防护对象
public class ModifyProtectedObjectsRequest:JdCloudRequest
{
    /// 修改防护包防护对象请求参数
    var protectedObjectsSpec:ProtectedObjectsSpec

    /// 防护包实例 Id
    var instanceId:String


    public init(regionId: String,protectedObjectsSpec:ProtectedObjectsSpec,instanceId:String){
        self.protectedObjectsSpec = protectedObjectsSpec
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum ModifyProtectedObjectsRequestRequestCodingKeys: String, CodingKey {
        case protectedObjectsSpec
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyProtectedObjectsRequestRequestCodingKeys.self)
        try container.encode(protectedObjectsSpec, forKey: .protectedObjectsSpec)
        try container.encode(instanceId, forKey: .instanceId)

    }
}
