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

   table
   API related to XDATA-DW table

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
///  dwDatabase
public class DwDatabase:NSObject,Codable{
    /// 数据库id
    var id:Int?
    /// 用户名
    var userName:String?
    /// 数据库名称
    /// Required:true
    var databaseName:String
    /// 总表数量
    var totalTableQuantity:Int?
    /// 创建时间
    var createTime:String?
    /// 最新更新时间
    var lastUpdateTime:String?
    /// 最新更新时间
    var physicalStorageCapacity:String?
    /// 类别
    var category:String?
    /// 来源
    var source:String?
    /// 所有者
    var owner:String?
    /// 位置
    var location:String?
    /// 描述信息
    var comments:String?



    public  init(databaseName:String){
             self.databaseName = databaseName
    }

    enum DwDatabaseCodingKeys: String, CodingKey {
        case id
        case userName
        case databaseName
        case totalTableQuantity
        case createTime
        case lastUpdateTime
        case physicalStorageCapacity
        case category
        case source
        case owner
        case location
        case comments
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DwDatabaseCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.userName)
        {
            self.userName = try decoderContainer.decode(String?.self, forKey: .userName)
        }
        self.databaseName = try decoderContainer.decode(String.self, forKey: .databaseName)
        if decoderContainer.contains(.totalTableQuantity)
        {
            self.totalTableQuantity = try decoderContainer.decode(Int?.self, forKey: .totalTableQuantity)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.lastUpdateTime)
        {
            self.lastUpdateTime = try decoderContainer.decode(String?.self, forKey: .lastUpdateTime)
        }
        if decoderContainer.contains(.physicalStorageCapacity)
        {
            self.physicalStorageCapacity = try decoderContainer.decode(String?.self, forKey: .physicalStorageCapacity)
        }
        if decoderContainer.contains(.category)
        {
            self.category = try decoderContainer.decode(String?.self, forKey: .category)
        }
        if decoderContainer.contains(.source)
        {
            self.source = try decoderContainer.decode(String?.self, forKey: .source)
        }
        if decoderContainer.contains(.owner)
        {
            self.owner = try decoderContainer.decode(String?.self, forKey: .owner)
        }
        if decoderContainer.contains(.location)
        {
            self.location = try decoderContainer.decode(String?.self, forKey: .location)
        }
        if decoderContainer.contains(.comments)
        {
            self.comments = try decoderContainer.decode(String?.self, forKey: .comments)
        }
    }
}
public extension DwDatabase{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DwDatabaseCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(userName, forKey: .userName)
         try encoderContainer.encode(databaseName, forKey: .databaseName)
         try encoderContainer.encode(totalTableQuantity, forKey: .totalTableQuantity)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(lastUpdateTime, forKey: .lastUpdateTime)
         try encoderContainer.encode(physicalStorageCapacity, forKey: .physicalStorageCapacity)
         try encoderContainer.encode(category, forKey: .category)
         try encoderContainer.encode(source, forKey: .source)
         try encoderContainer.encode(owner, forKey: .owner)
         try encoderContainer.encode(location, forKey: .location)
         try encoderContainer.encode(comments, forKey: .comments)
    }
}
///  dwDatabaseInfo
public class DwDatabaseInfo:NSObject,Codable{
    /// 所有者
    var owner:String?
    /// 描述信息
    var comments:String?
    /// 数据库名称
    var databaseName:String?



    public override init(){
            super.init()
    }

    enum DwDatabaseInfoCodingKeys: String, CodingKey {
        case owner
        case comments
        case databaseName
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DwDatabaseInfoCodingKeys.self)
        if decoderContainer.contains(.owner)
        {
            self.owner = try decoderContainer.decode(String?.self, forKey: .owner)
        }
        if decoderContainer.contains(.comments)
        {
            self.comments = try decoderContainer.decode(String?.self, forKey: .comments)
        }
        if decoderContainer.contains(.databaseName)
        {
            self.databaseName = try decoderContainer.decode(String?.self, forKey: .databaseName)
        }
    }
}
public extension DwDatabaseInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DwDatabaseInfoCodingKeys.self)
         try encoderContainer.encode(owner, forKey: .owner)
         try encoderContainer.encode(comments, forKey: .comments)
         try encoderContainer.encode(databaseName, forKey: .databaseName)
    }
}
///  dwInstance
public class DwInstance:NSObject,Codable{
    /// 实例名
    /// Required:true
    var instanceName:String
    /// 实例描述
    var comments:String?
    /// 实例属主
    var instanceOwnerName:String?
    /// 实例所属区域
    var area:String?
    /// 实例别名（在页面显示）
    var uname:String?
    /// 实例创建时间
    var createTime:String?



