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

///  挂载的Volume
@objc(VolumeMount)
public class VolumeMount:NSObject,Codable{
    /// 环境变量名称
    var category:String?
    /// 自动删除，删除容器时自动删除此volume
    var autoDelete:Bool?
    /// 容器内的挂载目录
    var mountPath:String?
    /// 只读，默认false；只针对data volume有效，root volume为false
    var readOnly:Bool?
    /// 云硬盘规格
    var cloudDisk:InstanceCloudDisk?
    /// 指定volume文件系统类型，目前支持[xfs, ext4]
    var fsType:String?



    public override init(){
            super.init()
    }

    enum VolumeMountCodingKeys: String, CodingKey {
        case category
        case autoDelete
        case mountPath
        case readOnly
        case cloudDisk
        case fsType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: VolumeMountCodingKeys.self)
        if decoderContainer.contains(.category)
        {
            self.category = try decoderContainer.decode(String?.self, forKey: .category)
        }
        if decoderContainer.contains(.autoDelete)
        {
            self.autoDelete = try decoderContainer.decode(Bool?.self, forKey: .autoDelete)
        }
        if decoderContainer.contains(.mountPath)
        {
            self.mountPath = try decoderContainer.decode(String?.self, forKey: .mountPath)
        }
        if decoderContainer.contains(.readOnly)
        {
            self.readOnly = try decoderContainer.decode(Bool?.self, forKey: .readOnly)
        }
        if decoderContainer.contains(.cloudDisk)
        {
            self.cloudDisk = try decoderContainer.decode(InstanceCloudDisk?.self, forKey: .cloudDisk)
        }
        if decoderContainer.contains(.fsType)
        {
            self.fsType = try decoderContainer.decode(String?.self, forKey: .fsType)
        }
    }
}
public extension VolumeMount{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: VolumeMountCodingKeys.self)
         try encoderContainer.encode(category, forKey: .category)
         try encoderContainer.encode(autoDelete, forKey: .autoDelete)
         try encoderContainer.encode(mountPath, forKey: .mountPath)
         try encoderContainer.encode(readOnly, forKey: .readOnly)
         try encoderContainer.encode(cloudDisk, forKey: .cloudDisk)
         try encoderContainer.encode(fsType, forKey: .fsType)
    }
}