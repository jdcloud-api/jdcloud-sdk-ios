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

   cluster
   cluster 相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改集群的 名称 和 描述。
public class ModifyClusterRequest:JdCloudRequest
{
    /// 集群名称
    var name:String?

    /// 集群 name 和 description 必须要指定一个
    var description:String?

    /// 集群 ID
    var clusterId:String


    public init(regionId: String,clusterId:String){
        self.clusterId = clusterId
        super.init(regionId: regionId)
    }


    enum ModifyClusterRequestRequestCodingKeys: String, CodingKey {
        case name
        case description
        case clusterId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyClusterRequestRequestCodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(clusterId, forKey: .clusterId)

    }
}
