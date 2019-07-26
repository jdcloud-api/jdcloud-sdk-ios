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

   Anti DDos Pro Instance APIs
   Anti DDos Pro Instance APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询用户可设置为网站类规则回源 IP 的京东云云内弹性公网 IP 资源
@objc(DescribeVpcIpListRequest)
public class DescribeVpcIpListRequest:JdCloudRequest
{
    /// 页码, 默认为 1
    var pageNumber:Int?

    /// 分页大小, 默认为 10, 取值范围 [0, 100], 0 表示全量
    var pageSize:Int?




    enum DescribeVpcIpListRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeVpcIpListRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)

    }
}
