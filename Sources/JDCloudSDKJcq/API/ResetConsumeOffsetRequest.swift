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

   Subscription
   订阅相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  重置消费位
@objc(ResetConsumeOffsetRequest)
public class ResetConsumeOffsetRequest:JdCloudRequest
{
    /// 时间
    var time:String

    /// topic 名称
    var topicName:String

    /// consumerGroupId
    var consumerGroupId:String


    public init(regionId: String,time:String,topicName:String,consumerGroupId:String){
        self.time = time
        self.topicName = topicName
        self.consumerGroupId = consumerGroupId
        super.init(regionId: regionId)
    }


    enum ResetConsumeOffsetRequestRequestCodingKeys: String, CodingKey {
        case time
        case topicName
        case consumerGroupId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResetConsumeOffsetRequestRequestCodingKeys.self)
        try encoderContainer.encode(time, forKey: .time)
        try encoderContainer.encode(topicName, forKey: .topicName)
        try encoderContainer.encode(consumerGroupId, forKey: .consumerGroupId)

    }
}
