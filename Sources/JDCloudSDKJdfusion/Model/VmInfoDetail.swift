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

///  vmInfoDetail
@objc(VmInfoDetail)
public class VmInfoDetail:NSObject,Codable{
    /// 资源ID，如果为空，则执行创建操作，否则执行修改操作
    var id:String?
    /// 可用区,根据各云平台规范填写
    var region:String?
    /// 云主机所属的可用区
    var az:String?
    /// 云主机名称
    var name:String?
    /// 云主机
    var hostName:String?
    /// ImageType
    var imageType:ImageType?
    /// InstanceType
    var instanceType:InstanceType?
    /// 云主机描述
    var descriptionValue:String?
    /// 子网ID
    var subnetId:String?
    /// Tags
    var tags:[Tag?]?
    /// 所属云提供商ID
    var cloudID:String?
    /// 密钥对名称,jd当前只支持传入一个
    var keyNames:[String?]?
    /// 主网卡主IP绑定弹性IP的地址
    var elasticIpAddress:String?
    /// 私有ip地址
    var privateIpAddress:String?
    /// 云主机状态
    var status:String?
    /// 创建时间
    var createdTime:String?
    /// SysDiskInfo
    var sysDiskInfo:SysDiskInfo?
    /// 数据盘配置信息
    var dataDiskAttachments:[DataDiskAttachment?]?
    /// PrimaryNetworkInterface
    var primaryNetworkInterface:NetAttachment?
    /// 辅助网卡配置
    var secondaryNetworkInterfaces:[NetAttachment?]?
    /// 扩展信息
    var metadata:String?



    public override init(){
            super.init()
    }

    enum VmInfoDetailCodingKeys: String, CodingKey {
        case id
        case region
        case az
        case name
        case hostName
        case imageType
        case instanceType
        case descriptionValue = "description"
        case subnetId
        case tags
        case cloudID
        case keyNames
        case elasticIpAddress
        case privateIpAddress
        case status
        case createdTime
        case sysDiskInfo
        case dataDiskAttachments
        case primaryNetworkInterface
        case secondaryNetworkInterfaces
        case metadata
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: VmInfoDetailCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
        if decoderContainer.contains(.region)
        {
            self.region = try decoderContainer.decode(String?.self, forKey: .region)
        }
        if decoderContainer.contains(.az)
        {
            self.az = try decoderContainer.decode(String?.self, forKey: .az)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.hostName)
        {
            self.hostName = try decoderContainer.decode(String?.self, forKey: .hostName)
        }
        if decoderContainer.contains(.imageType)
        {
            self.imageType = try decoderContainer.decode(ImageType?.self, forKey: .imageType)
        }
        if decoderContainer.contains(.instanceType)
        {
            self.instanceType = try decoderContainer.decode(InstanceType?.self, forKey: .instanceType)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.subnetId)
        {
            self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        }
        if decoderContainer.contains(.tags)
        {
            self.tags = try decoderContainer.decode([Tag?]?.self, forKey: .tags)
        }
        if decoderContainer.contains(.cloudID)
        {
            self.cloudID = try decoderContainer.decode(String?.self, forKey: .cloudID)
        }
        if decoderContainer.contains(.keyNames)
        {
            self.keyNames = try decoderContainer.decode([String?]?.self, forKey: .keyNames)
        }
        if decoderContainer.contains(.elasticIpAddress)
        {
            self.elasticIpAddress = try decoderContainer.decode(String?.self, forKey: .elasticIpAddress)
        }
        if decoderContainer.contains(.privateIpAddress)
        {
            self.privateIpAddress = try decoderContainer.decode(String?.self, forKey: .privateIpAddress)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.createdTime)
        {
            self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        }
        if decoderContainer.contains(.sysDiskInfo)
        {
            self.sysDiskInfo = try decoderContainer.decode(SysDiskInfo?.self, forKey: .sysDiskInfo)
        }
        if decoderContainer.contains(.dataDiskAttachments)
        {
            self.dataDiskAttachments = try decoderContainer.decode([DataDiskAttachment?]?.self, forKey: .dataDiskAttachments)
        }
        if decoderContainer.contains(.primaryNetworkInterface)
        {
            self.primaryNetworkInterface = try decoderContainer.decode(NetAttachment?.self, forKey: .primaryNetworkInterface)
        }
        if decoderContainer.contains(.secondaryNetworkInterfaces)
        {
            self.secondaryNetworkInterfaces = try decoderContainer.decode([NetAttachment?]?.self, forKey: .secondaryNetworkInterfaces)
        }
        if decoderContainer.contains(.metadata)
        {
            self.metadata = try decoderContainer.decode(String?.self, forKey: .metadata)
        }
    }
}
public extension VmInfoDetail{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: VmInfoDetailCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(az, forKey: .az)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(hostName, forKey: .hostName)
         try encoderContainer.encode(imageType, forKey: .imageType)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(tags, forKey: .tags)
         try encoderContainer.encode(cloudID, forKey: .cloudID)
         try encoderContainer.encode(keyNames, forKey: .keyNames)
         try encoderContainer.encode(elasticIpAddress, forKey: .elasticIpAddress)
         try encoderContainer.encode(privateIpAddress, forKey: .privateIpAddress)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
         try encoderContainer.encode(sysDiskInfo, forKey: .sysDiskInfo)
         try encoderContainer.encode(dataDiskAttachments, forKey: .dataDiskAttachments)
         try encoderContainer.encode(primaryNetworkInterface, forKey: .primaryNetworkInterface)
         try encoderContainer.encode(secondaryNetworkInterfaces, forKey: .secondaryNetworkInterfaces)
         try encoderContainer.encode(metadata, forKey: .metadata)
    }
}