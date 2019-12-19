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

   Redis Instance Order API
   查询缓存Redis订单结果

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCharge
///  proxy对象
public class Proxy:NSObject,Codable{
    /// Id
    /// Required:true
    var id:String



    public  init(id:String){
             self.id = id
    }

    enum ProxyCodingKeys: String, CodingKey {
        case id
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ProxyCodingKeys.self)
        self.id = try decoderContainer.decode(String.self, forKey: .id)
    }
}
public extension Proxy{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ProxyCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
    }
}
///  创建缓存Redis实例时，用户输入的可用区ID信息
public class AzIdSpec:NSObject,Codable{
    /// 缓存Redis主实例所在的可用区ID
    /// Required:true
    var master:String
    /// 缓存Redis从实例所在的可用区ID
    /// Required:true
    var slave:String



    public  init(master:String,slave:String){
             self.master = master
             self.slave = slave
    }

    enum AzIdSpecCodingKeys: String, CodingKey {
        case master
        case slave
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AzIdSpecCodingKeys.self)
        self.master = try decoderContainer.decode(String.self, forKey: .master)
        self.slave = try decoderContainer.decode(String.self, forKey: .slave)
    }
}
public extension AzIdSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AzIdSpecCodingKeys.self)
         try encoderContainer.encode(master, forKey: .master)
         try encoderContainer.encode(slave, forKey: .slave)
    }
}
///  缓存Redis实例的配置参数
public class ConfigItem:NSObject,Codable{
    /// configName目前只支持以下参数：
      /// maxmemory-policy（redis 2.8和redis 4.0都支持，但配置值不相同）：内存剔除策略的最大使用内存限制
      /// hash-max-ziplist-entries（redis 2.8和redis 4.0都支持）：用ziplist编码实现的哈希对象，ziplist中最多能存放entry个数的阈值
      /// hash-max-ziplist-value（redis 2.8和redis 4.0都支持）：用ziplist编码实现的哈希对象，ziplist中能存放的value长度的最大值
      /// list-max-ziplist-entries（只有redis 2.8支持）：用ziplist编码实现的列表对象，ziplist中最多能存放entry个数的阈值
      /// list-max-ziplist-value（只有redis 2.8支持）：用ziplist编码实现的列表对象，ziplist中能存放的value长度的最大值
      /// list-max-ziplist-size（只有redis 4.0支持）：用ziplist编码实现的列表对象，按照数据项个数或占用的字节数，限定ziplist的长度
      /// list-compress-depth（只有redis 4.0支持）：用ziplist编码实现的列表对象，quicklist两端不被压缩的节点个数
      /// set-max-intset-entries（redis 2.8和redis 4.0都支持）：用intset编码实现的集合对象，intset中最多能存放entry个数的阈值
      /// zset-max-ziplist-entries（redis 2.8和redis 4.0都支持）：用ziplist编码实现的有序集合对象，ziplist中最多能存放entry个数的阈值
      /// zset-max-ziplist-value（redis 2.8和redis 4.0都支持）：用ziplist编码实现的有序集合对象，ziplist中能存放的value长度的最大值
      /// slowlog-log-slower-than（redis 2.8和redis 4.0都支持）：慢查询日志超时时间，单位微秒（1000000表示1秒），0表示记录所有的命令
      /// notify-keyspace-events（只有redis 4.0支持）：事件通知
      /// 
    /// Required:true
    var configName:String
    /// 参数的配置值，默认值、参考值如下：
      /// maxmemory-policy（redis 2.8和redis 4.0的默认值都为volatile-lru）：redis 4.0 的参考值有[volatile-lru, allkeys-lru, volatile-lfu, allkeys-lfu, volatile-random, allkeys-random, volatile-ttl, noeviction]，redis 2.8的参考值有[volatile-lru , allkeys-lru , volatile-random , allkeys-random , volatile-ttl , noeviction]
      /// hash-max-ziplist-entries（redis 2.8和redis 4.0的默认值都为512）：[0-10000]
      /// hash-max-ziplist-value（redis 2.8和redis 4.0的默认值都为64）：[0-10000]
      /// list-max-ziplist-entries（redis 2.8的默认值为512，redis 4.0不支持）：[0-10000]
      /// list-max-ziplist-value（redis 2.8的默认值为64，redis 4.0不支持）：[0-10000]
      /// list-max-ziplist-size（redis 4.0的默认值为-2，redis 2.8不支持）：[-5-10000]
      /// list-compress-depth（redis 4.0的默认值为0，redis 2.8不支持）：[0-10000]
      /// set-max-intset-entries（redis 2.8和redis 4.0的默认值都为512）：[0-10000]
      /// zset-max-ziplist-entries（redis 2.8和redis 4.0的默认值都为128）：[0-10000]
      /// zset-max-ziplist-value（redis 2.8和redis 4.0的默认值都为64）：[0-10000]
      /// slowlog-log-slower-than（redis 2.8和redis 4.0的默认值都为10000）：[0-10000]
      /// notify-keyspace-events（redis 4.0的默认值为空，redis 2.8不支持）：[K , E , g , $ , l , s , h , z , x , e , A]字母的组合，区分大小写，或为空
      /// 
    /// Required:true
    var configValue:String



