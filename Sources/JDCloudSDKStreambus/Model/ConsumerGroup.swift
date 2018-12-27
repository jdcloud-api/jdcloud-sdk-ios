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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  consumerGroup
@objc(ConsumerGroup)
public class ConsumerGroup:NSObject,Codable{
    /// Id
    var id:Int?
    /// Name
    var name:String?
    /// CreatedTime
    var createdTime:String?
    /// Delete
    var delete:UInt8?
    /// TopicId
    var topicId:Int64?



    public override init(){
            super.init()
    }

    enum ConsumerGroupCodingKeys: String, CodingKey {
        case id
        case name
        case createdTime
        case delete
        case topicId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ConsumerGroupCodingKeys.self)
        self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
        self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        self.delete = try decoderContainer.decode(UInt8?.self, forKey: .delete)
        self.topicId = try decoderContainer.decode(Int64?.self, forKey: .topicId)
    }
}
public extension ConsumerGroup{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ConsumerGroupCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
         try encoderContainer.encode(delete, forKey: .delete)
         try encoderContainer.encode(topicId, forKey: .topicId)
    }
}