    public  init(instanceName:String){
             self.instanceName = instanceName
    }

    enum DwInstanceCodingKeys: String, CodingKey {
        case instanceName
        case comments
        case instanceOwnerName
        case area
        case uname
        case createTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DwInstanceCodingKeys.self)
        self.instanceName = try decoderContainer.decode(String.self, forKey: .instanceName)
        if decoderContainer.contains(.comments)
        {
            self.comments = try decoderContainer.decode(String?.self, forKey: .comments)
        }
        if decoderContainer.contains(.instanceOwnerName)
        {
            self.instanceOwnerName = try decoderContainer.decode(String?.self, forKey: .instanceOwnerName)
        }
        if decoderContainer.contains(.area)
        {
            self.area = try decoderContainer.decode(String?.self, forKey: .area)
        }
        if decoderContainer.contains(.uname)
        {
            self.uname = try decoderContainer.decode(String?.self, forKey: .uname)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
    }
}
public extension DwInstance{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DwInstanceCodingKeys.self)
         try encoderContainer.encode(instanceName, forKey: .instanceName)
         try encoderContainer.encode(comments, forKey: .comments)
         try encoderContainer.encode(instanceOwnerName, forKey: .instanceOwnerName)
         try encoderContainer.encode(area, forKey: .area)
         try encoderContainer.encode(uname, forKey: .uname)
         try encoderContainer.encode(createTime, forKey: .createTime)
    }
}
///  dwTable
public class DwTable:NSObject,Codable{
    /// 数据库id
    var id:Int?
    /// 用户名
    var userName:String?
    /// 数据库名
    var dbName:String?
    /// 表名
    var tableName:String?
    /// 创建时间
    var createTime:String?
    /// 最新更新时间
    var lastUpdateTime:String?
    /// 物理存储量
    var physicalStorageCapacity:String?
    /// 类别
    var category:String?
    /// 来源
    var source:String?
    /// 所有者
    var owner:String?
    /// 文件存储类型
    var hiveFileFormat:String?
    /// 是否加密
    var encryption:String?
    /// 位置
    var location:String?
    /// 描述信息
    var comments:String?
    /// hive表权限信息
    var hiveObjectPrivileges:DwHiveObjectPrivileges?
    /// 参数
    var parameters:AnyObject?



    public override init(){
            super.init()
    }

