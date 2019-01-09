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

   私有网络
   私有网络相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询私有网络列表
@objc(DescribeVpcsResult)
public class DescribeVpcsResult:NSObject,JdCloudResult
{
    /// Vpc资源信息列表
    var vpcs:[Vpc?]?

    /// 总数量
    var totalCount:Double?



    public override init(){
        super.init()
    }

    enum DescribeVpcsResultCodingKeys: String, CodingKey {
        case vpcs
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeVpcsResultCodingKeys.self)
        if decoderContainer.contains(.vpcs)
        {
            self.vpcs = try decoderContainer.decode([Vpc?]?.self, forKey: .vpcs)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Double?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeVpcsResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeVpcsResultCodingKeys.self)
        try encoderContainer.encode(vpcs, forKey: .vpcs)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