    public  init(configName:String,configValue:String){
             self.configName = configName
             self.configValue = configValue
    }

    enum ConfigItemCodingKeys: String, CodingKey {
        case configName
        case configValue
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ConfigItemCodingKeys.self)
        self.configName = try decoderContainer.decode(String.self, forKey: .configName)
        self.configValue = try decoderContainer.decode(String.self, forKey: .configValue)
    }
}
public extension ConfigItem{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ConfigItemCodingKeys.self)
         try encoderContainer.encode(configName, forKey: .configName)
         try encoderContainer.encode(configValue, forKey: .configValue)
    }
}
///  备份文件下载信息
public class DownloadUrl:NSObject,Codable{
    /// 名称
    /// Required:true
    var name:String
    /// 下载链接
    /// Required:true
    var link:String



    public  init(name:String,link:String){
             self.name = name
             self.link = link
    }

    enum DownloadUrlCodingKeys: String, CodingKey {
        case name
        case link
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DownloadUrlCodingKeys.self)
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        self.link = try decoderContainer.decode(String.self, forKey: .link)
    }
}
public extension DownloadUrl{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DownloadUrlCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(link, forKey: .link)
    }
}
///  慢查询日志记录
public class SlowLog:NSObject,Codable{
    /// 命令
    /// Required:true
    var command:String
    /// 命令开始执行时间（ISO 8601标准的UTC时间，格式为：YYYY-MM-DDTHH:mm:ssZ）
    /// Required:true
    var startTime:String
    /// 命令执行时长（带单位）
    /// Required:true
    var executionTime:String
    /// 执行命令的分片id
    var shardId:String?



    public  init(command:String,startTime:String,executionTime:String){
             self.command = command
             self.startTime = startTime
             self.executionTime = executionTime
    }

    enum SlowLogCodingKeys: String, CodingKey {
        case command
        case startTime
        case executionTime
        case shardId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SlowLogCodingKeys.self)
        self.command = try decoderContainer.decode(String.self, forKey: .command)
        self.startTime = try decoderContainer.decode(String.self, forKey: .startTime)
        self.executionTime = try decoderContainer.decode(String.self, forKey: .executionTime)
        if decoderContainer.contains(.shardId)
        {
            self.shardId = try decoderContainer.decode(String?.self, forKey: .shardId)
        }
    }
}
public extension SlowLog{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SlowLogCodingKeys.self)
         try encoderContainer.encode(command, forKey: .command)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(executionTime, forKey: .executionTime)
         try encoderContainer.encode(shardId, forKey: .shardId)
    }
}
///  查询缓存Redis实例时，返回的实例信息（列表和详情的信息一样）
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
///  clusterInfo对象
public class ClusterInfo:NSObject,Codable{
    /// proxy列表
    var proxies:Proxy?
    /// shard列表
    var shards:Shard?



    public override init(){
            super.init()
    }

    enum ClusterInfoCodingKeys: String, CodingKey {
        case proxies
        case shards
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ClusterInfoCodingKeys.self)
        if decoderContainer.contains(.proxies)
        {
            self.proxies = try decoderContainer.decode(Proxy?.self, forKey: .proxies)
        }
        if decoderContainer.contains(.shards)
        {
            self.shards = try decoderContainer.decode(Shard?.self, forKey: .shards)
        }
    }
}
public extension ClusterInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ClusterInfoCodingKeys.self)
         try encoderContainer.encode(proxies, forKey: .proxies)
         try encoderContainer.encode(shards, forKey: .shards)
    }
}
///  缓存Redis实例的一个备份文件对象
public class Backup:NSObject,Codable{
    /// 备份操作ID
    /// Required:true
    var baseId:String
    /// 备份文件的名称
    /// Required:true
    var backupFileName:String
    /// 备份文件对应的实例ID
    /// Required:true
    var cacheInstanceId:String
    /// 备份开始时间（ISO 8601标准的UTC时间，格式为：YYYY-MM-DDTHH:mm:ssZ）
    /// Required:true
    var backupStartTime:String
    /// 备份结束时间（ISO 8601标准的UTC时间，格式为：YYYY-MM-DDTHH:mm:ssZ）
    /// Required:true
    var backupEndTime:String
    /// 备份类型，1表示手动备份，0表示自动备份
    /// Required:true
    var backupType:Int
    /// 备份文件总字节大小，如果实例是集群版，则表示每个分片备份文件大小的总和
    /// Required:true
    var backupSize:Int64
    /// 备份任务状态状态，0表示备份中，1表示失败，2表示成功
    /// Required:true
    var backupStatus:Int
    /// 备份文件下载地址（已废弃，调用获取备份文件下载地址接口获取）
    /// Required:true
    var backupDownloadURL:String



