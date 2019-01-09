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

///  快照信息详情
@objc(Snapshot)
public class Snapshot:NSObject,Codable{
    /// 云硬盘快照ID
    var snapshotId:String?
    /// 创建快照的云硬盘ID
    var diskId:String?
    /// 快照大小，单位为GiB
    var snapshotSizeGB:Int?
    /// 快照名称
    var name:String?
    /// 快照描述
    var descriptionValue:String?
    /// 快照状态，取值为 creating、available、in-use、deleting、error_create、error_delete 之一
    var status:String?
    /// 创建时间
    var createTime:String?



    public override init(){
            super.init()
    }

    enum SnapshotCodingKeys: String, CodingKey {
        case snapshotId
        case diskId
        case snapshotSizeGB
        case name
        case descriptionValue = "description"
        case status
        case createTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SnapshotCodingKeys.self)
        if decoderContainer.contains(.snapshotId)
        {
            self.snapshotId = try decoderContainer.decode(String?.self, forKey: .snapshotId)
        }
        if decoderContainer.contains(.diskId)
        {
            self.diskId = try decoderContainer.decode(String?.self, forKey: .diskId)
        }
        if decoderContainer.contains(.snapshotSizeGB)
        {
            self.snapshotSizeGB = try decoderContainer.decode(Int?.self, forKey: .snapshotSizeGB)
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
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
    }
}
public extension Snapshot{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SnapshotCodingKeys.self)
         try encoderContainer.encode(snapshotId, forKey: .snapshotId)
         try encoderContainer.encode(diskId, forKey: .diskId)
         try encoderContainer.encode(snapshotSizeGB, forKey: .snapshotSizeGB)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(createTime, forKey: .createTime)
    }
}