    enum DwTableCodingKeys: String, CodingKey {
        case id
        case userName
        case dbName
        case tableName
        case createTime
        case lastUpdateTime
        case physicalStorageCapacity
        case category
        case source
        case owner
        case hiveFileFormat
        case encryption
        case location
        case comments
        case hiveObjectPrivileges
        case parameters
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DwTableCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.userName)
        {
            self.userName = try decoderContainer.decode(String?.self, forKey: .userName)
        }
        if decoderContainer.contains(.dbName)
        {
            self.dbName = try decoderContainer.decode(String?.self, forKey: .dbName)
        }
        if decoderContainer.contains(.tableName)
        {
            self.tableName = try decoderContainer.decode(String?.self, forKey: .tableName)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.lastUpdateTime)
        {
            self.lastUpdateTime = try decoderContainer.decode(String?.self, forKey: .lastUpdateTime)
        }
        if decoderContainer.contains(.physicalStorageCapacity)
        {
            self.physicalStorageCapacity = try decoderContainer.decode(String?.self, forKey: .physicalStorageCapacity)
        }
        if decoderContainer.contains(.category)
        {
            self.category = try decoderContainer.decode(String?.self, forKey: .category)
        }
        if decoderContainer.contains(.source)
        {
            self.source = try decoderContainer.decode(String?.self, forKey: .source)
        }
        if decoderContainer.contains(.owner)
        {
            self.owner = try decoderContainer.decode(String?.self, forKey: .owner)
        }
        if decoderContainer.contains(.hiveFileFormat)
        {
            self.hiveFileFormat = try decoderContainer.decode(String?.self, forKey: .hiveFileFormat)
        }
        if decoderContainer.contains(.encryption)
        {
            self.encryption = try decoderContainer.decode(String?.self, forKey: .encryption)
        }
        if decoderContainer.contains(.location)
        {
            self.location = try decoderContainer.decode(String?.self, forKey: .location)
        }
        if decoderContainer.contains(.comments)
        {
            self.comments = try decoderContainer.decode(String?.self, forKey: .comments)
        }
        if decoderContainer.contains(.hiveObjectPrivileges)
        {
            self.hiveObjectPrivileges = try decoderContainer.decode(DwHiveObjectPrivileges?.self, forKey: .hiveObjectPrivileges)
        }
    }
}
public extension DwTable{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DwTableCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(userName, forKey: .userName)
         try encoderContainer.encode(dbName, forKey: .dbName)
         try encoderContainer.encode(tableName, forKey: .tableName)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(lastUpdateTime, forKey: .lastUpdateTime)
         try encoderContainer.encode(physicalStorageCapacity, forKey: .physicalStorageCapacity)
         try encoderContainer.encode(category, forKey: .category)
         try encoderContainer.encode(source, forKey: .source)
         try encoderContainer.encode(owner, forKey: .owner)
         try encoderContainer.encode(hiveFileFormat, forKey: .hiveFileFormat)
         try encoderContainer.encode(encryption, forKey: .encryption)
         try encoderContainer.encode(location, forKey: .location)
         try encoderContainer.encode(comments, forKey: .comments)
         try encoderContainer.encode(hiveObjectPrivileges, forKey: .hiveObjectPrivileges)
    }
}
///  dwHiveObjectPrivileges
public class DwHiveObjectPrivileges:NSObject,Codable{
    /// 状态
    var status:Bool?
    /// 返回信息
    var message:String?
    /// select权限
    var select:Bool?
    /// insert权限
    var insert:Bool?
    /// update权限
    var update:Bool?
    /// delete权限
    var delete:Bool?
    /// drop权限
    var drop:Bool?
    /// create权限
    var create:Bool?
    /// alter权限
    var alter:Bool?
    /// 是否为此表所有者
    var owner:Bool?



    public override init(){
            super.init()
    }

    enum DwHiveObjectPrivilegesCodingKeys: String, CodingKey {
        case status
        case message
        case select
        case insert
        case update
        case delete
        case drop
        case create
        case alter
        case owner
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DwHiveObjectPrivilegesCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Bool?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.select)
        {
            self.select = try decoderContainer.decode(Bool?.self, forKey: .select)
        }
        if decoderContainer.contains(.insert)
        {
            self.insert = try decoderContainer.decode(Bool?.self, forKey: .insert)
        }
        if decoderContainer.contains(.update)
        {
            self.update = try decoderContainer.decode(Bool?.self, forKey: .update)
        }
        if decoderContainer.contains(.delete)
        {
            self.delete = try decoderContainer.decode(Bool?.self, forKey: .delete)
        }
        if decoderContainer.contains(.drop)
        {
            self.drop = try decoderContainer.decode(Bool?.self, forKey: .drop)
        }
        if decoderContainer.contains(.create)
        {
            self.create = try decoderContainer.decode(Bool?.self, forKey: .create)
        }
        if decoderContainer.contains(.alter)
        {
            self.alter = try decoderContainer.decode(Bool?.self, forKey: .alter)
        }
        if decoderContainer.contains(.owner)
        {
            self.owner = try decoderContainer.decode(Bool?.self, forKey: .owner)
        }
    }
}
public extension DwHiveObjectPrivileges{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DwHiveObjectPrivilegesCodingKeys.self)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(message, forKey: .message)
         try encoderContainer.encode(select, forKey: .select)
         try encoderContainer.encode(insert, forKey: .insert)
         try encoderContainer.encode(update, forKey: .update)
         try encoderContainer.encode(delete, forKey: .delete)
         try encoderContainer.encode(drop, forKey: .drop)
         try encoderContainer.encode(create, forKey: .create)
         try encoderContainer.encode(alter, forKey: .alter)
         try encoderContainer.encode(owner, forKey: .owner)
    }
}
///  dwTableRow
public class DwTableRow:NSObject,Codable{
    /// 字段名称
    var columnName:String?
    /// 字段类型
    var columnType:String?
    /// 是否分区字段
    var isPartition:Bool?
    /// 描述信息
    var comments:String?



