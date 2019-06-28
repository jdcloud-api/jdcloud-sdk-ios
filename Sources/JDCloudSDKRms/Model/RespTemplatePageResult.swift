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

   Message-Content-APIs
   富媒体模板内容创建、查询相关接口

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  respTemplatePageResult
@objc(RespTemplatePageResult)
public class RespTemplatePageResult:NSObject,Codable{
    /// 总条数
    var count:Int64?
    /// 当前页
    var pageNum:Int?
    /// 每页条数
    var pageSize:Int?
    /// 总页数
    var pageCount:Int?
    /// 数据
    var list:[RespQueryTemplateListData?]?



    public override init(){
            super.init()
    }

    enum RespTemplatePageResultCodingKeys: String, CodingKey {
        case count
        case pageNum
        case pageSize
        case pageCount
        case list
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RespTemplatePageResultCodingKeys.self)
        if decoderContainer.contains(.count)
        {
            self.count = try decoderContainer.decode(Int64?.self, forKey: .count)
        }
        if decoderContainer.contains(.pageNum)
        {
            self.pageNum = try decoderContainer.decode(Int?.self, forKey: .pageNum)
        }
        if decoderContainer.contains(.pageSize)
        {
            self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        }
        if decoderContainer.contains(.pageCount)
        {
            self.pageCount = try decoderContainer.decode(Int?.self, forKey: .pageCount)
        }
        if decoderContainer.contains(.list)
        {
            self.list = try decoderContainer.decode([RespQueryTemplateListData?]?.self, forKey: .list)
        }
    }
}
public extension RespTemplatePageResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RespTemplatePageResultCodingKeys.self)
         try encoderContainer.encode(count, forKey: .count)
         try encoderContainer.encode(pageNum, forKey: .pageNum)
         try encoderContainer.encode(pageSize, forKey: .pageSize)
         try encoderContainer.encode(pageCount, forKey: .pageCount)
         try encoderContainer.encode(list, forKey: .list)
    }
}