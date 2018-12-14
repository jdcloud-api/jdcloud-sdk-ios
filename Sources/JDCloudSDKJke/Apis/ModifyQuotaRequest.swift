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

   配额
   k8s 集群配额相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改(k8s 集群)配额，内部接口
public class ModifyQuotaRequest:JdCloudRequest
{
    /// 资源类型[kubernetes]
    var resourceType:String

    /// 配额上限
    var limit:Int


    public init(regionId: String,resourceType:String,limit:Int){
        self.resourceType = resourceType
        self.limit = limit
        super.init(regionId: regionId)
    }


    enum ModifyQuotaRequestRequestCodingKeys: String, CodingKey {
        case resourceType
        case limit
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyQuotaRequestRequestCodingKeys.self)
        try container.encode(resourceType, forKey: .resourceType)
        try container.encode(limit, forKey: .limit)

    }
}
