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

   镜像仓库认证信息
   关于镜像仓库认证信息的相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  查询 secret 列表。&lt;br&gt; 
        ///         /// 此接口支持分页查询，默认每页20条。
        ///         /// 
public class DescribeSecretsRequest:JdCloudRequest
{
    /// 页码；默认为1
    var pageNumber:Int?

    /// 分页大小；默认为20；取值范围[10, 100]
    var pageSize:Int?

    /// name - secret名称，支持模糊搜索
        /// 
    var filters:Filter?




    enum DescribeSecretsRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeSecretsRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(filters, forKey: .filters)

    }
}
