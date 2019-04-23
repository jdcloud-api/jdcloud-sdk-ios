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

///  pod 状态
@objc(PodCondition)
public class PodCondition:NSObject,Codable{
    /// Last time we probed the condition.
    var lastProbeTime:String?
    /// Last time the condition transitioned from one status to another.
    var lastTransitionTime:String?
    /// Unique, one-word, CamelCase reason for the condition&#39;s last transition.
    var reason:String?
    /// Status is the status of the condition. Can be True, False, Unknown.
    var status:String?
    /// Human-readable message indicating details about last transition.
    var message:String?
    /// Type is the type of the condition. Currently only Ready.
    var conditionType:String?



    public override init(){
            super.init()
    }

    enum PodConditionCodingKeys: String, CodingKey {
        case lastProbeTime
        case lastTransitionTime
        case reason
        case status
        case message
        case conditionType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PodConditionCodingKeys.self)
        if decoderContainer.contains(.lastProbeTime)
        {
            self.lastProbeTime = try decoderContainer.decode(String?.self, forKey: .lastProbeTime)
        }
        if decoderContainer.contains(.lastTransitionTime)
        {
            self.lastTransitionTime = try decoderContainer.decode(String?.self, forKey: .lastTransitionTime)
        }
        if decoderContainer.contains(.reason)
        {
            self.reason = try decoderContainer.decode(String?.self, forKey: .reason)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.conditionType)
        {
            self.conditionType = try decoderContainer.decode(String?.self, forKey: .conditionType)
        }
    }
}
public extension PodCondition{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PodConditionCodingKeys.self)
         try encoderContainer.encode(lastProbeTime, forKey: .lastProbeTime)
         try encoderContainer.encode(lastTransitionTime, forKey: .lastTransitionTime)
         try encoderContainer.encode(reason, forKey: .reason)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(message, forKey: .message)
         try encoderContainer.encode(conditionType, forKey: .conditionType)
    }
}