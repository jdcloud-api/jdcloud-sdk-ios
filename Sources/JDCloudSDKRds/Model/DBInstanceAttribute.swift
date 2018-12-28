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

///  dBInstanceAttribute
@objc(DBInstanceAttribute)
public class DBInstanceAttribute:NSObject,Codable{
    /// 实例ID
    var instanceId:String?
    /// 实例名称，具体规则可参见帮助中心文档:[名称及密码限制](../../../documentation/Cloud-Database-and-Cache/RDS/Introduction/Restrictions/SQLServer-Restrictions.md)
    var instanceName:String?
    /// 实例类型，例如主实例，只读实例等，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var instanceType:String?
    /// 实例引擎类型，如MySQL或SQL Server等，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var engine:String?
    /// 实例引擎版本，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var engineVersion:String?
    /// 实例规格代码
    var instanceClass:String?
    /// 磁盘，单位GB
    var instanceStorageGB:Int?
    /// CPU核数
    var instanceCPU:Int?
    /// 内存大小，单位MB
    var instanceMemoryMB:Int?
    /// 地域ID，参见[地域及可用区对照表](../Enum-Definitions/Regions-AZ.md)
    var regionId:String?
    /// 可用区ID，第一个为主实例在的可用区，参见[地域及可用区对照表](../Enum-Definitions/Regions-AZ.md)
    var azId:[String?]?
    /// VPC的ID
    var vpcId:String?
    /// 子网的ID
    var subnetId:String?
    /// 实例公网域名
    var internalDomainName:String?
    /// 实例内网域名
    var publicDomainName:String?
    /// 应用访问端口
    var instancePort:String?
    /// 访问模式，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var connectionMode:String?
    /// 审计状态，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var auditStatus:String?
    /// 实例状态，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var instanceStatus:String?
    /// 实例创建时间
    var createTime:String?
    /// 计费配置
    var charge:Charge?
    /// 高可用集群中主节点的信息&lt;br&gt;- 仅支持SQL Server
    var primaryNode:DBInstanceNode?
    /// 高可用集群中从节点的信息&lt;br&gt;- 仅支持SQL Server
    var secondaryNode:DBInstanceNode?
    /// 标签信息
    var tags:Tag?



    public override init(){
            super.init()
    }

    enum DBInstanceAttributeCodingKeys: String, CodingKey {
        case instanceId
        case instanceName
        case instanceType
        case engine
        case engineVersion
        case instanceClass
        case instanceStorageGB
        case instanceCPU
        case instanceMemoryMB
        case regionId
        case azId
        case vpcId
        case subnetId
        case internalDomainName
        case publicDomainName
        case instancePort
        case connectionMode
        case auditStatus
        case instanceStatus
        case createTime
        case charge
        case primaryNode
        case secondaryNode
        case tags
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DBInstanceAttributeCodingKeys.self)
        self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        self.instanceName = try decoderContainer.decode(String?.self, forKey: .instanceName)
        self.instanceType = try decoderContainer.decode(String?.self, forKey: .instanceType)
        self.engine = try decoderContainer.decode(String?.self, forKey: .engine)
        self.engineVersion = try decoderContainer.decode(String?.self, forKey: .engineVersion)
        self.instanceClass = try decoderContainer.decode(String?.self, forKey: .instanceClass)
        self.instanceStorageGB = try decoderContainer.decode(Int?.self, forKey: .instanceStorageGB)
        self.instanceCPU = try decoderContainer.decode(Int?.self, forKey: .instanceCPU)
        self.instanceMemoryMB = try decoderContainer.decode(Int?.self, forKey: .instanceMemoryMB)
        self.regionId = try decoderContainer.decode(String?.self, forKey: .regionId)
        self.azId = try decoderContainer.decode([String?]?.self, forKey: .azId)
        self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        self.internalDomainName = try decoderContainer.decode(String?.self, forKey: .internalDomainName)
        self.publicDomainName = try decoderContainer.decode(String?.self, forKey: .publicDomainName)
        self.instancePort = try decoderContainer.decode(String?.self, forKey: .instancePort)
        self.connectionMode = try decoderContainer.decode(String?.self, forKey: .connectionMode)
        self.auditStatus = try decoderContainer.decode(String?.self, forKey: .auditStatus)
        self.instanceStatus = try decoderContainer.decode(String?.self, forKey: .instanceStatus)
        self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        self.charge = try decoderContainer.decode(Charge?.self, forKey: .charge)
        self.primaryNode = try decoderContainer.decode(DBInstanceNode?.self, forKey: .primaryNode)
        self.secondaryNode = try decoderContainer.decode(DBInstanceNode?.self, forKey: .secondaryNode)
        self.tags = try decoderContainer.decode(Tag?.self, forKey: .tags)
    }
}
public extension DBInstanceAttribute{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DBInstanceAttributeCodingKeys.self)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(instanceName, forKey: .instanceName)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(engine, forKey: .engine)
         try encoderContainer.encode(engineVersion, forKey: .engineVersion)
         try encoderContainer.encode(instanceClass, forKey: .instanceClass)
         try encoderContainer.encode(instanceStorageGB, forKey: .instanceStorageGB)
         try encoderContainer.encode(instanceCPU, forKey: .instanceCPU)
         try encoderContainer.encode(instanceMemoryMB, forKey: .instanceMemoryMB)
         try encoderContainer.encode(regionId, forKey: .regionId)
         try encoderContainer.encode(azId, forKey: .azId)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(internalDomainName, forKey: .internalDomainName)
         try encoderContainer.encode(publicDomainName, forKey: .publicDomainName)
         try encoderContainer.encode(instancePort, forKey: .instancePort)
         try encoderContainer.encode(connectionMode, forKey: .connectionMode)
         try encoderContainer.encode(auditStatus, forKey: .auditStatus)
         try encoderContainer.encode(instanceStatus, forKey: .instanceStatus)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(charge, forKey: .charge)
         try encoderContainer.encode(primaryNode, forKey: .primaryNode)
         try encoderContainer.encode(secondaryNode, forKey: .secondaryNode)
         try encoderContainer.encode(tags, forKey: .tags)
    }
}
