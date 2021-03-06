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

   AccessPoint
   接入点相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
///  subscription
public class Subscription:NSObject,Codable{
    /// consumerGroupId
    var consumerGroupId:String?
    /// endPoint
    var endPoint:String?
    /// messageInvisibleTimeInSeconds
    var messageInvisibleTimeInSeconds:Int?
    /// subscriptionType
    var subscriptionType:String?
    /// tags
    var tags:[String?]?
    /// 是否开启死信队列
    var dlqEnable:Bool?
    /// 最大重试次数
    var maxRetryTimes:Int?
    /// 创建时间
    var createTime:String?
    /// 最后更新时间
    var lastUpdateTime:String?
    /// 在线consumer个数
    var consumerNumbers:Int?



    public override init(){
            super.init()
    }

    enum SubscriptionCodingKeys: String, CodingKey {
        case consumerGroupId
        case endPoint
        case messageInvisibleTimeInSeconds
        case subscriptionType
        case tags
        case dlqEnable
        case maxRetryTimes
        case createTime
        case lastUpdateTime
        case consumerNumbers
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SubscriptionCodingKeys.self)
        if decoderContainer.contains(.consumerGroupId)
        {
            self.consumerGroupId = try decoderContainer.decode(String?.self, forKey: .consumerGroupId)
        }
        if decoderContainer.contains(.endPoint)
        {
            self.endPoint = try decoderContainer.decode(String?.self, forKey: .endPoint)
        }
        if decoderContainer.contains(.messageInvisibleTimeInSeconds)
        {
            self.messageInvisibleTimeInSeconds = try decoderContainer.decode(Int?.self, forKey: .messageInvisibleTimeInSeconds)
        }
        if decoderContainer.contains(.subscriptionType)
        {
            self.subscriptionType = try decoderContainer.decode(String?.self, forKey: .subscriptionType)
        }
        if decoderContainer.contains(.tags)
        {
            self.tags = try decoderContainer.decode([String?]?.self, forKey: .tags)
        }
        if decoderContainer.contains(.dlqEnable)
        {
            self.dlqEnable = try decoderContainer.decode(Bool?.self, forKey: .dlqEnable)
        }
        if decoderContainer.contains(.maxRetryTimes)
        {
            self.maxRetryTimes = try decoderContainer.decode(Int?.self, forKey: .maxRetryTimes)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.lastUpdateTime)
        {
            self.lastUpdateTime = try decoderContainer.decode(String?.self, forKey: .lastUpdateTime)
        }
        if decoderContainer.contains(.consumerNumbers)
        {
            self.consumerNumbers = try decoderContainer.decode(Int?.self, forKey: .consumerNumbers)
        }
    }
}
public extension Subscription{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SubscriptionCodingKeys.self)
         try encoderContainer.encode(consumerGroupId, forKey: .consumerGroupId)
         try encoderContainer.encode(endPoint, forKey: .endPoint)
         try encoderContainer.encode(messageInvisibleTimeInSeconds, forKey: .messageInvisibleTimeInSeconds)
         try encoderContainer.encode(subscriptionType, forKey: .subscriptionType)
         try encoderContainer.encode(tags, forKey: .tags)
         try encoderContainer.encode(dlqEnable, forKey: .dlqEnable)
         try encoderContainer.encode(maxRetryTimes, forKey: .maxRetryTimes)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(lastUpdateTime, forKey: .lastUpdateTime)
         try encoderContainer.encode(consumerNumbers, forKey: .consumerNumbers)
    }
}
///  deadLetter
public class DeadLetter:NSObject,Codable{
    /// id
    var messageId:String?
    /// 过期时间
    var expireTime:String?



    public override init(){
            super.init()
    }

