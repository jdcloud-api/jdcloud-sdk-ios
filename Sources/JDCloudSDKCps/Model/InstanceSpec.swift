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

///  instanceSpec
@objc(InstanceSpec)
public class InstanceSpec:NSObject,Codable{
    /// 可用区, 如 cn-east-1
    /// Required:true
    var az:String
    /// 实例类型, 如 cps.c.normal
    /// Required:true
    var deviceType:String
    /// 主机名
    var hostname:String?
    /// 镜像类型, 取值范围：standard、standard_app
    /// Required:true
    var imageType:String
    /// 操作系统类型ID
    /// Required:true
    var osTypeId:String
    /// 系统盘RAID类型ID
    /// Required:true
    var sysRaidTypeId:String
    /// 数据盘RAID类型ID
    /// Required:true
    var dataRaidTypeId:String
    /// 子网编号
    var subnetId:String?
    /// 是否启用外网，取值范围：yes、no
    var enableInternet:String?
    /// 是否启用IPv6，取值范围：yes、no
    var enableIpv6:String?
    /// 网络类型，目前只支持basic
    /// Required:true
    var networkType:String
    /// 网络CIDR
    var cidr:String?
    /// 外网链路类型, 目前只支持bgp
    var lineType:String?
    /// 外网带宽, 范围[1,200] 单位Mbps
    var bandwidth:Int?
    /// 云物理服务器名称
    /// Required:true
    var name:String
    /// 云物理服务器描述
    var descriptionValue:String?
    /// 密码
    /// Required:true
    var password:String
    /// 购买数量
    /// Required:true
    var count:Int
    /// 计费配置
    /// Required:true
    var charge:ChargeSpec
    /// Softwares
    var softwares:[Software?]?



    public  init(az:String,deviceType:String,imageType:String,osTypeId:String,sysRaidTypeId:String,dataRaidTypeId:String,networkType:String,name:String,password:String,count:Int,charge:ChargeSpec){
             self.az = az
             self.deviceType = deviceType
             self.imageType = imageType
             self.osTypeId = osTypeId
             self.sysRaidTypeId = sysRaidTypeId
             self.dataRaidTypeId = dataRaidTypeId
             self.networkType = networkType
             self.name = name
             self.password = password
             self.count = count
             self.charge = charge
    }

    enum InstanceSpecCodingKeys: String, CodingKey {
        case az
        case deviceType
        case hostname
        case imageType
        case osTypeId
        case sysRaidTypeId
        case dataRaidTypeId
        case subnetId
        case enableInternet
        case enableIpv6
        case networkType
        case cidr
        case lineType
        case bandwidth
        case name
        case descriptionValue = "description"
        case password
        case count
        case charge
        case softwares
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceSpecCodingKeys.self)
        self.az = try decoderContainer.decode(String.self, forKey: .az)
        self.deviceType = try decoderContainer.decode(String.self, forKey: .deviceType)
        if decoderContainer.contains(.hostname)
        {
            self.hostname = try decoderContainer.decode(String?.self, forKey: .hostname)
        }
        self.imageType = try decoderContainer.decode(String.self, forKey: .imageType)
        self.osTypeId = try decoderContainer.decode(String.self, forKey: .osTypeId)
        self.sysRaidTypeId = try decoderContainer.decode(String.self, forKey: .sysRaidTypeId)
        self.dataRaidTypeId = try decoderContainer.decode(String.self, forKey: .dataRaidTypeId)
        if decoderContainer.contains(.subnetId)
        {
            self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        }
        if decoderContainer.contains(.enableInternet)
        {
            self.enableInternet = try decoderContainer.decode(String?.self, forKey: .enableInternet)
        }
        if decoderContainer.contains(.enableIpv6)
        {
            self.enableIpv6 = try decoderContainer.decode(String?.self, forKey: .enableIpv6)
        }
        self.networkType = try decoderContainer.decode(String.self, forKey: .networkType)
        if decoderContainer.contains(.cidr)
        {
            self.cidr = try decoderContainer.decode(String?.self, forKey: .cidr)
        }
        if decoderContainer.contains(.lineType)
        {
            self.lineType = try decoderContainer.decode(String?.self, forKey: .lineType)
        }
        if decoderContainer.contains(.bandwidth)
        {
            self.bandwidth = try decoderContainer.decode(Int?.self, forKey: .bandwidth)
        }
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        self.password = try decoderContainer.decode(String.self, forKey: .password)
        self.count = try decoderContainer.decode(Int.self, forKey: .count)
        self.charge = try decoderContainer.decode(ChargeSpec.self, forKey: .charge)
        if decoderContainer.contains(.softwares)
        {
            self.softwares = try decoderContainer.decode([Software?]?.self, forKey: .softwares)
        }
    }
}
public extension InstanceSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceSpecCodingKeys.self)
         try encoderContainer.encode(az, forKey: .az)
         try encoderContainer.encode(deviceType, forKey: .deviceType)
         try encoderContainer.encode(hostname, forKey: .hostname)
         try encoderContainer.encode(imageType, forKey: .imageType)
         try encoderContainer.encode(osTypeId, forKey: .osTypeId)
         try encoderContainer.encode(sysRaidTypeId, forKey: .sysRaidTypeId)
         try encoderContainer.encode(dataRaidTypeId, forKey: .dataRaidTypeId)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(enableInternet, forKey: .enableInternet)
         try encoderContainer.encode(enableIpv6, forKey: .enableIpv6)
         try encoderContainer.encode(networkType, forKey: .networkType)
         try encoderContainer.encode(cidr, forKey: .cidr)
         try encoderContainer.encode(lineType, forKey: .lineType)
         try encoderContainer.encode(bandwidth, forKey: .bandwidth)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(password, forKey: .password)
         try encoderContainer.encode(count, forKey: .count)
         try encoderContainer.encode(charge, forKey: .charge)
         try encoderContainer.encode(softwares, forKey: .softwares)
    }
}
