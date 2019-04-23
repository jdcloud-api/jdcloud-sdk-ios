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

///  eventOut
@objc(EventOut)
public class EventOut:NSObject,Codable{
    /// 创建时间
    var createTime:String?
    /// 资源ID
    var physicalId:String?
    /// 资源运行操作
    var resourceAction:String?
    /// 资源名称
    var resourceName:String?
    /// 资源运行状态
    var resourceStatus:String?
    /// 资源运行状态原因
    var resourceStatusReason:String?
    /// 资源类型
    var resourceType:String?
    /// 资源栈ID
    var stackId:String?
    /// 唯一标识
    var uuid:String?



    public override init(){
            super.init()
    }

    enum EventOutCodingKeys: String, CodingKey {
        case createTime
        case physicalId
        case resourceAction
        case resourceName
        case resourceStatus
        case resourceStatusReason
        case resourceType
        case stackId
        case uuid
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: EventOutCodingKeys.self)
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.physicalId)
        {
            self.physicalId = try decoderContainer.decode(String?.self, forKey: .physicalId)
        }
        if decoderContainer.contains(.resourceAction)
        {
            self.resourceAction = try decoderContainer.decode(String?.self, forKey: .resourceAction)
        }
        if decoderContainer.contains(.resourceName)
        {
            self.resourceName = try decoderContainer.decode(String?.self, forKey: .resourceName)
        }
        if decoderContainer.contains(.resourceStatus)
        {
            self.resourceStatus = try decoderContainer.decode(String?.self, forKey: .resourceStatus)
        }
        if decoderContainer.contains(.resourceStatusReason)
        {
            self.resourceStatusReason = try decoderContainer.decode(String?.self, forKey: .resourceStatusReason)
        }
        if decoderContainer.contains(.resourceType)
        {
            self.resourceType = try decoderContainer.decode(String?.self, forKey: .resourceType)
        }
        if decoderContainer.contains(.stackId)
        {
            self.stackId = try decoderContainer.decode(String?.self, forKey: .stackId)
        }
        if decoderContainer.contains(.uuid)
        {
            self.uuid = try decoderContainer.decode(String?.self, forKey: .uuid)
        }
    }
}
public extension EventOut{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: EventOutCodingKeys.self)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(physicalId, forKey: .physicalId)
         try encoderContainer.encode(resourceAction, forKey: .resourceAction)
         try encoderContainer.encode(resourceName, forKey: .resourceName)
         try encoderContainer.encode(resourceStatus, forKey: .resourceStatus)
         try encoderContainer.encode(resourceStatusReason, forKey: .resourceStatusReason)
         try encoderContainer.encode(resourceType, forKey: .resourceType)
         try encoderContainer.encode(stackId, forKey: .stackId)
         try encoderContainer.encode(uuid, forKey: .uuid)
    }
}
