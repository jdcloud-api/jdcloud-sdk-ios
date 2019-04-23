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

///  networkInterface
@objc(NetworkInterface)
public class NetworkInterface:NSObject,Codable{
    /// 弹性网卡名称
    var networkInterfaceName:String?
    /// 弹性网卡ID
    var networkInterfaceId:String?
    /// 可用区名称
    var az:String?
    /// 网卡角色，取值范围：Primary（主网卡）、Secondary（辅助网卡）
    var role:String?
    /// 以太网地址
    var macAddress:String?
    /// 虚拟网络ID
    var vpcId:String?
    /// 子网ID
    var subnetId:String?
    /// 安全组ID列表
    var networkSecurityGroupIds:[String?]?
    /// 源和目标IP地址校验，取值为0或者1
    var sanityCheck:Int?
    /// 网卡主IP
    var primaryIp:NetworkInterfacePrivateIp?
    /// 网卡附属IP列表
    var secondaryIps:[NetworkInterfacePrivateIp?]?
    /// 关联实例类型，取值范围：vm
    var instanceType:String?
    /// 关联实例ID
    var instanceId:String?
    /// 实例所属的账号
    var instanceOwnerId:String?
    /// 网卡在实例上的设备索引号，取值范围：[0,8]，0：辅助网卡未绑定设备，1：主网卡，2-8：辅助网卡已绑定设备
    var deviceIndex:Int?
    /// 网卡描述信息
    var descriptionValue:String?
    /// 弹性网卡创建时间
    var createdTime:String?



    public override init(){
            super.init()
    }

    enum NetworkInterfaceCodingKeys: String, CodingKey {
        case networkInterfaceName
        case networkInterfaceId
        case az
        case role
        case macAddress
        case vpcId
        case subnetId
        case networkSecurityGroupIds
        case sanityCheck
        case primaryIp
        case secondaryIps
        case instanceType
        case instanceId
        case instanceOwnerId
        case deviceIndex
        case descriptionValue = "description"
        case createdTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NetworkInterfaceCodingKeys.self)
        if decoderContainer.contains(.networkInterfaceName)
        {
            self.networkInterfaceName = try decoderContainer.decode(String?.self, forKey: .networkInterfaceName)
        }
        if decoderContainer.contains(.networkInterfaceId)
        {
            self.networkInterfaceId = try decoderContainer.decode(String?.self, forKey: .networkInterfaceId)
        }
        if decoderContainer.contains(.az)
        {
            self.az = try decoderContainer.decode(String?.self, forKey: .az)
        }
        if decoderContainer.contains(.role)
        {
            self.role = try decoderContainer.decode(String?.self, forKey: .role)
        }
        if decoderContainer.contains(.macAddress)
        {
            self.macAddress = try decoderContainer.decode(String?.self, forKey: .macAddress)
        }
        if decoderContainer.contains(.vpcId)
        {
            self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        }
        if decoderContainer.contains(.subnetId)
        {
            self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        }
        if decoderContainer.contains(.networkSecurityGroupIds)
        {
            self.networkSecurityGroupIds = try decoderContainer.decode([String?]?.self, forKey: .networkSecurityGroupIds)
        }
        if decoderContainer.contains(.sanityCheck)
        {
            self.sanityCheck = try decoderContainer.decode(Int?.self, forKey: .sanityCheck)
        }
        if decoderContainer.contains(.primaryIp)
        {
            self.primaryIp = try decoderContainer.decode(NetworkInterfacePrivateIp?.self, forKey: .primaryIp)
        }
        if decoderContainer.contains(.secondaryIps)
        {
            self.secondaryIps = try decoderContainer.decode([NetworkInterfacePrivateIp?]?.self, forKey: .secondaryIps)
        }
        if decoderContainer.contains(.instanceType)
        {
            self.instanceType = try decoderContainer.decode(String?.self, forKey: .instanceType)
        }
        if decoderContainer.contains(.instanceId)
        {
            self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        }
        if decoderContainer.contains(.instanceOwnerId)
        {
            self.instanceOwnerId = try decoderContainer.decode(String?.self, forKey: .instanceOwnerId)
        }
        if decoderContainer.contains(.deviceIndex)
        {
            self.deviceIndex = try decoderContainer.decode(Int?.self, forKey: .deviceIndex)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.createdTime)
        {
            self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        }
    }
}
public extension NetworkInterface{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NetworkInterfaceCodingKeys.self)
         try encoderContainer.encode(networkInterfaceName, forKey: .networkInterfaceName)
         try encoderContainer.encode(networkInterfaceId, forKey: .networkInterfaceId)
         try encoderContainer.encode(az, forKey: .az)
         try encoderContainer.encode(role, forKey: .role)
         try encoderContainer.encode(macAddress, forKey: .macAddress)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(networkSecurityGroupIds, forKey: .networkSecurityGroupIds)
         try encoderContainer.encode(sanityCheck, forKey: .sanityCheck)
         try encoderContainer.encode(primaryIp, forKey: .primaryIp)
         try encoderContainer.encode(secondaryIps, forKey: .secondaryIps)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(instanceOwnerId, forKey: .instanceOwnerId)
         try encoderContainer.encode(deviceIndex, forKey: .deviceIndex)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
    }
}
