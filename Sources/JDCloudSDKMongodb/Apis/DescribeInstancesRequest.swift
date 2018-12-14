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

   实例管理
   API related to MONGODB instances

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  查询实例信息
public class DescribeInstancesRequest:JdCloudRequest
{
    /// 页码；默认为1，取值范围：[1,∞)
    var pageNumber:Int?

    /// 分页大小；默认为10；取值范围[1, 100]
    var pageSize:Int?

    /// instanceId - 实例ID, 精确匹配
        /// instanceName - 实例名称, 模糊匹配
        /// instanceStatus - mongodb状态，精确匹配，支持多个.RUNNING：运行, ERROR：错误 ,BUILDING：创建中, DELETING：删除中, RESTORING：恢复中, RESIZING：变配中
        /// chargeMode - 计费类型，精确匹配
        /// tag - 标签，精确匹配，格式[{key:value}]
        /// 
    var filters:Filter?

    /// createTime - 创建时间,asc（正序），desc（倒序）
        /// 
    var sorts:Sort?




    enum DescribeInstancesRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case filters
        case sorts
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeInstancesRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(filters, forKey: .filters)
        try container.encode(sorts, forKey: .sorts)

    }
}
