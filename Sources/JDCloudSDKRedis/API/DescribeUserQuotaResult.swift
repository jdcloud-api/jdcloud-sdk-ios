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

   缓存Redis配额接口
   缓存Redis配额相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
    import JDCloudSDKCommon

/// 查询账户配额信息
@objc(DescribeUserQuotaResult)
public class DescribeUserQuotaResult:NSObject,JdCloudResult
{
    /// Quota
    var quota:Quota?



    public override init(){
        super.init()
    }

    enum DescribeUserQuotaResultCodingKeys: String, CodingKey {
        case quota
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeUserQuotaResultCodingKeys.self)
        if decoderContainer.contains(.quota)
        {
            self.quota = try decoderContainer.decode(Quota?.self, forKey: .quota)
        }
    }
}
public extension DescribeUserQuotaResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeUserQuotaResultCodingKeys.self)
        try encoderContainer.encode(quota, forKey: .quota)
    }
}