    public override init(){
            super.init()
    }

    enum DwTableRowCodingKeys: String, CodingKey {
        case columnName
        case columnType
        case isPartition
        case comments
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DwTableRowCodingKeys.self)
        if decoderContainer.contains(.columnName)
        {
            self.columnName = try decoderContainer.decode(String?.self, forKey: .columnName)
        }
        if decoderContainer.contains(.columnType)
        {
            self.columnType = try decoderContainer.decode(String?.self, forKey: .columnType)
        }
        if decoderContainer.contains(.isPartition)
        {
            self.isPartition = try decoderContainer.decode(Bool?.self, forKey: .isPartition)
        }
        if decoderContainer.contains(.comments)
        {
            self.comments = try decoderContainer.decode(String?.self, forKey: .comments)
        }
    }
}
public extension DwTableRow{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DwTableRowCodingKeys.self)
         try encoderContainer.encode(columnName, forKey: .columnName)
         try encoderContainer.encode(columnType, forKey: .columnType)
         try encoderContainer.encode(isPartition, forKey: .isPartition)
         try encoderContainer.encode(comments, forKey: .comments)
    }
}
///  dwTableDesc
public class DwTableDesc:NSObject,Codable{
    /// 数据库名
    var dbName:String?
    /// 表名
    var tableName:String?
    /// 存储格式
    var hiveFileFormat:String?
    /// 字段分隔符
    var fieldsDelimit:String?
    /// 行分隔符
    var linesDelimit:String?
    /// 其他serde属性
    var otherSerdeProperties:AnyObject?
    /// 创建时间（自动生成）
    var createTime:String?
    /// 所有者（自动生成）
    var owner:String?
    /// 描述信息
    var comments:String?
    /// 外表位置
    var externalLocation:String?
    /// 参数
    var parameters:AnyObject?
    /// 列信息
    var rows:[DwTableRow?]?



    public override init(){
            super.init()
    }

    enum DwTableDescCodingKeys: String, CodingKey {
        case dbName
        case tableName
        case hiveFileFormat
        case fieldsDelimit
        case linesDelimit
        case otherSerdeProperties
        case createTime
        case owner
        case comments
        case externalLocation
        case parameters
        case rows
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DwTableDescCodingKeys.self)
        if decoderContainer.contains(.dbName)
        {
            self.dbName = try decoderContainer.decode(String?.self, forKey: .dbName)
        }
        if decoderContainer.contains(.tableName)
        {
            self.tableName = try decoderContainer.decode(String?.self, forKey: .tableName)
        }
        if decoderContainer.contains(.hiveFileFormat)
        {
            self.hiveFileFormat = try decoderContainer.decode(String?.self, forKey: .hiveFileFormat)
        }
        if decoderContainer.contains(.fieldsDelimit)
        {
            self.fieldsDelimit = try decoderContainer.decode(String?.self, forKey: .fieldsDelimit)
        }
        if decoderContainer.contains(.linesDelimit)
        {
            self.linesDelimit = try decoderContainer.decode(String?.self, forKey: .linesDelimit)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.owner)
        {
            self.owner = try decoderContainer.decode(String?.self, forKey: .owner)
        }
        if decoderContainer.contains(.comments)
        {
            self.comments = try decoderContainer.decode(String?.self, forKey: .comments)
        }
        if decoderContainer.contains(.externalLocation)
        {
            self.externalLocation = try decoderContainer.decode(String?.self, forKey: .externalLocation)
        }
        if decoderContainer.contains(.rows)
        {
            self.rows = try decoderContainer.decode([DwTableRow?]?.self, forKey: .rows)
        }
    }
}
public extension DwTableDesc{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DwTableDescCodingKeys.self)
         try encoderContainer.encode(dbName, forKey: .dbName)
         try encoderContainer.encode(tableName, forKey: .tableName)
         try encoderContainer.encode(hiveFileFormat, forKey: .hiveFileFormat)
         try encoderContainer.encode(fieldsDelimit, forKey: .fieldsDelimit)
         try encoderContainer.encode(linesDelimit, forKey: .linesDelimit)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(owner, forKey: .owner)
         try encoderContainer.encode(comments, forKey: .comments)
         try encoderContainer.encode(externalLocation, forKey: .externalLocation)
         try encoderContainer.encode(rows, forKey: .rows)
    }
}