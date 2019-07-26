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

///  resourceEnd
@objc(ResourceEnd)
public class ResourceEnd:NSObject,Codable{
    /// agent 状态: 0-异常，1-正常
    var agentStatus:Int64?
    /// 资源名称
    var name:String?
    /// 资源所属地域
    var region:String?
    /// 资源ID
    var resourceId:String?



    public override init(){
            super.init()
    }

    enum ResourceEndCodingKeys: String, CodingKey {
        case agentStatus
        case name
        case region
        case resourceId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ResourceEndCodingKeys.self)
        if decoderContainer.contains(.agentStatus)
        {
            self.agentStatus = try decoderContainer.decode(Int64?.self, forKey: .agentStatus)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.region)
        {
            self.region = try decoderContainer.decode(String?.self, forKey: .region)
        }
        if decoderContainer.contains(.resourceId)
        {
            self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
        }
    }
}
public extension ResourceEnd{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResourceEndCodingKeys.self)
         try encoderContainer.encode(agentStatus, forKey: .agentStatus)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
    }
}
