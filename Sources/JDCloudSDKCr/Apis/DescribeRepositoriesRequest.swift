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

   Repository
   容器镜像仓库相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  描述用户指定 registry 下的 repository.
        ///         /// 
public class DescribeRepositoriesRequest:JdCloudRequest
{
    /// name - 仓库名称，模糊匹配，支持单个
        /// 
    var filters:Filter?

    /// 页码；默认为1
    var pageNumber:Int?

    /// 分页大小；默认为20；取值范围[10, 100]
    var pageSize:Int?




    enum DescribeRepositoriesRequestRequestCodingKeys: String, CodingKey {
        case filters
        case pageNumber
        case pageSize
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeRepositoriesRequestRequestCodingKeys.self)
        try container.encode(filters, forKey: .filters)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)

    }
}
