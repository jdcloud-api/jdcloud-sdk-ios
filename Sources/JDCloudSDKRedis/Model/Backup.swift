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

///  backup
@objc(Backup)
public class Backup:NSObject,Codable{
    /// 备份操作ID
    /// Required:true
    var baseId:String
    /// 备份文件的名称
    /// Required:true
    var backupFileName:String
    /// 备份实例ID
    /// Required:true
    var spaceId:String
    /// 备份开始时间
    /// Required:true
    var backupStartTime:String
    /// 备份结束时间
    /// Required:true
    var backupEndTime:String
    /// 备份类型，1表示手动备份，0表示自动备份
    /// Required:true
    var backupType:Int
    /// 备份文件大小，如果实例是集群版，则表示每个分片备份文件大小的总和
    /// Required:true
    var backupSize:Int
    /// 备份任务状态状态，1表示失败，2表示成功
    /// Required:true
    var backupStatus:Int
    /// 备份文件下载的URL地址，集群版有多个URL地址
    /// Required:true
    var backupDownloadURL:String



    public  init(baseId:String,backupFileName:String,spaceId:String,backupStartTime:String,backupEndTime:String,backupType:Int,backupSize:Int,backupStatus:Int,backupDownloadURL:String){
             self.baseId = baseId
             self.backupFileName = backupFileName
             self.spaceId = spaceId
             self.backupStartTime = backupStartTime
             self.backupEndTime = backupEndTime
             self.backupType = backupType
             self.backupSize = backupSize
             self.backupStatus = backupStatus
             self.backupDownloadURL = backupDownloadURL
    }

    enum BackupCodingKeys: String, CodingKey {
        case baseId
        case backupFileName
        case spaceId
        case backupStartTime
        case backupEndTime
        case backupType
        case backupSize
        case backupStatus
        case backupDownloadURL
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BackupCodingKeys.self)
        self.baseId = try decoderContainer.decode(String.self, forKey: .baseId)
        self.backupFileName = try decoderContainer.decode(String.self, forKey: .backupFileName)
        self.spaceId = try decoderContainer.decode(String.self, forKey: .spaceId)
        self.backupStartTime = try decoderContainer.decode(String.self, forKey: .backupStartTime)
        self.backupEndTime = try decoderContainer.decode(String.self, forKey: .backupEndTime)
        self.backupType = try decoderContainer.decode(Int.self, forKey: .backupType)
        self.backupSize = try decoderContainer.decode(Int.self, forKey: .backupSize)
        self.backupStatus = try decoderContainer.decode(Int.self, forKey: .backupStatus)
        self.backupDownloadURL = try decoderContainer.decode(String.self, forKey: .backupDownloadURL)
    }
}
public extension Backup{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BackupCodingKeys.self)
         try encoderContainer.encode(baseId, forKey: .baseId)
         try encoderContainer.encode(backupFileName, forKey: .backupFileName)
         try encoderContainer.encode(spaceId, forKey: .spaceId)
         try encoderContainer.encode(backupStartTime, forKey: .backupStartTime)
         try encoderContainer.encode(backupEndTime, forKey: .backupEndTime)
         try encoderContainer.encode(backupType, forKey: .backupType)
         try encoderContainer.encode(backupSize, forKey: .backupSize)
         try encoderContainer.encode(backupStatus, forKey: .backupStatus)
         try encoderContainer.encode(backupDownloadURL, forKey: .backupDownloadURL)
    }
}