    enum DeadLetterCodingKeys: String, CodingKey {
        case messageId
        case expireTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeadLetterCodingKeys.self)
        if decoderContainer.contains(.messageId)
        {
            self.messageId = try decoderContainer.decode(String?.self, forKey: .messageId)
        }
        if decoderContainer.contains(.expireTime)
        {
            self.expireTime = try decoderContainer.decode(String?.self, forKey: .expireTime)
        }
    }
}
public extension DeadLetter{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeadLetterCodingKeys.self)
         try encoderContainer.encode(messageId, forKey: .messageId)
         try encoderContainer.encode(expireTime, forKey: .expireTime)
    }
}
///  deadLetterNumber
public class DeadLetterNumber:NSObject,Codable{
    /// topic的编号
    var topicId:String?
    /// topic名称
    var topicName:String?
    /// consumerGroupId
    var consumerGroupId:String?
    /// 死信队列数
    var deadLetterNumberValue:Int?



    public override init(){
            super.init()
    }

    enum DeadLetterNumberCodingKeys: String, CodingKey {
        case topicId
        case topicName
        case consumerGroupId
        case deadLetterNumberValue = "deadLetterNumber"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeadLetterNumberCodingKeys.self)
        if decoderContainer.contains(.topicId)
        {
            self.topicId = try decoderContainer.decode(String?.self, forKey: .topicId)
        }
        if decoderContainer.contains(.topicName)
        {
            self.topicName = try decoderContainer.decode(String?.self, forKey: .topicName)
        }
        if decoderContainer.contains(.consumerGroupId)
        {
            self.consumerGroupId = try decoderContainer.decode(String?.self, forKey: .consumerGroupId)
        }
        if decoderContainer.contains(.deadLetterNumberValue)
        {
            self.deadLetterNumberValue = try decoderContainer.decode(Int?.self, forKey: .deadLetterNumberValue)
        }
    }
}
public extension DeadLetterNumber{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeadLetterNumberCodingKeys.self)
         try encoderContainer.encode(topicId, forKey: .topicId)
         try encoderContainer.encode(topicName, forKey: .topicName)
         try encoderContainer.encode(consumerGroupId, forKey: .consumerGroupId)
         try encoderContainer.encode(deadLetterNumberValue, forKey: .deadLetterNumberValue)
    }
}
///  topicRouteInfo
public class TopicRouteInfo:NSObject,Codable{
    /// BrokerAddress
    var brokerAddress:String?
    /// Queues
    var queues:[Queue?]?



    public override init(){
            super.init()
    }

    enum TopicRouteInfoCodingKeys: String, CodingKey {
        case brokerAddress
        case queues
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TopicRouteInfoCodingKeys.self)
        if decoderContainer.contains(.brokerAddress)
        {
            self.brokerAddress = try decoderContainer.decode(String?.self, forKey: .brokerAddress)
        }
        if decoderContainer.contains(.queues)
        {
            self.queues = try decoderContainer.decode([Queue?]?.self, forKey: .queues)
        }
    }
}
public extension TopicRouteInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TopicRouteInfoCodingKeys.self)
         try encoderContainer.encode(brokerAddress, forKey: .brokerAddress)
         try encoderContainer.encode(queues, forKey: .queues)
    }
}
///  queue
public class Queue:NSObject,Codable{
    /// QueueId
    var queueId:Int?
    /// QueuePermission
    var queuePermission:String?



    public override init(){
            super.init()
    }

    enum QueueCodingKeys: String, CodingKey {
        case queueId
        case queuePermission
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueueCodingKeys.self)
        if decoderContainer.contains(.queueId)
        {
            self.queueId = try decoderContainer.decode(Int?.self, forKey: .queueId)
        }
        if decoderContainer.contains(.queuePermission)
        {
            self.queuePermission = try decoderContainer.decode(String?.self, forKey: .queuePermission)
        }
    }
}
public extension Queue{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueueCodingKeys.self)
         try encoderContainer.encode(queueId, forKey: .queueId)
         try encoderContainer.encode(queuePermission, forKey: .queuePermission)
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
///  accessPoint
public class AccessPoint:NSObject,Codable{
    /// sdk接入点
    var sdkAddress:String?
    /// http接入点
    var httpAddress:String?



    public override init(){
            super.init()
    }

