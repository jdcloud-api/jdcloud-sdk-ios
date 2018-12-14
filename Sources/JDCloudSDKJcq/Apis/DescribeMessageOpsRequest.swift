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

   运营后台接口
   运营后台相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  消息查询
public class DescribeMessageOpsRequest:JdCloudRequest
{
    /// 用户pin
    var userPin:String

    /// topic 名称
    var topicName:String

    /// message Id
    var messageId:String


    public init(regionId: String,userPin:String,topicName:String,messageId:String){
        self.userPin = userPin
        self.topicName = topicName
        self.messageId = messageId
        super.init(regionId: regionId)
    }


    enum DescribeMessageOpsRequestRequestCodingKeys: String, CodingKey {
        case userPin
        case topicName
        case messageId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeMessageOpsRequestRequestCodingKeys.self)
        try container.encode(userPin, forKey: .userPin)
        try container.encode(topicName, forKey: .topicName)
        try container.encode(messageId, forKey: .messageId)

    }
}
