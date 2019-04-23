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
import JDCloudSDKCore

/// 根据用户定义的查询条件，获取SQL执行的性能统计信息，例如慢SQL等。用户可以根据这些信息查找与SQL执行相关的性能瓶颈，并进行优化。&lt;br&gt;- 仅支持SQL Server
@objc(DescribeQueryPerformanceResult)
public class DescribeQueryPerformanceResult:NSObject,JdCloudResult
{
    /// 查询性能统计结果集
    var queryPerformanceResult:[QueryPerformanceResult?]?

    /// 总记录条数
    var totalCount:Int?

    /// 当前数据的页码
    var pageNumber:Int?

    /// 每页显示的数据条数
    var pageSize:Int?



    public override init(){
        super.init()
    }

    enum DescribeQueryPerformanceResultCodingKeys: String, CodingKey {
        case queryPerformanceResult
        case totalCount
        case pageNumber
        case pageSize
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeQueryPerformanceResultCodingKeys.self)
        if decoderContainer.contains(.queryPerformanceResult)
        {
            self.queryPerformanceResult = try decoderContainer.decode([QueryPerformanceResult?]?.self, forKey: .queryPerformanceResult)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
        if decoderContainer.contains(.pageNumber)
        {
            self.pageNumber = try decoderContainer.decode(Int?.self, forKey: .pageNumber)
        }
        if decoderContainer.contains(.pageSize)
        {
            self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        }
    }
}
public extension DescribeQueryPerformanceResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeQueryPerformanceResultCodingKeys.self)
        try encoderContainer.encode(queryPerformanceResult, forKey: .queryPerformanceResult)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
    }
}
