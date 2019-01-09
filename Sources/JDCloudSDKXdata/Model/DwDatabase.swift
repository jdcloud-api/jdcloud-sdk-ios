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

///  dwDatabase
@objc(DwDatabase)
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
    public func encode(to encoder: Encoder) throws {
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