    public  init(baseId:String,backupFileName:String,cacheInstanceId:String,backupStartTime:String,backupEndTime:String,backupType:Int,backupSize:Int64,backupStatus:Int,backupDownloadURL:String){
             self.baseId = baseId
             self.backupFileName = backupFileName
             self.cacheInstanceId = cacheInstanceId
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
        case cacheInstanceId
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
        self.cacheInstanceId = try decoderContainer.decode(String.self, forKey: .cacheInstanceId)
        self.backupStartTime = try decoderContainer.decode(String.self, forKey: .backupStartTime)
        self.backupEndTime = try decoderContainer.decode(String.self, forKey: .backupEndTime)
        self.backupType = try decoderContainer.decode(Int.self, forKey: .backupType)
        self.backupSize = try decoderContainer.decode(Int64.self, forKey: .backupSize)
        self.backupStatus = try decoderContainer.decode(Int.self, forKey: .backupStatus)
        self.backupDownloadURL = try decoderContainer.decode(String.self, forKey: .backupDownloadURL)
    }
}
public extension Backup{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BackupCodingKeys.self)
         try encoderContainer.encode(baseId, forKey: .baseId)
         try encoderContainer.encode(backupFileName, forKey: .backupFileName)
         try encoderContainer.encode(cacheInstanceId, forKey: .cacheInstanceId)
         try encoderContainer.encode(backupStartTime, forKey: .backupStartTime)
         try encoderContainer.encode(backupEndTime, forKey: .backupEndTime)
         try encoderContainer.encode(backupType, forKey: .backupType)
         try encoderContainer.encode(backupSize, forKey: .backupSize)
         try encoderContainer.encode(backupStatus, forKey: .backupStatus)
         try encoderContainer.encode(backupDownloadURL, forKey: .backupDownloadURL)
    }
}
///  缓存Redis实例所在区域可用区ID信息
public class AzId:NSObject,Codable{
    /// 缓存Redis主实例所在区域的可用区ID
    var master:String?
    /// 缓存Redis从实例所在区域的可用区ID
    var slave:String?



    public override init(){
            super.init()
    }

    enum AzIdCodingKeys: String, CodingKey {
        case master
        case slave
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AzIdCodingKeys.self)
        if decoderContainer.contains(.master)
        {
            self.master = try decoderContainer.decode(String?.self, forKey: .master)
        }
        if decoderContainer.contains(.slave)
        {
            self.slave = try decoderContainer.decode(String?.self, forKey: .slave)
        }
    }
}
public extension AzId{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AzIdCodingKeys.self)
         try encoderContainer.encode(master, forKey: .master)
         try encoderContainer.encode(slave, forKey: .slave)
    }
}
///  tag
public class Tag:NSObject,Codable{
    /// 标签的键
    var key:String?
    /// 标签的值
    var value:String?



    public override init(){
            super.init()
    }

    enum TagCodingKeys: String, CodingKey {
        case key
        case value
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TagCodingKeys.self)
        if decoderContainer.contains(.key)
        {
            self.key = try decoderContainer.decode(String?.self, forKey: .key)
        }
        if decoderContainer.contains(.value)
        {
            self.value = try decoderContainer.decode(String?.self, forKey: .value)
        }
    }
}
public extension Tag{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TagCodingKeys.self)
         try encoderContainer.encode(key, forKey: .key)
         try encoderContainer.encode(value, forKey: .value)
    }
}
///  shard对象
public class Shard:NSObject,Codable{
    /// Id
    /// Required:true
    var id:String



    public  init(id:String){
             self.id = id
    }

