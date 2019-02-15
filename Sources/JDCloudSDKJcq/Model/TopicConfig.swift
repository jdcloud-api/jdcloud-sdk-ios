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

///  topicConfig
@objc(TopicConfig)
public class TopicConfig:NSObject,Codable{
    /// 消息最大长度
    var maxMessageSizeKB:Int?
    /// tps
    var threshold:Int?
    /// topicPermission
    var topicPermission:String?
    /// topicType
    var topicType:String?



    public override init(){
            super.init()
    }

    enum TopicConfigCodingKeys: String, CodingKey {
        case maxMessageSizeKB
        case threshold
        case topicPermission
        case topicType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TopicConfigCodingKeys.self)
        if decoderContainer.contains(.maxMessageSizeKB)
        {
            self.maxMessageSizeKB = try decoderContainer.decode(Int?.self, forKey: .maxMessageSizeKB)
        }
        if decoderContainer.contains(.threshold)
        {
            self.threshold = try decoderContainer.decode(Int?.self, forKey: .threshold)
        }
        if decoderContainer.contains(.topicPermission)
        {
            self.topicPermission = try decoderContainer.decode(String?.self, forKey: .topicPermission)
        }
        if decoderContainer.contains(.topicType)
        {
            self.topicType = try decoderContainer.decode(String?.self, forKey: .topicType)
        }
    }
}
public extension TopicConfig{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TopicConfigCodingKeys.self)
         try encoderContainer.encode(maxMessageSizeKB, forKey: .maxMessageSizeKB)
         try encoderContainer.encode(threshold, forKey: .threshold)
         try encoderContainer.encode(topicPermission, forKey: .topicPermission)
         try encoderContainer.encode(topicType, forKey: .topicType)
    }
}
