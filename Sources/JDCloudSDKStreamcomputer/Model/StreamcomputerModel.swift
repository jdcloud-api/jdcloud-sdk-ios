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

   storage相关 API
   流计算storage相关信息接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
///  okInfo
public class OkInfo:NSObject,Codable{
    /// Status
    var status:Bool?
    /// 状态信息
    var message:String?



    public override init(){
            super.init()
    }

    enum OkInfoCodingKeys: String, CodingKey {
        case status
        case message
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OkInfoCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Bool?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
    }
}
public extension OkInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OkInfoCodingKeys.self)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(message, forKey: .message)
    }
}
///  jobStr
public class JobStr:NSObject,Codable{
    /// NamespaceId
    var namespaceId:String?
    /// Name
    var name:String?
    /// Description
    var descriptionValue:String?
    /// ResourceConsume
    var resourceConsume:Int?
    /// Id
    var id:Int?
    /// Uid
    var uid:String?
    /// Status
    var status:UInt8?
    /// Duration
    var duration:Int?
    /// AppName
    var appName:String?
    /// Deleted
    var deleted:UInt8?
    /// CreateTime
    var createTime:String?
    /// UpdateTime
    var updateTime:String?
    /// UserName
    var userName:String?
    /// SqlStatement
    var sqlStatement:String?
    /// JobType
    var jobType:String?



    public override init(){
            super.init()
    }

    enum JobStrCodingKeys: String, CodingKey {
        case namespaceId
        case name
        case descriptionValue = "description"
        case resourceConsume
        case id
        case uid
        case status
        case duration
        case appName
        case deleted
        case createTime
        case updateTime
        case userName
        case sqlStatement
        case jobType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: JobStrCodingKeys.self)
        if decoderContainer.contains(.namespaceId)
        {
            self.namespaceId = try decoderContainer.decode(String?.self, forKey: .namespaceId)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.resourceConsume)
        {
            self.resourceConsume = try decoderContainer.decode(Int?.self, forKey: .resourceConsume)
        }
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.uid)
        {
            self.uid = try decoderContainer.decode(String?.self, forKey: .uid)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(UInt8?.self, forKey: .status)
        }
        if decoderContainer.contains(.duration)
        {
            self.duration = try decoderContainer.decode(Int?.self, forKey: .duration)
        }
        if decoderContainer.contains(.appName)
        {
            self.appName = try decoderContainer.decode(String?.self, forKey: .appName)
        }
        if decoderContainer.contains(.deleted)
        {
            self.deleted = try decoderContainer.decode(UInt8?.self, forKey: .deleted)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.userName)
        {
            self.userName = try decoderContainer.decode(String?.self, forKey: .userName)
        }
        if decoderContainer.contains(.sqlStatement)
        {
            self.sqlStatement = try decoderContainer.decode(String?.self, forKey: .sqlStatement)
        }
        if decoderContainer.contains(.jobType)
        {
            self.jobType = try decoderContainer.decode(String?.self, forKey: .jobType)
        }
    }
}
public extension JobStr{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: JobStrCodingKeys.self)
         try encoderContainer.encode(namespaceId, forKey: .namespaceId)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(resourceConsume, forKey: .resourceConsume)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(uid, forKey: .uid)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(duration, forKey: .duration)
         try encoderContainer.encode(appName, forKey: .appName)
         try encoderContainer.encode(deleted, forKey: .deleted)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(userName, forKey: .userName)
         try encoderContainer.encode(sqlStatement, forKey: .sqlStatement)
         try encoderContainer.encode(jobType, forKey: .jobType)
    }
}
///  namespace
public class Namespace:NSObject,Codable{
    /// Id
    var id:Int?
    /// Name
    var name:String?
    /// Pods
    var pods:String?
    /// Type
    var type:UInt8?
    /// TypeValue
    var typeValue:String?
    /// Deleted
    var deleted:Int?
    /// CreateTime
    var createTime:String?
    /// UpdateTime
    var updateTime:String?
    /// UserName
    var userName:String?
    /// Status
    var status:String?
    /// SourceId
    var sourceId:String?
    /// ResourceId
    var resourceId:String?
    /// PodsUpdateTime
    var podsUpdateTime:String?



    public override init(){
            super.init()
    }

