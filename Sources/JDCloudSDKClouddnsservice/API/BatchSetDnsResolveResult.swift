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

   解析记录
   云解析OpenAPI解析记录接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 同一个主域名下，批量新增、更新导入解析记录&lt;br&gt;
      ///       /// 如果解析记录的ID为0，是新增解析记录，如果不为0，则是更新解析记录。
      ///       /// 
@objc(BatchSetDnsResolveResult)
public class BatchSetDnsResolveResult:NSObject,JdCloudResult
{
    /// 对应每条设置的解析列表的结果
    var data:[String?]?



    public override init(){
        super.init()
    }

    enum BatchSetDnsResolveResultCodingKeys: String, CodingKey {
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BatchSetDnsResolveResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode([String?]?.self, forKey: .data)
        }
    }
}
public extension BatchSetDnsResolveResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BatchSetDnsResolveResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
    }
}
