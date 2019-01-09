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

///  image
@objc(Image)
public class Image:NSObject,Codable{
    /// 镜像ID
    var imageId:String?
    /// 镜像名称
    var name:String?
    /// 镜像的操作系统发行版。取值：Ubuntu,CentOS,Windows Server
    var platform:String?
    /// 镜像的操作系统版本。
    var osVersion:String?
    /// 镜像架构。取值：i386,x86_64
    var architecture:String?
    /// 镜像系统盘大小
    var systemDiskSizeGB:Int?
    /// 镜像来源。取值：jcloud：官方镜像；marketplace：镜像市场镜像；self：用户自己的镜像；shared：其他用户分享的镜像
    var imageSource:String?
    /// 镜像的操作系统类型。取值：windows,linux
    var osType:String?
    /// &lt;a href&#x3D;&quot;http://docs.jdcloud.com/virtual-machines/api/image_status&quot;&gt;参考镜像状态&lt;/a&gt;
    var status:String?
    /// 创建时间
    var createTime:String?
    /// 镜像文件实际大小
    var sizeMB:Int?
    /// 镜像描述
    var desc:String?
    /// 镜像系统盘配置
    var systemDisk:InstanceDiskAttachment?
    /// 镜像数据盘映射信息
    var dataDisks:[InstanceDiskAttachment?]?
    /// 创建云盘系统盘所使用的云硬盘快照ID。系统盘类型为本地盘的镜像，此参数为空。
    var snapshotId:String?
    /// 镜像支持的系统盘类型。取值：localDisk：本地盘系统盘；cloudDisk：云盘系统盘。
    var rootDeviceType:String?
    /// 镜像复制和转换时的进度，仅显示数值，单位为百分比
    var progress:String?



    public override init(){
            super.init()
    }

    enum ImageCodingKeys: String, CodingKey {
        case imageId
        case name
        case platform
        case osVersion
        case architecture
        case systemDiskSizeGB
        case imageSource
        case osType
        case status
        case createTime
        case sizeMB
        case desc
        case systemDisk
        case dataDisks
        case snapshotId
        case rootDeviceType
        case progress
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ImageCodingKeys.self)
        if decoderContainer.contains(.imageId)
        {
            self.imageId = try decoderContainer.decode(String?.self, forKey: .imageId)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.platform)
        {
            self.platform = try decoderContainer.decode(String?.self, forKey: .platform)
        }
        if decoderContainer.contains(.osVersion)
        {
            self.osVersion = try decoderContainer.decode(String?.self, forKey: .osVersion)
        }
        if decoderContainer.contains(.architecture)
        {
            self.architecture = try decoderContainer.decode(String?.self, forKey: .architecture)
        }
        if decoderContainer.contains(.systemDiskSizeGB)
        {
            self.systemDiskSizeGB = try decoderContainer.decode(Int?.self, forKey: .systemDiskSizeGB)
        }
        if decoderContainer.contains(.imageSource)
        {
            self.imageSource = try decoderContainer.decode(String?.self, forKey: .imageSource)
        }
        if decoderContainer.contains(.osType)
        {
            self.osType = try decoderContainer.decode(String?.self, forKey: .osType)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.sizeMB)
        {
            self.sizeMB = try decoderContainer.decode(Int?.self, forKey: .sizeMB)
        }
        if decoderContainer.contains(.desc)
        {
            self.desc = try decoderContainer.decode(String?.self, forKey: .desc)
        }
        if decoderContainer.contains(.systemDisk)
        {
            self.systemDisk = try decoderContainer.decode(InstanceDiskAttachment?.self, forKey: .systemDisk)
        }
        if decoderContainer.contains(.dataDisks)
        {
            self.dataDisks = try decoderContainer.decode([InstanceDiskAttachment?]?.self, forKey: .dataDisks)
        }
        if decoderContainer.contains(.snapshotId)
        {
            self.snapshotId = try decoderContainer.decode(String?.self, forKey: .snapshotId)
        }
        if decoderContainer.contains(.rootDeviceType)
        {
            self.rootDeviceType = try decoderContainer.decode(String?.self, forKey: .rootDeviceType)
        }
        if decoderContainer.contains(.progress)
        {
            self.progress = try decoderContainer.decode(String?.self, forKey: .progress)
        }
    }
}
public extension Image{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ImageCodingKeys.self)
         try encoderContainer.encode(imageId, forKey: .imageId)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(platform, forKey: .platform)
         try encoderContainer.encode(osVersion, forKey: .osVersion)
         try encoderContainer.encode(architecture, forKey: .architecture)
         try encoderContainer.encode(systemDiskSizeGB, forKey: .systemDiskSizeGB)
         try encoderContainer.encode(imageSource, forKey: .imageSource)
         try encoderContainer.encode(osType, forKey: .osType)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(sizeMB, forKey: .sizeMB)
         try encoderContainer.encode(desc, forKey: .desc)
         try encoderContainer.encode(systemDisk, forKey: .systemDisk)
         try encoderContainer.encode(dataDisks, forKey: .dataDisks)
         try encoderContainer.encode(snapshotId, forKey: .snapshotId)
         try encoderContainer.encode(rootDeviceType, forKey: .rootDeviceType)
         try encoderContainer.encode(progress, forKey: .progress)
    }
}
