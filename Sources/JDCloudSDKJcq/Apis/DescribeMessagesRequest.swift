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

   Message接口
   Message相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  消息列表
public class DescribeMessagesRequest:JdCloudRequest
{
    /// 开始时间
    var startTime:String

    /// 结束时间
    var endTime:String

    /// topic 名称
    var topicName:String


    public init(regionId: String,startTime:String,endTime:String,topicName:String){
        self.startTime = startTime
        self.endTime = endTime
        self.topicName = topicName
        super.init(regionId: regionId)
    }


    enum DescribeMessagesRequestRequestCodingKeys: String, CodingKey {
        case startTime
        case endTime
        case topicName
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeMessagesRequestRequestCodingKeys.self)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(topicName, forKey: .topicName)

    }
}
