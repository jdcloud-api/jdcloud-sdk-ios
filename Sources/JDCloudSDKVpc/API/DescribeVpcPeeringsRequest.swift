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

   对等连接
   对等连接相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  查询VpcPeering资源列表
@objc(DescribeVpcPeeringsRequest)
public class DescribeVpcPeeringsRequest:JdCloudRequest
{
    /// 页码, 默认为1, 取值范围：[1,∞), 页码超过总页数时, 显示最后一页
    var pageNumber:Int?

    /// 分页大小，默认为20，取值范围：[10,100]
    var pageSize:Int?

    /// vpcPeeringIds - vpcPeering ID，支持多个
      /// vpcPeeringNames - vpcPeering名称列表，支持多个
      /// vpcId	- vpcPeering本端Vpc Id，支持单个
      /// remoteVpcId - vpcPeering对端Vpc Id，支持单个
      /// 
    var filters:[Filter?]?




    enum DescribeVpcPeeringsRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeVpcPeeringsRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(filters, forKey: .filters)

    }
}
