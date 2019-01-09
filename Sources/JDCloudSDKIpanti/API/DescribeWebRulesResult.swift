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

   网站转发配置相关接口
   网站转发配置相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询某个实例下的网站类规则
@objc(DescribeWebRulesResult)
public class DescribeWebRulesResult:NSObject,JdCloudResult
{
    /// DataList
    var dataList:[WebRule?]?

    /// TotalCount
    var totalCount:Int?



    public override init(){
        super.init()
    }

    enum DescribeWebRulesResultCodingKeys: String, CodingKey {
        case dataList
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeWebRulesResultCodingKeys.self)
        if decoderContainer.contains(.dataList)
        {
            self.dataList = try decoderContainer.decode([WebRule?]?.self, forKey: .dataList)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeWebRulesResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeWebRulesResultCodingKeys.self)
        try encoderContainer.encode(dataList, forKey: .dataList)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