    enum AccessPointCodingKeys: String, CodingKey {
        case sdkAddress
        case httpAddress
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AccessPointCodingKeys.self)
        if decoderContainer.contains(.sdkAddress)
        {
            self.sdkAddress = try decoderContainer.decode(String?.self, forKey: .sdkAddress)
        }
        if decoderContainer.contains(.httpAddress)
        {
            self.httpAddress = try decoderContainer.decode(String?.self, forKey: .httpAddress)
        }
    }
}
public extension AccessPoint{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AccessPointCodingKeys.self)
         try encoderContainer.encode(sdkAddress, forKey: .sdkAddress)
         try encoderContainer.encode(httpAddress, forKey: .httpAddress)
    }
}
///  topic
public class Topic:NSObject,Codable{
    /// topic Id
    var topicId:String?
    /// topic名称
    var topicName:String?
    /// 描述
    var descriptionValue:String?
    /// 创建时间
    var createTime:String?
    /// 更新时间
    var lastUpdateTime:String?
    /// topicStatus
    var topicStatus:String?
    /// 自己创建的订阅数
    var subscriptionCount:Int?
    /// 消息生命周期时长小时
    var messageLifeTimeInHours:Int?
    /// 配置信息
    var topicConfig:TopicConfig?
    /// 是否是自己的topic
    var own:Bool?
    /// 被授权的权限[PUB,SUB,PUBSUB,READ_ONLY,ADMIN]
    var authorizedPermission:String?
    /// 标签信息
    var tags:[Tag?]?



    public override init(){
            super.init()
    }

    enum TopicCodingKeys: String, CodingKey {
        case topicId
        case topicName
        case descriptionValue = "description"
        case createTime
        case lastUpdateTime
        case topicStatus
        case subscriptionCount
        case messageLifeTimeInHours
        case topicConfig
        case own
        case authorizedPermission
        case tags
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TopicCodingKeys.self)
        if decoderContainer.contains(.topicId)
        {
            self.topicId = try decoderContainer.decode(String?.self, forKey: .topicId)
        }
        if decoderContainer.contains(.topicName)
        {
            self.topicName = try decoderContainer.decode(String?.self, forKey: .topicName)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.lastUpdateTime)
        {
            self.lastUpdateTime = try decoderContainer.decode(String?.self, forKey: .lastUpdateTime)
        }
        if decoderContainer.contains(.topicStatus)
        {
            self.topicStatus = try decoderContainer.decode(String?.self, forKey: .topicStatus)
        }
        if decoderContainer.contains(.subscriptionCount)
        {
            self.subscriptionCount = try decoderContainer.decode(Int?.self, forKey: .subscriptionCount)
        }
        if decoderContainer.contains(.messageLifeTimeInHours)
        {
            self.messageLifeTimeInHours = try decoderContainer.decode(Int?.self, forKey: .messageLifeTimeInHours)
        }
        if decoderContainer.contains(.topicConfig)
        {
            self.topicConfig = try decoderContainer.decode(TopicConfig?.self, forKey: .topicConfig)
        }
        if decoderContainer.contains(.own)
        {
            self.own = try decoderContainer.decode(Bool?.self, forKey: .own)
        }
        if decoderContainer.contains(.authorizedPermission)
        {
            self.authorizedPermission = try decoderContainer.decode(String?.self, forKey: .authorizedPermission)
        }
        if decoderContainer.contains(.tags)
        {
            self.tags = try decoderContainer.decode([Tag?]?.self, forKey: .tags)
        }
    }
}
public extension Topic{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TopicCodingKeys.self)
         try encoderContainer.encode(topicId, forKey: .topicId)
         try encoderContainer.encode(topicName, forKey: .topicName)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(lastUpdateTime, forKey: .lastUpdateTime)
         try encoderContainer.encode(topicStatus, forKey: .topicStatus)
         try encoderContainer.encode(subscriptionCount, forKey: .subscriptionCount)
         try encoderContainer.encode(messageLifeTimeInHours, forKey: .messageLifeTimeInHours)
         try encoderContainer.encode(topicConfig, forKey: .topicConfig)
         try encoderContainer.encode(own, forKey: .own)
         try encoderContainer.encode(authorizedPermission, forKey: .authorizedPermission)
         try encoderContainer.encode(tags, forKey: .tags)
    }
}
///  topicConfig
public class TopicConfig:NSObject,Codable{
    /// 消息最大长度
    var maxMessageSizeKB:Int?
    /// tps
    var threshold:Int?
    /// topicPermission
    var topicPermission:String?
    /// topicType
    var topicType:String?



