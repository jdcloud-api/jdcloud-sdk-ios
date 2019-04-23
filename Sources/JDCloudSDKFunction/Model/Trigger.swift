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

///  trigger
@objc(Trigger)
public class Trigger:NSObject,Codable{
    /// 触发器Id
    var triggerId:String?
    /// 触发器所属的函数名称
    var functionName:String?
    /// 触发器所属的函数版本名称
    var versionName:String?
    /// 触发器对应的事件源类型，目前有oss和apigateway
    var eventSource:String?
    /// 触发器对应的事件源Id
    var eventSourceId:String?
    /// 触发器创建时间
    var createTime:String?
    /// 触发器最后修改时间
    var updateTime:String?



    public override init(){
            super.init()
    }

    enum TriggerCodingKeys: String, CodingKey {
        case triggerId
        case functionName
        case versionName
        case eventSource
        case eventSourceId
        case createTime
        case updateTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TriggerCodingKeys.self)
        if decoderContainer.contains(.triggerId)
        {
            self.triggerId = try decoderContainer.decode(String?.self, forKey: .triggerId)
        }
        if decoderContainer.contains(.functionName)
        {
            self.functionName = try decoderContainer.decode(String?.self, forKey: .functionName)
        }
        if decoderContainer.contains(.versionName)
        {
            self.versionName = try decoderContainer.decode(String?.self, forKey: .versionName)
        }
        if decoderContainer.contains(.eventSource)
        {
            self.eventSource = try decoderContainer.decode(String?.self, forKey: .eventSource)
        }
        if decoderContainer.contains(.eventSourceId)
        {
            self.eventSourceId = try decoderContainer.decode(String?.self, forKey: .eventSourceId)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
    }
}
public extension Trigger{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TriggerCodingKeys.self)
         try encoderContainer.encode(triggerId, forKey: .triggerId)
         try encoderContainer.encode(functionName, forKey: .functionName)
         try encoderContainer.encode(versionName, forKey: .versionName)
         try encoderContainer.encode(eventSource, forKey: .eventSource)
         try encoderContainer.encode(eventSourceId, forKey: .eventSourceId)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}
