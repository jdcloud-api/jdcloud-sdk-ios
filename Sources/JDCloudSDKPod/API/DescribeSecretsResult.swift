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

   镜像仓库认证信息
   关于镜像仓库认证信息的相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询 secret 列表。&lt;br&gt; 
      ///       /// 此接口支持分页查询，默认每页20条。
      ///       /// 
@objc(DescribeSecretsResult)
public class DescribeSecretsResult:NSObject,JdCloudResult
{
    /// Secrets
    var secrets:[Secret?]?

    /// TotalCount
    var totalCount:Double?



    public override init(){
        super.init()
    }

    enum DescribeSecretsResultCodingKeys: String, CodingKey {
        case secrets
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeSecretsResultCodingKeys.self)
        if decoderContainer.contains(.secrets)
        {
            self.secrets = try decoderContainer.decode([Secret?]?.self, forKey: .secrets)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Double?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeSecretsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeSecretsResultCodingKeys.self)
        try encoderContainer.encode(secrets, forKey: .secrets)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
