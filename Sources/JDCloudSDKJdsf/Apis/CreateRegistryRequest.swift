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

   register manager
   register 集群管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建集群
public class CreateRegistryRequest:JdCloudRequest
{
    /// 集群名称
    var registryName:String

    /// 集群所在的vpc id
    var vpcId:String

    /// 子网id
    var subnetId:String

    /// 服务实例数量
    var registrySpec:Int32

    /// 备注信息
    var remark:String?


    public init(regionId: String,registryName:String,vpcId:String,subnetId:String,registrySpec:Int32){
        self.registryName = registryName
        self.vpcId = vpcId
        self.subnetId = subnetId
        self.registrySpec = registrySpec
        super.init(regionId: regionId)
    }


    enum CreateRegistryRequestRequestCodingKeys: String, CodingKey {
        case registryName
        case vpcId
        case subnetId
        case registrySpec
        case remark
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateRegistryRequestRequestCodingKeys.self)
        try container.encode(registryName, forKey: .registryName)
        try container.encode(vpcId, forKey: .vpcId)
        try container.encode(subnetId, forKey: .subnetId)
        try container.encode(registrySpec, forKey: .registrySpec)
        try container.encode(remark, forKey: .remark)

    }
}