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

   订阅接口
   订阅相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  订阅列表
public class DescribeSubscriptionsRequest:JdCloudRequest
{
    /// consumerGroupFilter，consumerGroupId的过滤条件
    var consumerGroupFilter:String?

    /// 分页之中的每页大小
    var pageSize:Int?

    /// 分页之中的页码
    var pageNumber:Int?

    /// topic 名称
    var topicName:String


    public init(regionId: String,topicName:String){
        self.topicName = topicName
        super.init(regionId: regionId)
    }


    enum DescribeSubscriptionsRequestRequestCodingKeys: String, CodingKey {
        case consumerGroupFilter
        case pageSize
        case pageNumber
        case topicName
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeSubscriptionsRequestRequestCodingKeys.self)
        try container.encode(consumerGroupFilter, forKey: .consumerGroupFilter)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(topicName, forKey: .topicName)

    }
}