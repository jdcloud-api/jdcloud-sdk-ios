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

///  数据推送RDS实例对象
@objc(RdsInstance)
public class RdsInstance:NSObject,Codable{
    /// RDS实例ID
    var instanceId:String?
    /// 地域
    var regionId:String?
    /// 所属私有网络ID
    var vpcId:String?
    /// 所属私有网络名称
    var vpcName:String?
    /// RDS实例名称
    var instanceName:String?
    /// RDS实例状态
    var instanceStatus:String?
    /// RDS实例类型
    var instanceType:String?
    /// RDS实例规格
    var instanceClass:String?



    public override init(){
            super.init()
    }

    enum RdsInstanceCodingKeys: String, CodingKey {
        case instanceId
        case regionId
        case vpcId
        case vpcName
        case instanceName
        case instanceStatus
        case instanceType
        case instanceClass
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RdsInstanceCodingKeys.self)
        if decoderContainer.contains(.instanceId)
        {
            self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        }
        if decoderContainer.contains(.regionId)
        {
            self.regionId = try decoderContainer.decode(String?.self, forKey: .regionId)
        }
        if decoderContainer.contains(.vpcId)
        {
            self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        }
        if decoderContainer.contains(.vpcName)
        {
            self.vpcName = try decoderContainer.decode(String?.self, forKey: .vpcName)
        }
        if decoderContainer.contains(.instanceName)
        {
            self.instanceName = try decoderContainer.decode(String?.self, forKey: .instanceName)
        }
        if decoderContainer.contains(.instanceStatus)
        {
            self.instanceStatus = try decoderContainer.decode(String?.self, forKey: .instanceStatus)
        }
        if decoderContainer.contains(.instanceType)
        {
            self.instanceType = try decoderContainer.decode(String?.self, forKey: .instanceType)
        }
        if decoderContainer.contains(.instanceClass)
        {
            self.instanceClass = try decoderContainer.decode(String?.self, forKey: .instanceClass)
        }
    }
}
public extension RdsInstance{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RdsInstanceCodingKeys.self)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(regionId, forKey: .regionId)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(vpcName, forKey: .vpcName)
         try encoderContainer.encode(instanceName, forKey: .instanceName)
         try encoderContainer.encode(instanceStatus, forKey: .instanceStatus)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(instanceClass, forKey: .instanceClass)
    }
}
