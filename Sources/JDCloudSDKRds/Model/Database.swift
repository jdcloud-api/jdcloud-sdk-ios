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

///  database
@objc(Database)
public class Database:NSObject,Codable{
    /// 数据库名称，具体规则可参见帮助中心文档:[名称及密码限制](../../../documentation/Cloud-Database-and-Cache/RDS/Introduction/Restrictions/SQLServer-Restrictions.md)
    var dbName:String?
    /// 数据库状态，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)&lt;br&gt;- **MySQL：不支持，不返回该字段**&lt;br&gt;- **SQL Server：返回该字段**
    var dbStatus:String?
    /// 字符集，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var characterSetName:String?
    /// 数据库创建时间，格式YYYY-MM-DD HH:mm:ss&lt;br&gt;- 仅支持SQL Server
    var createTime:String?
    /// 该数据库相关账户权限列表
    var accessPrivilege:[DBAccessPrivilege?]?



    public override init(){
            super.init()
    }

    enum DatabaseCodingKeys: String, CodingKey {
        case dbName
        case dbStatus
        case characterSetName
        case createTime
        case accessPrivilege
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DatabaseCodingKeys.self)
        if decoderContainer.contains(.dbName)
        {
            self.dbName = try decoderContainer.decode(String?.self, forKey: .dbName)
        }
        if decoderContainer.contains(.dbStatus)
        {
            self.dbStatus = try decoderContainer.decode(String?.self, forKey: .dbStatus)
        }
        if decoderContainer.contains(.characterSetName)
        {
            self.characterSetName = try decoderContainer.decode(String?.self, forKey: .characterSetName)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.accessPrivilege)
        {
            self.accessPrivilege = try decoderContainer.decode([DBAccessPrivilege?]?.self, forKey: .accessPrivilege)
        }
    }
}
public extension Database{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DatabaseCodingKeys.self)
         try encoderContainer.encode(dbName, forKey: .dbName)
         try encoderContainer.encode(dbStatus, forKey: .dbStatus)
         try encoderContainer.encode(characterSetName, forKey: .characterSetName)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(accessPrivilege, forKey: .accessPrivilege)
    }
}
