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

   配额
   与配额相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询配额，支持：云主机、镜像、密钥、模板、镜像共享
      ///       /// 
@objc(DescribeQuotasResult)
public class DescribeQuotasResult:NSObject,JdCloudResult
{
    /// 配额列表
    var quotas:[Quota?]?



    public override init(){
        super.init()
    }

    enum DescribeQuotasResultCodingKeys: String, CodingKey {
        case quotas
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeQuotasResultCodingKeys.self)
        if decoderContainer.contains(.quotas)
        {
            self.quotas = try decoderContainer.decode([Quota?]?.self, forKey: .quotas)
        }
    }
}
public extension DescribeQuotasResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeQuotasResultCodingKeys.self)
        try encoderContainer.encode(quotas, forKey: .quotas)
    }
}
