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

   性能统计
   性能统计相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  indexPerformanceResult
@objc(IndexPerformanceResult)
public class IndexPerformanceResult:NSObject,Codable{
    /// 数据库名
    var db:String?
    /// 表名
    var table:String?
    /// 索引名
    var index:String?
    /// 索引大小，单位KB
    var sizeKB:Int?
    /// 服务器启动以来，累计索引搜索次数
    var userSeeks:Int?
    /// 服务器启动以来，累计表扫描次数
    var userScans:Int?
    /// 服务器启动以来，累计索引更新次数
    var userUpdates:Int?
    /// 最近索引搜索时间，格式为YYYY-MM-DD hh:mm:ss
    var lastUserSeek:String?
    /// 最近表扫描时间，格式为YYYY-MM-DD hh:mm:ss
    var lastUserScan:String?
    /// 最近索引更新时间，格式为YYYY-MM-DD hh:mm:ss
    var lastUserUpdate:String?



    public override init(){
            super.init()
    }

    enum IndexPerformanceResultCodingKeys: String, CodingKey {
        case db
        case table
        case index
        case sizeKB
        case userSeeks
        case userScans
        case userUpdates
        case lastUserSeek
        case lastUserScan
        case lastUserUpdate
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: IndexPerformanceResultCodingKeys.self)
        if decoderContainer.contains(.db)
        {
            self.db = try decoderContainer.decode(String?.self, forKey: .db)
        }
        if decoderContainer.contains(.table)
        {
            self.table = try decoderContainer.decode(String?.self, forKey: .table)
        }
        if decoderContainer.contains(.index)
        {
            self.index = try decoderContainer.decode(String?.self, forKey: .index)
        }
        if decoderContainer.contains(.sizeKB)
        {
            self.sizeKB = try decoderContainer.decode(Int?.self, forKey: .sizeKB)
        }
        if decoderContainer.contains(.userSeeks)
        {
            self.userSeeks = try decoderContainer.decode(Int?.self, forKey: .userSeeks)
        }
        if decoderContainer.contains(.userScans)
        {
            self.userScans = try decoderContainer.decode(Int?.self, forKey: .userScans)
        }
        if decoderContainer.contains(.userUpdates)
        {
            self.userUpdates = try decoderContainer.decode(Int?.self, forKey: .userUpdates)
        }
        if decoderContainer.contains(.lastUserSeek)
        {
            self.lastUserSeek = try decoderContainer.decode(String?.self, forKey: .lastUserSeek)
        }
        if decoderContainer.contains(.lastUserScan)
        {
            self.lastUserScan = try decoderContainer.decode(String?.self, forKey: .lastUserScan)
        }
        if decoderContainer.contains(.lastUserUpdate)
        {
            self.lastUserUpdate = try decoderContainer.decode(String?.self, forKey: .lastUserUpdate)
        }
    }
}
public extension IndexPerformanceResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: IndexPerformanceResultCodingKeys.self)
         try encoderContainer.encode(db, forKey: .db)
         try encoderContainer.encode(table, forKey: .table)
         try encoderContainer.encode(index, forKey: .index)
         try encoderContainer.encode(sizeKB, forKey: .sizeKB)
         try encoderContainer.encode(userSeeks, forKey: .userSeeks)
         try encoderContainer.encode(userScans, forKey: .userScans)
         try encoderContainer.encode(userUpdates, forKey: .userUpdates)
         try encoderContainer.encode(lastUserSeek, forKey: .lastUserSeek)
         try encoderContainer.encode(lastUserScan, forKey: .lastUserScan)
         try encoderContainer.encode(lastUserUpdate, forKey: .lastUserUpdate)
    }
}
