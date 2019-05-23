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
import JDCloudSDKCharge

///  instance
@objc(Instance)
public class Instance:NSObject,Codable{
    /// 云物理服务器实例ID
    var instanceId:String?
    /// 区域代码, 如 cn-east-1
    var region:String?
    /// 可用区, 如 cn-east-1a
    var az:String?
    /// 实例类型, 如 cps.c.normal
    var deviceType:String?
    /// 云物理服务器名称
    var name:String?
    /// 云物理服务器描述
    var descriptionValue:String?
    /// 云物理服务器生命周期状态
    var status:String?
    /// 是否启用外网, 如 yes/no
    var enableInternet:String?
    /// 是否启用IPv6, 如 yes/no
    var enableIpv6:String?
    /// 带宽, 单位Mbps
    var bandwidth:Int?
    /// 镜像类型, 如 standard
    var imageType:String?
    /// 操作系统类型ID
    var osTypeId:String?
    /// 操作系统名称
    var osName:String?
    /// 操作系统类型, 如 ubuntu/centos
    var osType:String?
    /// 操作系统版本, 如 16.04
    var osVersion:String?
    /// 系统盘RAID类型ID
    var sysRaidTypeId:String?
    /// 系统盘RAID类型, 如 NORAID, RAID0, RAID1
    var sysRaidType:String?
    /// 数据盘RAID类型ID
    var dataRaidTypeId:String?
    /// 数据盘RAID类型, 如 NORAID, RAID0, RAID1
    var dataRaidType:String?
    /// 网络类型, 如 basic, vpc
    var networkType:String?
    /// 私有网络ID
    var vpcId:String?
    /// 私有网络名称
    var vpcName:String?
    /// 子网编号
    var subnetId:String?
    /// 子网名称
    var subnetName:String?
    /// 内网IP
    var privateIp:String?
    /// 外网链路类型, 如 bgp
    var lineType:String?
    /// 弹性公网IPID
    var elasticIpId:String?
    /// 公网IP
    var publicIp:String?
    /// 公网IPv6
    var publicIpv6:String?
    /// 计费信息
    var charge:Charge?



    public override init(){
            super.init()
    }

