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

   jdsf 服务注册中心集群列表查看
   获取服务注册中心集群信息

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  获取集群信息列表
public class DescriptionRegistriesRequest:JdCloudRequest
{
    /// 分页信息要请求的页数
    var pageNumber:Int32?

    /// 分页信息要请求每页数据的条数
    var pageSize:Int32?

    /// 集群名称或者集群实例id
    var cluster:String?

    /// 用户主账号pin or 用户主账号id
    var user:String?




    enum DescriptionRegistriesRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case cluster
        case user
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescriptionRegistriesRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(cluster, forKey: .cluster)
        try container.encode(user, forKey: .user)

    }
}
