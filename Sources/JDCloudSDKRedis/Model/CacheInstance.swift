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

///  查询缓存Redis实例时，返回的实例信息（列表和详情的信息一样）
@objc(CacheInstance)
public class CacheInstance:NSObject,Codable{
    /// 实例ID
    var cacheInstanceId:String?
    /// 实例名称
    var cacheInstanceName:String?
    /// 规格代码，参考 https://docs.jdcloud.com/cn/jcs-for-redis/specifications
    var cacheInstanceClass:String?
    /// 实例的总内存（MB）
    var cacheInstanceMemoryMB:Int?
    /// 实例状态：creating表示创建中，running表示运行中，error表示错误，changing表示变更规格中，deleting表示删除中，configuring表示修改参数中，restoring表示备份恢复中
    var cacheInstanceStatus:String?
    /// 实例描述
    var cacheInstanceDescription:String?
    /// 创建时间（ISO 8601标准的UTC时间，格式为：YYYY-MM-DDTHH:mm:ssZ）
    var createTime:String?
    /// az信息
    var azId:AzId?
    /// 所属VPC的ID
    var vpcId:String?
    /// 所属子网的ID
    var subnetId:String?
    /// 访问域名
    var connectionDomain:String?
    /// 端口
    var port:Int?
    /// 计费信息
    var charge:Charge?
    /// 实例的详细版本号，形如x.x-x.x
    var instanceVersion:String?
    /// 连接redis实例时，是否需要密码认证，false表示无密码
    var auth:Bool?
    /// 创建实例时选择的redis引擎版本：目前支持2.8和4.0
    var redisVersion:String?
    /// 实例类型：master-slave表示主从版，cluster表示集群版
    var cacheInstanceType:String?
    /// 是否支持IPv6，0表示不支持（只能用IPv4），1表示支持
    var ipv6On:Int?
    /// 标签信息
    var tags:[Tag?]?



    public override init(){
            super.init()
    }

    enum CacheInstanceCodingKeys: String, CodingKey {
        case cacheInstanceId
        case cacheInstanceName
        case cacheInstanceClass
        case cacheInstanceMemoryMB
        case cacheInstanceStatus
        case cacheInstanceDescription
        case createTime
        case azId
        case vpcId
        case subnetId
        case connectionDomain
        case port
        case charge
        case instanceVersion
        case auth
        case redisVersion
        case cacheInstanceType
        case ipv6On
        case tags
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CacheInstanceCodingKeys.self)
        if decoderContainer.contains(.cacheInstanceId)
        {
            self.cacheInstanceId = try decoderContainer.decode(String?.self, forKey: .cacheInstanceId)
        }
        if decoderContainer.contains(.cacheInstanceName)
        {
            self.cacheInstanceName = try decoderContainer.decode(String?.self, forKey: .cacheInstanceName)
        }
        if decoderContainer.contains(.cacheInstanceClass)
        {
            self.cacheInstanceClass = try decoderContainer.decode(String?.self, forKey: .cacheInstanceClass)
        }
        if decoderContainer.contains(.cacheInstanceMemoryMB)
        {
            self.cacheInstanceMemoryMB = try decoderContainer.decode(Int?.self, forKey: .cacheInstanceMemoryMB)
        }
        if decoderContainer.contains(.cacheInstanceStatus)
        {
            self.cacheInstanceStatus = try decoderContainer.decode(String?.self, forKey: .cacheInstanceStatus)
        }
        if decoderContainer.contains(.cacheInstanceDescription)
        {
            self.cacheInstanceDescription = try decoderContainer.decode(String?.self, forKey: .cacheInstanceDescription)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.azId)
        {
            self.azId = try decoderContainer.decode(AzId?.self, forKey: .azId)
        }
        if decoderContainer.contains(.vpcId)
        {
            self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        }
        if decoderContainer.contains(.subnetId)
        {
            self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        }
        if decoderContainer.contains(.connectionDomain)
        {
            self.connectionDomain = try decoderContainer.decode(String?.self, forKey: .connectionDomain)
        }
        if decoderContainer.contains(.port)
        {
            self.port = try decoderContainer.decode(Int?.self, forKey: .port)
        }
        if decoderContainer.contains(.charge)
        {
            self.charge = try decoderContainer.decode(Charge?.self, forKey: .charge)
        }
        if decoderContainer.contains(.instanceVersion)
        {
            self.instanceVersion = try decoderContainer.decode(String?.self, forKey: .instanceVersion)
        }
        if decoderContainer.contains(.auth)
        {
            self.auth = try decoderContainer.decode(Bool?.self, forKey: .auth)
        }
        if decoderContainer.contains(.redisVersion)
        {
            self.redisVersion = try decoderContainer.decode(String?.self, forKey: .redisVersion)
        }
        if decoderContainer.contains(.cacheInstanceType)
        {
            self.cacheInstanceType = try decoderContainer.decode(String?.self, forKey: .cacheInstanceType)
        }
        if decoderContainer.contains(.ipv6On)
        {
            self.ipv6On = try decoderContainer.decode(Int?.self, forKey: .ipv6On)
        }
        if decoderContainer.contains(.tags)
        {
            self.tags = try decoderContainer.decode([Tag?]?.self, forKey: .tags)
        }
    }
}
public extension CacheInstance{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CacheInstanceCodingKeys.self)
         try encoderContainer.encode(cacheInstanceId, forKey: .cacheInstanceId)
         try encoderContainer.encode(cacheInstanceName, forKey: .cacheInstanceName)
         try encoderContainer.encode(cacheInstanceClass, forKey: .cacheInstanceClass)
         try encoderContainer.encode(cacheInstanceMemoryMB, forKey: .cacheInstanceMemoryMB)
         try encoderContainer.encode(cacheInstanceStatus, forKey: .cacheInstanceStatus)
         try encoderContainer.encode(cacheInstanceDescription, forKey: .cacheInstanceDescription)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(azId, forKey: .azId)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(connectionDomain, forKey: .connectionDomain)
         try encoderContainer.encode(port, forKey: .port)
         try encoderContainer.encode(charge, forKey: .charge)
         try encoderContainer.encode(instanceVersion, forKey: .instanceVersion)
         try encoderContainer.encode(auth, forKey: .auth)
         try encoderContainer.encode(redisVersion, forKey: .redisVersion)
         try encoderContainer.encode(cacheInstanceType, forKey: .cacheInstanceType)
         try encoderContainer.encode(ipv6On, forKey: .ipv6On)
         try encoderContainer.encode(tags, forKey: .tags)
    }
}
