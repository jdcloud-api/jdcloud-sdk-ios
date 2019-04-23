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

///  instanceTemplateData
@objc(InstanceTemplateData)
public class InstanceTemplateData:NSObject,Codable{
    /// 实例规格
    var instanceType:String?
    /// 主网卡所属VPC的ID
    var vpcId:String?
    /// 镜像ID
    var imageId:String?
    /// 启动模板中是否包含自定义密码，true：包含密码，false：不包含密码
    var includePassword:Bool?
    /// 系统盘信息
    var systemDisk:InstanceTemplateDiskAttachment?
    /// 数据盘信息，本地盘(local类型)做系统盘的云主机可挂载8块数据盘，云硬盘(cloud类型)做系统盘的云主机可挂载7块数据盘。
    var dataDisks:[InstanceTemplateDiskAttachment?]?
    /// 主网卡信息
    var primaryNetworkInterface:InstanceTemplateNetworkInterfaceAttachmentSpec?
    /// 主网卡主IP关联的弹性IP规格
    var elasticIp:InstanceTemplateElasticIp?
    /// 密钥对名称；当前只支持一个
    var keyNames:[String?]?



    public override init(){
            super.init()
    }

    enum InstanceTemplateDataCodingKeys: String, CodingKey {
        case instanceType
        case vpcId
        case imageId
        case includePassword
        case systemDisk
        case dataDisks
        case primaryNetworkInterface
        case elasticIp
        case keyNames
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceTemplateDataCodingKeys.self)
        if decoderContainer.contains(.instanceType)
        {
            self.instanceType = try decoderContainer.decode(String?.self, forKey: .instanceType)
        }
        if decoderContainer.contains(.vpcId)
        {
            self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        }
        if decoderContainer.contains(.imageId)
        {
            self.imageId = try decoderContainer.decode(String?.self, forKey: .imageId)
        }
        if decoderContainer.contains(.includePassword)
        {
            self.includePassword = try decoderContainer.decode(Bool?.self, forKey: .includePassword)
        }
        if decoderContainer.contains(.systemDisk)
        {
            self.systemDisk = try decoderContainer.decode(InstanceTemplateDiskAttachment?.self, forKey: .systemDisk)
        }
        if decoderContainer.contains(.dataDisks)
        {
            self.dataDisks = try decoderContainer.decode([InstanceTemplateDiskAttachment?]?.self, forKey: .dataDisks)
        }
        if decoderContainer.contains(.primaryNetworkInterface)
        {
            self.primaryNetworkInterface = try decoderContainer.decode(InstanceTemplateNetworkInterfaceAttachmentSpec?.self, forKey: .primaryNetworkInterface)
        }
        if decoderContainer.contains(.elasticIp)
        {
            self.elasticIp = try decoderContainer.decode(InstanceTemplateElasticIp?.self, forKey: .elasticIp)
        }
        if decoderContainer.contains(.keyNames)
        {
            self.keyNames = try decoderContainer.decode([String?]?.self, forKey: .keyNames)
        }
    }
}
public extension InstanceTemplateData{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceTemplateDataCodingKeys.self)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(imageId, forKey: .imageId)
         try encoderContainer.encode(includePassword, forKey: .includePassword)
         try encoderContainer.encode(systemDisk, forKey: .systemDisk)
         try encoderContainer.encode(dataDisks, forKey: .dataDisks)
         try encoderContainer.encode(primaryNetworkInterface, forKey: .primaryNetworkInterface)
         try encoderContainer.encode(elasticIp, forKey: .elasticIp)
         try encoderContainer.encode(keyNames, forKey: .keyNames)
    }
}
