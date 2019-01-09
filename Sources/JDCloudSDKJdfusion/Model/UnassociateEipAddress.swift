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

///  解绑公网IP
@objc(UnassociateEipAddress)
public class UnassociateEipAddress:NSObject,Codable{
    /// 云产品的实例ID
    var instanceId:String?
    /// 要解绑的资源类型
    var instanceType:String?
    /// 是否强制解绑
    var force:Bool?



    public override init(){
            super.init()
    }

    enum UnassociateEipAddressCodingKeys: String, CodingKey {
        case instanceId
        case instanceType
        case force
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: UnassociateEipAddressCodingKeys.self)
        if decoderContainer.contains(.instanceId)
        {
            self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        }
        if decoderContainer.contains(.instanceType)
        {
            self.instanceType = try decoderContainer.decode(String?.self, forKey: .instanceType)
        }
        if decoderContainer.contains(.force)
        {
            self.force = try decoderContainer.decode(Bool?.self, forKey: .force)
        }
    }
}
public extension UnassociateEipAddress{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UnassociateEipAddressCodingKeys.self)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(force, forKey: .force)
    }
}
