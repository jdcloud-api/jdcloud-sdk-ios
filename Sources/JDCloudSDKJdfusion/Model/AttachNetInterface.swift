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

///  挂载网卡
@objc(AttachNetInterface)
public class AttachNetInterface:NSObject,Codable{
    /// 虚拟机 id
    /// Required:true
    var instanceId:String



    public  init(instanceId:String){
             self.instanceId = instanceId
    }

    enum AttachNetInterfaceCodingKeys: String, CodingKey {
        case instanceId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AttachNetInterfaceCodingKeys.self)
        self.instanceId = try decoderContainer.decode(String.self, forKey: .instanceId)
    }
}
public extension AttachNetInterface{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AttachNetInterfaceCodingKeys.self)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
    }
}