    enum ShardCodingKeys: String, CodingKey {
        case id
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ShardCodingKeys.self)
        self.id = try decoderContainer.decode(String.self, forKey: .id)
    }
}
public extension Shard{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ShardCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
    }
}
///  Redis实例的资源信息
public class InstanceName:NSObject,Codable{
    /// 资源id（即实例id）
    /// Required:true
    var resourceId:String
    /// 资源名称（即实例名称）
    /// Required:true
    var resourceName:String
    /// service code（redis）
    /// Required:true
    var serviceCode:String



    public  init(resourceId:String,resourceName:String,serviceCode:String){
             self.resourceId = resourceId
             self.resourceName = resourceName
             self.serviceCode = serviceCode
    }

    enum InstanceNameCodingKeys: String, CodingKey {
        case resourceId
        case resourceName
        case serviceCode
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceNameCodingKeys.self)
        self.resourceId = try decoderContainer.decode(String.self, forKey: .resourceId)
        self.resourceName = try decoderContainer.decode(String.self, forKey: .resourceName)
        self.serviceCode = try decoderContainer.decode(String.self, forKey: .serviceCode)
    }
}
public extension InstanceName{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceNameCodingKeys.self)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(resourceName, forKey: .resourceName)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
    }
}
///  创建缓存Redis实例时，用户输入的参数
public class CacheInstanceSpec:NSObject,Codable{
    /// 缓存Redis实例所属的私有网络ID
    /// Required:true
    var vpcId:String
    /// 缓存Redis实例在私有网络下所属的子网ID
    /// Required:true
    var subnetId:String
    /// 缓存Redis实例名称，只支持数字、字母、英文下划线、中文，且不少于2字符不超过32字符
    /// Required:true
    var cacheInstanceName:String
    /// 缓存Redis实例的规格代码，参考 https://docs.jdcloud.com/cn/jcs-for-redis/specifications
    /// Required:true
    var cacheInstanceClass:String
    /// 缓存Redis实例的连接密码，为空即为免密，包含且只支持字母及数字，不少于8字符不超过16字符
    var password:String?
    /// 缓存Redis实例所在区域的可用区ID
    /// Required:true
    var azId:AzIdSpec
    /// 缓存Redis实例的描述，不能超过256个字符
    var cacheInstanceDescription:String?
    /// 支持的缓存Redis引擎主次版本号：目前支持2.8和4.0，默认为2.8
    var redisVersion:String?
    /// 是否支持IPv6，0或空表示不支持，1表示支持IPv6，注意不是所有区域都支持IPv6
    var ipv6On:Int?



    public  init(vpcId:String,subnetId:String,cacheInstanceName:String,cacheInstanceClass:String,azId:AzIdSpec){
             self.vpcId = vpcId
             self.subnetId = subnetId
             self.cacheInstanceName = cacheInstanceName
             self.cacheInstanceClass = cacheInstanceClass
             self.azId = azId
    }

    enum CacheInstanceSpecCodingKeys: String, CodingKey {
        case vpcId
        case subnetId
        case cacheInstanceName
        case cacheInstanceClass
        case password
        case azId
        case cacheInstanceDescription
        case redisVersion
        case ipv6On
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CacheInstanceSpecCodingKeys.self)
        self.vpcId = try decoderContainer.decode(String.self, forKey: .vpcId)
        self.subnetId = try decoderContainer.decode(String.self, forKey: .subnetId)
        self.cacheInstanceName = try decoderContainer.decode(String.self, forKey: .cacheInstanceName)
        self.cacheInstanceClass = try decoderContainer.decode(String.self, forKey: .cacheInstanceClass)
        if decoderContainer.contains(.password)
        {
            self.password = try decoderContainer.decode(String?.self, forKey: .password)
        }
        self.azId = try decoderContainer.decode(AzIdSpec.self, forKey: .azId)
        if decoderContainer.contains(.cacheInstanceDescription)
        {
            self.cacheInstanceDescription = try decoderContainer.decode(String?.self, forKey: .cacheInstanceDescription)
        }
        if decoderContainer.contains(.redisVersion)
        {
            self.redisVersion = try decoderContainer.decode(String?.self, forKey: .redisVersion)
        }
        if decoderContainer.contains(.ipv6On)
        {
            self.ipv6On = try decoderContainer.decode(Int?.self, forKey: .ipv6On)
        }
    }
}
public extension CacheInstanceSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CacheInstanceSpecCodingKeys.self)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(cacheInstanceName, forKey: .cacheInstanceName)
         try encoderContainer.encode(cacheInstanceClass, forKey: .cacheInstanceClass)
         try encoderContainer.encode(password, forKey: .password)
         try encoderContainer.encode(azId, forKey: .azId)
         try encoderContainer.encode(cacheInstanceDescription, forKey: .cacheInstanceDescription)
         try encoderContainer.encode(redisVersion, forKey: .redisVersion)
         try encoderContainer.encode(ipv6On, forKey: .ipv6On)
    }
}
///  缓存Redis实例的规格信息
public class InstanceClass:NSObject,Codable{
    /// 规格代码：redis 2.8与redis 4.0的规格码不同，具体参考 https://docs.jdcloud.com/cn/jcs-for-redis/specifications
    var instanceClassValue:String?
    /// 规格类型：master-slave表示主从版，cluster表示集群版
    var instanceType:String?
    /// cpu核数
    var cpu:Int?
    /// 内存总容量（MB）
    var memoryMB:Int?
    /// 磁盘总容量（GB）
    var diskGB:Int?
    /// 最大连接数
    var maxConnection:Int?
    /// 内网带宽（MBps）
    var bandwidthMbps:Int?



