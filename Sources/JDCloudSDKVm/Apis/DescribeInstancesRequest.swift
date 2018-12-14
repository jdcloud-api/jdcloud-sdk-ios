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

   云主机
   与主机操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  批量查询云主机的详细信息&lt;br&gt;
        ///         /// 此接口支持分页查询，默认每页20条。
        ///         /// 
public class DescribeInstancesRequest:JdCloudRequest
{
    /// 页码；默认为1
    var pageNumber:Int?

    /// 分页大小；默认为20；取值范围[10, 100]
    var pageSize:Int?

    /// instanceId - 云主机ID，精确匹配，支持多个
        /// privateIpAddress - 主网卡内网主IP地址，模糊匹配，支持多个
        /// az - 可用区，精确匹配，支持多个
        /// vpcId - 私有网络ID，精确匹配，支持多个
        /// status - 云主机状态，精确匹配，支持多个，&lt;a href&#x3D;&quot;http://docs.jdcloud.com/virtual-machines/api/vm_status&quot;&gt;参考云主机状态&lt;/a&gt;
        /// name - 云主机名称，模糊匹配，支持单个
        /// imageId - 镜像ID，精确匹配，支持多个
        /// networkInterfaceId - 弹性网卡ID，精确匹配，支持多个
        /// subnetId - 子网ID，精确匹配，支持多个
        /// agId - 使用可用组id，支持单个
        /// faultDomain - 错误域，支持多个
        /// 
    var filters:Filter?




    enum DescribeInstancesRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeInstancesRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(filters, forKey: .filters)

    }
}
