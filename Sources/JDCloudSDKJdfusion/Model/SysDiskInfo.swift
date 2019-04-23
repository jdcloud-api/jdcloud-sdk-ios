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

///  系统盘配置
@objc(SysDiskInfo)
public class SysDiskInfo:NSObject,Codable{
    /// 硬盘大小
    var diskSize:Int32?
    /// 磁盘介质分类，目前为预留，可以为空
    var diskMediumType:String?
    /// 磁盘名称
    var diskName:String?
    /// 磁盘是否随主机一起删除
    var autoDelete:String?
    /// 磁盘状态
    var status:String?



    public override init(){
            super.init()
    }

    enum SysDiskInfoCodingKeys: String, CodingKey {
        case diskSize
        case diskMediumType
        case diskName
        case autoDelete
        case status
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SysDiskInfoCodingKeys.self)
        if decoderContainer.contains(.diskSize)
        {
            self.diskSize = try decoderContainer.decode(Int32?.self, forKey: .diskSize)
        }
        if decoderContainer.contains(.diskMediumType)
        {
            self.diskMediumType = try decoderContainer.decode(String?.self, forKey: .diskMediumType)
        }
        if decoderContainer.contains(.diskName)
        {
            self.diskName = try decoderContainer.decode(String?.self, forKey: .diskName)
        }
        if decoderContainer.contains(.autoDelete)
        {
            self.autoDelete = try decoderContainer.decode(String?.self, forKey: .autoDelete)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
    }
}
public extension SysDiskInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SysDiskInfoCodingKeys.self)
         try encoderContainer.encode(diskSize, forKey: .diskSize)
         try encoderContainer.encode(diskMediumType, forKey: .diskMediumType)
         try encoderContainer.encode(diskName, forKey: .diskName)
         try encoderContainer.encode(autoDelete, forKey: .autoDelete)
         try encoderContainer.encode(status, forKey: .status)
    }
}
