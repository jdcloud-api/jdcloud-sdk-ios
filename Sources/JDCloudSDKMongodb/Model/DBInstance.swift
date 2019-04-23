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

///  dBInstance
@objc(DBInstance)
public class DBInstance:NSObject,Codable{
    /// 实例ID
    var instanceId:String?
    /// 实例名称
    var instanceName:String?
    /// 数据库类型
    var engine:String?
    /// 数据库版本
    var engineVersion:String?
    /// 实例规格代码
    var instanceClass:String?
    /// 存储空间
    var instanceStorageGB:Int?
    /// CPU核数
    var instanceCPU:Int?
    /// 内存，单位GB
    var instanceMemoryGB:Int?
    /// 可取区ID，依次为主、从、隐藏节点所在可用区
    var azId:[String?]?
    /// VPCID
    var vpcId:String?
    /// 子网ID
    var subnetId:String?
    /// 副本集名称
    var replicaSetName:String?
    /// 域名
    var instanceDomain:String?
    /// 默认库名
    var dBName:String?
    /// 默认用户名
    var accountName:String?
    /// 应用访问端口
    var instancePort:String?
    /// 实例状态.RUNNING：运行, ERROR：错误 ,BUILDING：创建中, DELETING：删除中, RESTORING：恢复中, RESIZING：变配中
    var instanceStatus:String?
    /// 自动备份保留时间
    var backupRetentionPeriod:Int?
    /// 创建时间
    var createTime:String?
    /// 自动备份时间，如：00:00-02:00，表示0点到2点进行数据库自动备份
    var preferredBackupWindow:String?
    /// 系统维护时间，如：00:00-02:00，表示0点到2点进行系统维护
    var preferredmaintenanceWindow:String?
    /// 计费信息
    var charge:Charge?
    /// 是否设置白名单，true：已设置，false：未设置
    var isSetSecurityIps:Bool?
    /// 标签
    var tags:[Tag?]?



    public override init(){
            super.init()
    }

    enum DBInstanceCodingKeys: String, CodingKey {
        case instanceId
        case instanceName
        case engine
        case engineVersion
        case instanceClass
        case instanceStorageGB
        case instanceCPU
        case instanceMemoryGB
        case azId
        case vpcId
        case subnetId
        case replicaSetName
        case instanceDomain
        case dBName
        case accountName
        case instancePort
        case instanceStatus
        case backupRetentionPeriod
        case createTime
        case preferredBackupWindow
        case preferredmaintenanceWindow
        case charge
        case isSetSecurityIps
        case tags
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DBInstanceCodingKeys.self)
        if decoderContainer.contains(.instanceId)
        {
            self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        }
        if decoderContainer.contains(.instanceName)
        {
            self.instanceName = try decoderContainer.decode(String?.self, forKey: .instanceName)
        }
        if decoderContainer.contains(.engine)
        {
            self.engine = try decoderContainer.decode(String?.self, forKey: .engine)
        }
        if decoderContainer.contains(.engineVersion)
        {
            self.engineVersion = try decoderContainer.decode(String?.self, forKey: .engineVersion)
        }
        if decoderContainer.contains(.instanceClass)
        {
            self.instanceClass = try decoderContainer.decode(String?.self, forKey: .instanceClass)
        }
        if decoderContainer.contains(.instanceStorageGB)
        {
            self.instanceStorageGB = try decoderContainer.decode(Int?.self, forKey: .instanceStorageGB)
        }
        if decoderContainer.contains(.instanceCPU)
        {
            self.instanceCPU = try decoderContainer.decode(Int?.self, forKey: .instanceCPU)
        }
        if decoderContainer.contains(.instanceMemoryGB)
        {
            self.instanceMemoryGB = try decoderContainer.decode(Int?.self, forKey: .instanceMemoryGB)
        }
        if decoderContainer.contains(.azId)
        {
            self.azId = try decoderContainer.decode([String?]?.self, forKey: .azId)
        }
        if decoderContainer.contains(.vpcId)
        {
            self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        }
        if decoderContainer.contains(.subnetId)
        {
            self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        }
        if decoderContainer.contains(.replicaSetName)
        {
            self.replicaSetName = try decoderContainer.decode(String?.self, forKey: .replicaSetName)
        }
        if decoderContainer.contains(.instanceDomain)
        {
            self.instanceDomain = try decoderContainer.decode(String?.self, forKey: .instanceDomain)
        }
        if decoderContainer.contains(.dBName)
        {
            self.dBName = try decoderContainer.decode(String?.self, forKey: .dBName)
        }
        if decoderContainer.contains(.accountName)
        {
            self.accountName = try decoderContainer.decode(String?.self, forKey: .accountName)
        }
        if decoderContainer.contains(.instancePort)
        {
            self.instancePort = try decoderContainer.decode(String?.self, forKey: .instancePort)
        }
        if decoderContainer.contains(.instanceStatus)
        {
            self.instanceStatus = try decoderContainer.decode(String?.self, forKey: .instanceStatus)
        }
        if decoderContainer.contains(.backupRetentionPeriod)
        {
            self.backupRetentionPeriod = try decoderContainer.decode(Int?.self, forKey: .backupRetentionPeriod)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.preferredBackupWindow)
        {
            self.preferredBackupWindow = try decoderContainer.decode(String?.self, forKey: .preferredBackupWindow)
        }
        if decoderContainer.contains(.preferredmaintenanceWindow)
        {
            self.preferredmaintenanceWindow = try decoderContainer.decode(String?.self, forKey: .preferredmaintenanceWindow)
        }
        if decoderContainer.contains(.charge)
        {
            self.charge = try decoderContainer.decode(Charge?.self, forKey: .charge)
        }
        if decoderContainer.contains(.isSetSecurityIps)
        {
            self.isSetSecurityIps = try decoderContainer.decode(Bool?.self, forKey: .isSetSecurityIps)
        }
        if decoderContainer.contains(.tags)
        {
            self.tags = try decoderContainer.decode([Tag?]?.self, forKey: .tags)
        }
    }
}
public extension DBInstance{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DBInstanceCodingKeys.self)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(instanceName, forKey: .instanceName)
         try encoderContainer.encode(engine, forKey: .engine)
         try encoderContainer.encode(engineVersion, forKey: .engineVersion)
         try encoderContainer.encode(instanceClass, forKey: .instanceClass)
         try encoderContainer.encode(instanceStorageGB, forKey: .instanceStorageGB)
         try encoderContainer.encode(instanceCPU, forKey: .instanceCPU)
         try encoderContainer.encode(instanceMemoryGB, forKey: .instanceMemoryGB)
         try encoderContainer.encode(azId, forKey: .azId)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(replicaSetName, forKey: .replicaSetName)
         try encoderContainer.encode(instanceDomain, forKey: .instanceDomain)
         try encoderContainer.encode(dBName, forKey: .dBName)
         try encoderContainer.encode(accountName, forKey: .accountName)
         try encoderContainer.encode(instancePort, forKey: .instancePort)
         try encoderContainer.encode(instanceStatus, forKey: .instanceStatus)
         try encoderContainer.encode(backupRetentionPeriod, forKey: .backupRetentionPeriod)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(preferredBackupWindow, forKey: .preferredBackupWindow)
         try encoderContainer.encode(preferredmaintenanceWindow, forKey: .preferredmaintenanceWindow)
         try encoderContainer.encode(charge, forKey: .charge)
         try encoderContainer.encode(isSetSecurityIps, forKey: .isSetSecurityIps)
         try encoderContainer.encode(tags, forKey: .tags)
    }
}
