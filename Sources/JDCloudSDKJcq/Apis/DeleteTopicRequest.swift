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

   Topic接口
   Topic相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  删除单个topic
public class DeleteTopicRequest:JdCloudRequest
{
    /// topic 名称
    var topicName:String


    public init(regionId: String,topicName:String){
        self.topicName = topicName
        super.init(regionId: regionId)
    }


    enum DeleteTopicRequestRequestCodingKeys: String, CodingKey {
        case topicName
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DeleteTopicRequestRequestCodingKeys.self)
        try container.encode(topicName, forKey: .topicName)

    }
}
