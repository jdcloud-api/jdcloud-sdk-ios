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

   SQL 拦截
   SQL 拦截相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查看开启高安全模式后，当前实例的 SQL 拦截记录&lt;br&gt;- 仅支持MySQL
@objc(DescribeInterceptResultResult)
public class DescribeInterceptResultResult:NSObject,JdCloudResult
{
    /// InterceptResult
    var interceptResult:[InterceptResult?]?

    /// TotalCount
    var totalCount:Int?



    public override init(){
        super.init()
    }

    enum DescribeInterceptResultResultCodingKeys: String, CodingKey {
        case interceptResult
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeInterceptResultResultCodingKeys.self)
        if decoderContainer.contains(.interceptResult)
        {
            self.interceptResult = try decoderContainer.decode([InterceptResult?]?.self, forKey: .interceptResult)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeInterceptResultResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeInterceptResultResultCodingKeys.self)
        try encoderContainer.encode(interceptResult, forKey: .interceptResult)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}