    public override init(){
            super.init()
    }

    enum InstanceClassCodingKeys: String, CodingKey {
        case instanceClassValue = "instanceClass"
        case instanceType
        case cpu
        case memoryMB
        case diskGB
        case maxConnection
        case bandwidthMbps
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceClassCodingKeys.self)
        if decoderContainer.contains(.instanceClassValue)
        {
            self.instanceClassValue = try decoderContainer.decode(String?.self, forKey: .instanceClassValue)
        }
        if decoderContainer.contains(.instanceType)
        {
            self.instanceType = try decoderContainer.decode(String?.self, forKey: .instanceType)
        }
        if decoderContainer.contains(.cpu)
        {
            self.cpu = try decoderContainer.decode(Int?.self, forKey: .cpu)
        }
        if decoderContainer.contains(.memoryMB)
        {
            self.memoryMB = try decoderContainer.decode(Int?.self, forKey: .memoryMB)
        }
        if decoderContainer.contains(.diskGB)
        {
            self.diskGB = try decoderContainer.decode(Int?.self, forKey: .diskGB)
        }
        if decoderContainer.contains(.maxConnection)
        {
            self.maxConnection = try decoderContainer.decode(Int?.self, forKey: .maxConnection)
        }
        if decoderContainer.contains(.bandwidthMbps)
        {
            self.bandwidthMbps = try decoderContainer.decode(Int?.self, forKey: .bandwidthMbps)
        }
    }
}
public extension InstanceClass{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceClassCodingKeys.self)
         try encoderContainer.encode(instanceClassValue, forKey: .instanceClassValue)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(cpu, forKey: .cpu)
         try encoderContainer.encode(memoryMB, forKey: .memoryMB)
         try encoderContainer.encode(diskGB, forKey: .diskGB)
         try encoderContainer.encode(maxConnection, forKey: .maxConnection)
         try encoderContainer.encode(bandwidthMbps, forKey: .bandwidthMbps)
    }
}
///  Redis实例的订单结果
public class OrderStatus:NSObject,Codable{
    /// 订单总数
    var total:Int?
    /// 成功的订单数
    var success:Int?
    /// 失败的订单数
    var fail:Int?
    /// 正在处理的订单数
    var inProcess:Int?
    /// 成功的资源Id
    var resourceIds:[String?]?



    public override init(){
            super.init()
    }

    enum OrderStatusCodingKeys: String, CodingKey {
        case total
        case success
        case fail
        case inProcess
        case resourceIds
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OrderStatusCodingKeys.self)
        if decoderContainer.contains(.total)
        {
            self.total = try decoderContainer.decode(Int?.self, forKey: .total)
        }
        if decoderContainer.contains(.success)
        {
            self.success = try decoderContainer.decode(Int?.self, forKey: .success)
        }
        if decoderContainer.contains(.fail)
        {
            self.fail = try decoderContainer.decode(Int?.self, forKey: .fail)
        }
        if decoderContainer.contains(.inProcess)
        {
            self.inProcess = try decoderContainer.decode(Int?.self, forKey: .inProcess)
        }
        if decoderContainer.contains(.resourceIds)
        {
            self.resourceIds = try decoderContainer.decode([String?]?.self, forKey: .resourceIds)
        }
    }
}
public extension OrderStatus{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OrderStatusCodingKeys.self)
         try encoderContainer.encode(total, forKey: .total)
         try encoderContainer.encode(success, forKey: .success)
         try encoderContainer.encode(fail, forKey: .fail)
         try encoderContainer.encode(inProcess, forKey: .inProcess)
         try encoderContainer.encode(resourceIds, forKey: .resourceIds)
    }
}