    enum InstanceCodingKeys: String, CodingKey {
        case instanceId
        case region
        case az
        case deviceType
        case name
        case descriptionValue = "description"
        case status
        case enableInternet
        case enableIpv6
        case bandwidth
        case imageType
        case osTypeId
        case osName
        case osType
        case osVersion
        case sysRaidTypeId
        case sysRaidType
        case dataRaidTypeId
        case dataRaidType
        case networkType
        case vpcId
        case vpcName
        case subnetId
        case subnetName
        case privateIp
        case lineType
        case elasticIpId
        case publicIp
        case publicIpv6
        case charge
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceCodingKeys.self)
        if decoderContainer.contains(.instanceId)
        {
            self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        }
        if decoderContainer.contains(.region)
        {
            self.region = try decoderContainer.decode(String?.self, forKey: .region)
        }
        if decoderContainer.contains(.az)
        {
            self.az = try decoderContainer.decode(String?.self, forKey: .az)
        }
        if decoderContainer.contains(.deviceType)
        {
            self.deviceType = try decoderContainer.decode(String?.self, forKey: .deviceType)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.enableInternet)
        {
            self.enableInternet = try decoderContainer.decode(String?.self, forKey: .enableInternet)
        }
        if decoderContainer.contains(.enableIpv6)
        {
            self.enableIpv6 = try decoderContainer.decode(String?.self, forKey: .enableIpv6)
        }
        if decoderContainer.contains(.bandwidth)
        {
            self.bandwidth = try decoderContainer.decode(Int?.self, forKey: .bandwidth)
        }
        if decoderContainer.contains(.imageType)
        {
            self.imageType = try decoderContainer.decode(String?.self, forKey: .imageType)
        }
        if decoderContainer.contains(.osTypeId)
        {
            self.osTypeId = try decoderContainer.decode(String?.self, forKey: .osTypeId)
        }
        if decoderContainer.contains(.osName)
        {
            self.osName = try decoderContainer.decode(String?.self, forKey: .osName)
        }
        if decoderContainer.contains(.osType)
        {
            self.osType = try decoderContainer.decode(String?.self, forKey: .osType)
        }
        if decoderContainer.contains(.osVersion)
        {
            self.osVersion = try decoderContainer.decode(String?.self, forKey: .osVersion)
        }
        if decoderContainer.contains(.sysRaidTypeId)
        {
            self.sysRaidTypeId = try decoderContainer.decode(String?.self, forKey: .sysRaidTypeId)
        }
        if decoderContainer.contains(.sysRaidType)
        {
            self.sysRaidType = try decoderContainer.decode(String?.self, forKey: .sysRaidType)
        }
        if decoderContainer.contains(.dataRaidTypeId)
        {
            self.dataRaidTypeId = try decoderContainer.decode(String?.self, forKey: .dataRaidTypeId)
        }
        if decoderContainer.contains(.dataRaidType)
        {
            self.dataRaidType = try decoderContainer.decode(String?.self, forKey: .dataRaidType)
        }
        if decoderContainer.contains(.networkType)
        {
            self.networkType = try decoderContainer.decode(String?.self, forKey: .networkType)
        }
        if decoderContainer.contains(.vpcId)
        {
            self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        }
        if decoderContainer.contains(.vpcName)
        {
            self.vpcName = try decoderContainer.decode(String?.self, forKey: .vpcName)
        }
        if decoderContainer.contains(.subnetId)
        {
            self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        }
        if decoderContainer.contains(.subnetName)
        {
            self.subnetName = try decoderContainer.decode(String?.self, forKey: .subnetName)
        }
        if decoderContainer.contains(.privateIp)
        {
            self.privateIp = try decoderContainer.decode(String?.self, forKey: .privateIp)
        }
        if decoderContainer.contains(.lineType)
        {
            self.lineType = try decoderContainer.decode(String?.self, forKey: .lineType)
        }
        if decoderContainer.contains(.elasticIpId)
        {
            self.elasticIpId = try decoderContainer.decode(String?.self, forKey: .elasticIpId)
        }
        if decoderContainer.contains(.publicIp)
        {
            self.publicIp = try decoderContainer.decode(String?.self, forKey: .publicIp)
        }
        if decoderContainer.contains(.publicIpv6)
        {
            self.publicIpv6 = try decoderContainer.decode(String?.self, forKey: .publicIpv6)
        }
        if decoderContainer.contains(.charge)
        {
            self.charge = try decoderContainer.decode(Charge?.self, forKey: .charge)
        }
    }
}
public extension Instance{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceCodingKeys.self)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(az, forKey: .az)
         try encoderContainer.encode(deviceType, forKey: .deviceType)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(enableInternet, forKey: .enableInternet)
         try encoderContainer.encode(enableIpv6, forKey: .enableIpv6)
         try encoderContainer.encode(bandwidth, forKey: .bandwidth)
         try encoderContainer.encode(imageType, forKey: .imageType)
         try encoderContainer.encode(osTypeId, forKey: .osTypeId)
         try encoderContainer.encode(osName, forKey: .osName)
         try encoderContainer.encode(osType, forKey: .osType)
         try encoderContainer.encode(osVersion, forKey: .osVersion)
         try encoderContainer.encode(sysRaidTypeId, forKey: .sysRaidTypeId)
         try encoderContainer.encode(sysRaidType, forKey: .sysRaidType)
         try encoderContainer.encode(dataRaidTypeId, forKey: .dataRaidTypeId)
         try encoderContainer.encode(dataRaidType, forKey: .dataRaidType)
         try encoderContainer.encode(networkType, forKey: .networkType)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(vpcName, forKey: .vpcName)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(subnetName, forKey: .subnetName)
         try encoderContainer.encode(privateIp, forKey: .privateIp)
         try encoderContainer.encode(lineType, forKey: .lineType)
         try encoderContainer.encode(elasticIpId, forKey: .elasticIpId)
         try encoderContainer.encode(publicIp, forKey: .publicIp)
         try encoderContainer.encode(publicIpv6, forKey: .publicIpv6)
         try encoderContainer.encode(charge, forKey: .charge)
    }
}