    public override init(){
            super.init()
    }

    enum TopicConfigCodingKeys: String, CodingKey {
        case maxMessageSizeKB
        case threshold
        case topicPermission
        case topicType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TopicConfigCodingKeys.self)
        if decoderContainer.contains(.maxMessageSizeKB)
        {
            self.maxMessageSizeKB = try decoderContainer.decode(Int?.self, forKey: .maxMessageSizeKB)
        }
        if decoderContainer.contains(.threshold)
        {
            self.threshold = try decoderContainer.decode(Int?.self, forKey: .threshold)
        }
        if decoderContainer.contains(.topicPermission)
        {
            self.topicPermission = try decoderContainer.decode(String?.self, forKey: .topicPermission)
        }
        if decoderContainer.contains(.topicType)
        {
            self.topicType = try decoderContainer.decode(String?.self, forKey: .topicType)
        }
    }
}
public extension TopicConfig{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TopicConfigCodingKeys.self)
         try encoderContainer.encode(maxMessageSizeKB, forKey: .maxMessageSizeKB)
         try encoderContainer.encode(threshold, forKey: .threshold)
         try encoderContainer.encode(topicPermission, forKey: .topicPermission)
         try encoderContainer.encode(topicType, forKey: .topicType)
    }
}
///  topicWrapper
public class TopicWrapper:NSObject,Codable{
    /// Topic
    var topic:Topic?
    /// RouteInfos
    var routeInfos:[TopicRouteInfo?]?



    public override init(){
            super.init()
    }

    enum TopicWrapperCodingKeys: String, CodingKey {
        case topic
        case routeInfos
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TopicWrapperCodingKeys.self)
        if decoderContainer.contains(.topic)
        {
            self.topic = try decoderContainer.decode(Topic?.self, forKey: .topic)
        }
        if decoderContainer.contains(.routeInfos)
        {
            self.routeInfos = try decoderContainer.decode([TopicRouteInfo?]?.self, forKey: .routeInfos)
        }
    }
}
public extension TopicWrapper{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TopicWrapperCodingKeys.self)
         try encoderContainer.encode(topic, forKey: .topic)
         try encoderContainer.encode(routeInfos, forKey: .routeInfos)
    }
}
///  message
public class Message:NSObject,Codable{
    /// 消息id
    var messageId:String?
    /// 内容
    var body:String?
    /// tag以逗号隔开
    var tags:String?
    /// 用户设置的属性json字符串
    var properties:String?
    /// 消息的存储时间
    var storeTime:Double?



    public override init(){
            super.init()
    }

    enum MessageCodingKeys: String, CodingKey {
        case messageId
        case body
        case tags
        case properties
        case storeTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: MessageCodingKeys.self)
        if decoderContainer.contains(.messageId)
        {
            self.messageId = try decoderContainer.decode(String?.self, forKey: .messageId)
        }
        if decoderContainer.contains(.body)
        {
            self.body = try decoderContainer.decode(String?.self, forKey: .body)
        }
        if decoderContainer.contains(.tags)
        {
            self.tags = try decoderContainer.decode(String?.self, forKey: .tags)
        }
        if decoderContainer.contains(.properties)
        {
            self.properties = try decoderContainer.decode(String?.self, forKey: .properties)
        }
        if decoderContainer.contains(.storeTime)
        {
            self.storeTime = try decoderContainer.decode(Double?.self, forKey: .storeTime)
        }
    }
}
public extension Message{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: MessageCodingKeys.self)
         try encoderContainer.encode(messageId, forKey: .messageId)
         try encoderContainer.encode(body, forKey: .body)
         try encoderContainer.encode(tags, forKey: .tags)
         try encoderContainer.encode(properties, forKey: .properties)
         try encoderContainer.encode(storeTime, forKey: .storeTime)
    }
}
///  permission
public class Permission:NSObject,Codable{
    /// userId
    var userId:String?
    /// permission, [SUB, PUB, PUBSUB]
    var permissionValue:String?



