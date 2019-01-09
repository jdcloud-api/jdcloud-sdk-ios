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

///  backupSynchronicity
@objc(BackupSynchronicity)
public class BackupSynchronicity:NSObject,Codable{
    /// 跨地域备份同步服务ID
    var serviceId:String?
    /// RDS 实例ID
    var instanceId:String?
    /// 跨地域备份同步服务状态，正常，running；错误，error
    var serviceStatus:String?
    /// 源实例所在地域
    var srcRegion:String?
    /// 备份同步的目标地域
    var destRegion:String?
    /// 数据库类型
    var engine:String?
    /// 数据库版本
    var engineVersion:String?
    /// 创建时间
    var createTime:String?
    /// 跨地域备份的最新数据时间点
    var newestDataTime:String?



    public override init(){
            super.init()
    }

    enum BackupSynchronicityCodingKeys: String, CodingKey {
        case serviceId
        case instanceId
        case serviceStatus
        case srcRegion
        case destRegion
        case engine
        case engineVersion
        case createTime
        case newestDataTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BackupSynchronicityCodingKeys.self)
        if decoderContainer.contains(.serviceId)
        {
            self.serviceId = try decoderContainer.decode(String?.self, forKey: .serviceId)
        }
        if decoderContainer.contains(.instanceId)
        {
            self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        }
        if decoderContainer.contains(.serviceStatus)
        {
            self.serviceStatus = try decoderContainer.decode(String?.self, forKey: .serviceStatus)
        }
        if decoderContainer.contains(.srcRegion)
        {
            self.srcRegion = try decoderContainer.decode(String?.self, forKey: .srcRegion)
        }
        if decoderContainer.contains(.destRegion)
        {
            self.destRegion = try decoderContainer.decode(String?.self, forKey: .destRegion)
        }
        if decoderContainer.contains(.engine)
        {
            self.engine = try decoderContainer.decode(String?.self, forKey: .engine)
        }
        if decoderContainer.contains(.engineVersion)
        {
            self.engineVersion = try decoderContainer.decode(String?.self, forKey: .engineVersion)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.newestDataTime)
        {
            self.newestDataTime = try decoderContainer.decode(String?.self, forKey: .newestDataTime)
        }
    }
}
public extension BackupSynchronicity{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BackupSynchronicityCodingKeys.self)
         try encoderContainer.encode(serviceId, forKey: .serviceId)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(serviceStatus, forKey: .serviceStatus)
         try encoderContainer.encode(srcRegion, forKey: .srcRegion)
         try encoderContainer.encode(destRegion, forKey: .destRegion)
         try encoderContainer.encode(engine, forKey: .engine)
         try encoderContainer.encode(engineVersion, forKey: .engineVersion)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(newestDataTime, forKey: .newestDataTime)
    }
}
