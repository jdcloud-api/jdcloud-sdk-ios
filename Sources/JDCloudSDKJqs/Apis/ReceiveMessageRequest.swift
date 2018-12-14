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

   JQS OpenAPI
   

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  receiveMessageRequest
public class ReceiveMessageRequest:JdCloudRequest
{
    /// Body
    var body:PbReceiveMessageInput

    /// QueueId
    var queueId:UInt8


    public init(regionId: String,body:PbReceiveMessageInput,queueId:UInt8){
        self.body = body
        self.queueId = queueId
        super.init(regionId: regionId)
    }


    enum ReceiveMessageRequestRequestCodingKeys: String, CodingKey {
        case body
        case queueId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ReceiveMessageRequestRequestCodingKeys.self)
        try container.encode(body, forKey: .body)
        try container.encode(queueId, forKey: .queueId)

    }
}
