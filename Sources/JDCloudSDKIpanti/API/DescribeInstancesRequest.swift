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


///  查询实例列表
@objc(DescribeInstancesRequest)
public class DescribeInstancesRequest:JdCloudRequest
{
    /// 页码, 默认为 1
    var pageNumber:Int?

    /// 分页大小, 默认为 10, 取值范围[10, 100], 0 表示全量
    var pageSize:Int?

    /// 实例名称，可模糊匹配
    var name:String?




    enum DescribeInstancesRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case name
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeInstancesRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(name, forKey: .name)

    }
}
