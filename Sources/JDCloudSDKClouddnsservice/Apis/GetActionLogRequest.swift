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

   操作列表
   云解析OpenAPI操作列表接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查看用户在云解析服务下的操作记录
public class GetActionLogRequest:JdCloudRequest
{
    /// 分页参数，页的序号，默认是1
    var pageNumber:Int

    /// 分页参数，每页含有的结果的数目，默认是10
    var pageSize:Int

    /// 记录的起始时间，格式：UTC时间例如2017-11-10T23:00:00Z
    var startTime:String

    /// 记录的终止时间，格式：UTC时间例如2017-11-10T23:00:00Z
    var endTime:String

    /// 日志需要匹配的关键词
    var keyWord:String?

    /// 日志里面的结果是成功还是失败
    var success:Bool?

    /// 日志的类型
    var type:Int?


    public init(regionId: String,pageNumber:Int,pageSize:Int,startTime:String,endTime:String){
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.startTime = startTime
        self.endTime = endTime
        super.init(regionId: regionId)
    }


    enum GetActionLogRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case startTime
        case endTime
        case keyWord
        case success
        case type
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: GetActionLogRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(keyWord, forKey: .keyWord)
        try container.encode(success, forKey: .success)
        try container.encode(type, forKey: .type)

    }
}