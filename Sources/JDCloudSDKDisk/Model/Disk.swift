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

///  云硬盘信息详情
@objc(Disk)
public class Disk:NSObject,Codable{
    /// 云硬盘ID
    var diskId:String?
    /// 云硬盘所属AZ
    var az:String?
    /// 云硬盘名称
    var name:String?
    /// 云硬盘描述
    var descriptionValue:String?
    /// 磁盘类型，取值为 ssd 或 premium-hdd
    var diskType:String?
    /// 磁盘大小，单位为 GiB
    var diskSizeGB:Int?
    /// 云硬盘状态，取值为 creating、available、in-use、extending、restoring、deleting、deleted、error_create、error_delete、error_restore、error_extend 之一
    var status:String?
    /// 挂载信息
    var attachments:[DiskAttachment?]?
    /// 创建该云硬盘的快照ID
    var snapshotId:String?
    /// 创建云硬盘时间
    var createTime:String?
    /// 云硬盘计费配置信息
    var charge:Charge?
    /// Tag信息
    var tags:[Tag?]?



    public override init(){
            super.init()
    }

    enum DiskCodingKeys: String, CodingKey {
        case diskId
        case az
        case name
        case descriptionValue = "description"
        case diskType
        case diskSizeGB
        case status
        case attachments
        case snapshotId
        case createTime
        case charge
        case tags
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DiskCodingKeys.self)
        if decoderContainer.contains(.diskId)
        {
            self.diskId = try decoderContainer.decode(String?.self, forKey: .diskId)
        }
        if decoderContainer.contains(.az)
        {
            self.az = try decoderContainer.decode(String?.self, forKey: .az)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.diskType)
        {
            self.diskType = try decoderContainer.decode(String?.self, forKey: .diskType)
        }
        if decoderContainer.contains(.diskSizeGB)
        {
            self.diskSizeGB = try decoderContainer.decode(Int?.self, forKey: .diskSizeGB)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.attachments)
        {
            self.attachments = try decoderContainer.decode([DiskAttachment?]?.self, forKey: .attachments)
        }
        if decoderContainer.contains(.snapshotId)
        {
            self.snapshotId = try decoderContainer.decode(String?.self, forKey: .snapshotId)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.charge)
        {
            self.charge = try decoderContainer.decode(Charge?.self, forKey: .charge)
        }
        if decoderContainer.contains(.tags)
        {
            self.tags = try decoderContainer.decode([Tag?]?.self, forKey: .tags)
        }
    }
}
public extension Disk{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DiskCodingKeys.self)
         try encoderContainer.encode(diskId, forKey: .diskId)
         try encoderContainer.encode(az, forKey: .az)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(diskType, forKey: .diskType)
         try encoderContainer.encode(diskSizeGB, forKey: .diskSizeGB)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(attachments, forKey: .attachments)
         try encoderContainer.encode(snapshotId, forKey: .snapshotId)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(charge, forKey: .charge)
         try encoderContainer.encode(tags, forKey: .tags)
    }
}