    enum NamespaceCodingKeys: String, CodingKey {
        case id
        case name
        case pods
        case type
        case typeValue
        case deleted
        case createTime
        case updateTime
        case userName
        case status
        case sourceId
        case resourceId
        case podsUpdateTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NamespaceCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.pods)
        {
            self.pods = try decoderContainer.decode(String?.self, forKey: .pods)
        }
        if decoderContainer.contains(.type)
        {
            self.type = try decoderContainer.decode(UInt8?.self, forKey: .type)
        }
        if decoderContainer.contains(.typeValue)
        {
            self.typeValue = try decoderContainer.decode(String?.self, forKey: .typeValue)
        }
        if decoderContainer.contains(.deleted)
        {
            self.deleted = try decoderContainer.decode(Int?.self, forKey: .deleted)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.userName)
        {
            self.userName = try decoderContainer.decode(String?.self, forKey: .userName)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.sourceId)
        {
            self.sourceId = try decoderContainer.decode(String?.self, forKey: .sourceId)
        }
        if decoderContainer.contains(.resourceId)
        {
            self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
        }
        if decoderContainer.contains(.podsUpdateTime)
        {
            self.podsUpdateTime = try decoderContainer.decode(String?.self, forKey: .podsUpdateTime)
        }
    }
}
public extension Namespace{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NamespaceCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(pods, forKey: .pods)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(typeValue, forKey: .typeValue)
         try encoderContainer.encode(deleted, forKey: .deleted)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(userName, forKey: .userName)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(sourceId, forKey: .sourceId)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(podsUpdateTime, forKey: .podsUpdateTime)
    }
}
///  storage
public class Storage:NSObject,Codable{
    /// Id
    var id:Int?
    /// Name
    var name:String?
    /// Uid
    var uid:String?
    /// Type
    var type:String?
    /// 这个参数有input和ouput两个可选值，取决于创建输入还是输出
    var storageType:String?
    /// UserName
    var userName:String?
    /// CreateTime
    var createTime:String?
    /// UpdateTime
    var updateTime:String?
    /// NamespaceId
    var namespaceId:String?
    /// Deleted
    var deleted:UInt8?
    /// Storage的具体参数。&lt;br&gt;1、创建源类型为流式数据输入时，则需要传输source，topicName，duration，format，delimiter，schema 。&lt;br&gt; 2、创建输出如果输出位置为流数据总线，需要传topicName，format，delimiter，ossFlag，bucketName，directory，objectName。&lt;br&gt;3、创建输出如果输出位置为数据计算服务，则需要传输database，table，ossFlag，bucketName，directory，objectName。
    var storageParameterList:[StorageParameter?]?



    public override init(){
            super.init()
    }

    enum StorageCodingKeys: String, CodingKey {
        case id
        case name
        case uid
        case type
        case storageType
        case userName
        case createTime
        case updateTime
        case namespaceId
        case deleted
        case storageParameterList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StorageCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.uid)
        {
            self.uid = try decoderContainer.decode(String?.self, forKey: .uid)
        }
        if decoderContainer.contains(.type)
        {
            self.type = try decoderContainer.decode(String?.self, forKey: .type)
        }
        if decoderContainer.contains(.storageType)
        {
            self.storageType = try decoderContainer.decode(String?.self, forKey: .storageType)
        }
        if decoderContainer.contains(.userName)
        {
            self.userName = try decoderContainer.decode(String?.self, forKey: .userName)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.namespaceId)
        {
            self.namespaceId = try decoderContainer.decode(String?.self, forKey: .namespaceId)
        }
        if decoderContainer.contains(.deleted)
        {
            self.deleted = try decoderContainer.decode(UInt8?.self, forKey: .deleted)
        }
        if decoderContainer.contains(.storageParameterList)
        {
            self.storageParameterList = try decoderContainer.decode([StorageParameter?]?.self, forKey: .storageParameterList)
        }
    }
}
public extension Storage{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StorageCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(uid, forKey: .uid)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(storageType, forKey: .storageType)
         try encoderContainer.encode(userName, forKey: .userName)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(namespaceId, forKey: .namespaceId)
         try encoderContainer.encode(deleted, forKey: .deleted)
         try encoderContainer.encode(storageParameterList, forKey: .storageParameterList)
    }
}
///  storageParameter
public class StorageParameter:NSObject,Codable{
    /// Id
    var id:Int?
    /// Uid
    var uid:String?
    /// PKey
    var pKey:String?
    /// PValue
    var pValue:String?
    /// StorageId
    var storageId:Int?
    /// Deleted
    var deleted:UInt8?
    /// CreateTime
    var createTime:String?
    /// UpdateTime
    var updateTime:String?



    public override init(){
            super.init()
    }

    enum StorageParameterCodingKeys: String, CodingKey {
        case id
        case uid
        case pKey
        case pValue
        case storageId
        case deleted
        case createTime
        case updateTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StorageParameterCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.uid)
        {
            self.uid = try decoderContainer.decode(String?.self, forKey: .uid)
        }
        if decoderContainer.contains(.pKey)
        {
            self.pKey = try decoderContainer.decode(String?.self, forKey: .pKey)
        }
        if decoderContainer.contains(.pValue)
        {
            self.pValue = try decoderContainer.decode(String?.self, forKey: .pValue)
        }
        if decoderContainer.contains(.storageId)
        {
            self.storageId = try decoderContainer.decode(Int?.self, forKey: .storageId)
        }
        if decoderContainer.contains(.deleted)
        {
            self.deleted = try decoderContainer.decode(UInt8?.self, forKey: .deleted)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
    }
}
public extension StorageParameter{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StorageParameterCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(uid, forKey: .uid)
         try encoderContainer.encode(pKey, forKey: .pKey)
         try encoderContainer.encode(pValue, forKey: .pValue)
         try encoderContainer.encode(storageId, forKey: .storageId)
         try encoderContainer.encode(deleted, forKey: .deleted)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}