    public override init(){
            super.init()
    }

    enum PermissionCodingKeys: String, CodingKey {
        case userId
        case permissionValue = "permission"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PermissionCodingKeys.self)
        if decoderContainer.contains(.userId)
        {
            self.userId = try decoderContainer.decode(String?.self, forKey: .userId)
        }
        if decoderContainer.contains(.permissionValue)
        {
            self.permissionValue = try decoderContainer.decode(String?.self, forKey: .permissionValue)
        }
    }
}
public extension Permission{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PermissionCodingKeys.self)
         try encoderContainer.encode(userId, forKey: .userId)
         try encoderContainer.encode(permissionValue, forKey: .permissionValue)
    }
}
///  consumerInfoDetail
public class ConsumerInfoDetail:NSObject,Codable{
    /// 消费者IP地址
    var consumerIp:String?
    /// 消费时间戳(millionSecond)
    var timeStamp:Double?
    /// 消费耗时(second)
    var costTime:Int?
    /// 第几次消费
    var consumeTimes:Int?
    /// 消费状态[SUCCESS,FAILED_WITHOUT_RESULT,FAILED_WITH_RESULT]
    var consumerStatus:String?



    public override init(){
            super.init()
    }

    enum ConsumerInfoDetailCodingKeys: String, CodingKey {
        case consumerIp
        case timeStamp
        case costTime
        case consumeTimes
        case consumerStatus
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ConsumerInfoDetailCodingKeys.self)
        if decoderContainer.contains(.consumerIp)
        {
            self.consumerIp = try decoderContainer.decode(String?.self, forKey: .consumerIp)
        }
        if decoderContainer.contains(.timeStamp)
        {
            self.timeStamp = try decoderContainer.decode(Double?.self, forKey: .timeStamp)
        }
        if decoderContainer.contains(.costTime)
        {
            self.costTime = try decoderContainer.decode(Int?.self, forKey: .costTime)
        }
        if decoderContainer.contains(.consumeTimes)
        {
            self.consumeTimes = try decoderContainer.decode(Int?.self, forKey: .consumeTimes)
        }
        if decoderContainer.contains(.consumerStatus)
        {
            self.consumerStatus = try decoderContainer.decode(String?.self, forKey: .consumerStatus)
        }
    }
}
public extension ConsumerInfoDetail{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ConsumerInfoDetailCodingKeys.self)
         try encoderContainer.encode(consumerIp, forKey: .consumerIp)
         try encoderContainer.encode(timeStamp, forKey: .timeStamp)
         try encoderContainer.encode(costTime, forKey: .costTime)
         try encoderContainer.encode(consumeTimes, forKey: .consumeTimes)
         try encoderContainer.encode(consumerStatus, forKey: .consumerStatus)
    }
}
///  messageTraceInfo
public class MessageTraceInfo:NSObject,Codable{
    /// 生产消息详情
    var produceInfo:ProduceInfo?
    /// 消费消息详情
    var consumeInfoList:[ConsumeInfo?]?



    public override init(){
            super.init()
    }

    enum MessageTraceInfoCodingKeys: String, CodingKey {
        case produceInfo
        case consumeInfoList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: MessageTraceInfoCodingKeys.self)
        if decoderContainer.contains(.produceInfo)
        {
            self.produceInfo = try decoderContainer.decode(ProduceInfo?.self, forKey: .produceInfo)
        }
        if decoderContainer.contains(.consumeInfoList)
        {
            self.consumeInfoList = try decoderContainer.decode([ConsumeInfo?]?.self, forKey: .consumeInfoList)
        }
    }
}
public extension MessageTraceInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: MessageTraceInfoCodingKeys.self)
         try encoderContainer.encode(produceInfo, forKey: .produceInfo)
         try encoderContainer.encode(consumeInfoList, forKey: .consumeInfoList)
    }
}
///  produceInfo
public class ProduceInfo:NSObject,Codable{
    /// 生产者地址
    var address:String?
    /// 发送时间戳(millionSecond)
    var timeStamp:Double?
    /// 发送耗时(millionSecond)
    var costTime:Int?
    /// 发送状态[SUCCESS_NORMAL,FAILED,SUCCESS_DELAY]
    var messageSendStatus:String?
    /// 延时消息的延迟时间(second)
    var delayTime:Double?



