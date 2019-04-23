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
@objc(PodStatus)
public class PodStatus:NSObject,Codable{
    /// pod当前状态
    var phase:String?
    /// （简要）pod处于当前状态的原因
    var reason:String?
    /// pod处于当前状态原因的详细信息
    var message:String?
    /// IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
    var podIP:String?
    /// Current service state of pod.
    var conditions:[PodCondition?]?
    /// Pod生命周期开始的时间。
    var startTime:String?



    public override init(){
            super.init()
    }

    enum PodStatusCodingKeys: String, CodingKey {
        case phase
        case reason
        case message
        case podIP
        case conditions
        case startTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PodStatusCodingKeys.self)
        if decoderContainer.contains(.phase)
        {
            self.phase = try decoderContainer.decode(String?.self, forKey: .phase)
        }
        if decoderContainer.contains(.reason)
        {
            self.reason = try decoderContainer.decode(String?.self, forKey: .reason)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.podIP)
        {
            self.podIP = try decoderContainer.decode(String?.self, forKey: .podIP)
        }
        if decoderContainer.contains(.conditions)
        {
            self.conditions = try decoderContainer.decode([PodCondition?]?.self, forKey: .conditions)
        }
        if decoderContainer.contains(.startTime)
        {
            self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        }
    }
}
public extension PodStatus{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PodStatusCodingKeys.self)
         try encoderContainer.encode(phase, forKey: .phase)
         try encoderContainer.encode(reason, forKey: .reason)
         try encoderContainer.encode(message, forKey: .message)
         try encoderContainer.encode(podIP, forKey: .podIP)
         try encoderContainer.encode(conditions, forKey: .conditions)
         try encoderContainer.encode(startTime, forKey: .startTime)
    }
}
