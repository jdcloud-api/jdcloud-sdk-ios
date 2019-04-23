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

   binlog日志
   binlog日志相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 获取MySQL实例中binlog的详细信息&lt;br&gt;- 仅支持MySQL
@objc(DescribeBinlogsResult)
public class DescribeBinlogsResult:NSObject,JdCloudResult
{
    /// 总记录数
    var totalCount:Int?

    /// 备份集合
    var binlogs:[Binlog?]?



    public override init(){
        super.init()
    }

    enum DescribeBinlogsResultCodingKeys: String, CodingKey {
        case totalCount
        case binlogs
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeBinlogsResultCodingKeys.self)
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
        if decoderContainer.contains(.binlogs)
        {
            self.binlogs = try decoderContainer.decode([Binlog?]?.self, forKey: .binlogs)
        }
    }
}
public extension DescribeBinlogsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeBinlogsResultCodingKeys.self)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
        try encoderContainer.encode(binlogs, forKey: .binlogs)
    }
}