    public override init(){
            super.init()
    }

    enum ProduceInfoCodingKeys: String, CodingKey {
        case address
        case timeStamp
        case costTime
        case messageSendStatus
        case delayTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ProduceInfoCodingKeys.self)
        if decoderContainer.contains(.address)
        {
            self.address = try decoderContainer.decode(String?.self, forKey: .address)
        }
        if decoderContainer.contains(.timeStamp)
        {
            self.timeStamp = try decoderContainer.decode(Double?.self, forKey: .timeStamp)
        }
        if decoderContainer.contains(.costTime)
        {
            self.costTime = try decoderContainer.decode(Int?.self, forKey: .costTime)
        }
        if decoderContainer.contains(.messageSendStatus)
        {
            self.messageSendStatus = try decoderContainer.decode(String?.self, forKey: .messageSendStatus)
        }
        if decoderContainer.contains(.delayTime)
        {
            self.delayTime = try decoderContainer.decode(Double?.self, forKey: .delayTime)
        }
    }
}
public extension ProduceInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ProduceInfoCodingKeys.self)
         try encoderContainer.encode(address, forKey: .address)
         try encoderContainer.encode(timeStamp, forKey: .timeStamp)
         try encoderContainer.encode(costTime, forKey: .costTime)
         try encoderContainer.encode(messageSendStatus, forKey: .messageSendStatus)
         try encoderContainer.encode(delayTime, forKey: .delayTime)
    }
}
///  consumeInfo
public class ConsumeInfo:NSObject,Codable{
    /// 消费组名称
    var consumerGroupId:String?
    /// 消费状态[SUCCESS,UNCONSUMED,FAILED_RETRY,ALL_FAILED,UNKNOWN]
    var messageConsumeStatus:String?
    /// 消费成功次数
    var successTimes:Int?
    /// 消费失败次数
    var failedTimes:Int?
    /// 消费组下面消费者详情
    var consumerInfoDetailList:[ConsumerInfoDetail?]?



    public override init(){
            super.init()
    }

    enum ConsumeInfoCodingKeys: String, CodingKey {
        case consumerGroupId
        case messageConsumeStatus
        case successTimes
        case failedTimes
        case consumerInfoDetailList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ConsumeInfoCodingKeys.self)
        if decoderContainer.contains(.consumerGroupId)
        {
            self.consumerGroupId = try decoderContainer.decode(String?.self, forKey: .consumerGroupId)
        }
        if decoderContainer.contains(.messageConsumeStatus)
        {
            self.messageConsumeStatus = try decoderContainer.decode(String?.self, forKey: .messageConsumeStatus)
        }
        if decoderContainer.contains(.successTimes)
        {
            self.successTimes = try decoderContainer.decode(Int?.self, forKey: .successTimes)
        }
        if decoderContainer.contains(.failedTimes)
        {
            self.failedTimes = try decoderContainer.decode(Int?.self, forKey: .failedTimes)
        }
        if decoderContainer.contains(.consumerInfoDetailList)
        {
            self.consumerInfoDetailList = try decoderContainer.decode([ConsumerInfoDetail?]?.self, forKey: .consumerInfoDetailList)
        }
    }
}
public extension ConsumeInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ConsumeInfoCodingKeys.self)
         try encoderContainer.encode(consumerGroupId, forKey: .consumerGroupId)
         try encoderContainer.encode(messageConsumeStatus, forKey: .messageConsumeStatus)
         try encoderContainer.encode(successTimes, forKey: .successTimes)
         try encoderContainer.encode(failedTimes, forKey: .failedTimes)
         try encoderContainer.encode(consumerInfoDetailList, forKey: .consumerInfoDetailList)
    }
}
