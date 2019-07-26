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

   Anti DDos Pro non-Web Rule Configuration APIs
   Anti DDos Pro non-Web Rule Configuration APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询转发规则的白名单规则
@objc(DescribeWhiteListRuleOfForwardRuleResult)
public class DescribeWhiteListRuleOfForwardRuleResult:NSObject,JdCloudResult
{
    /// Data
    var data:ForwardWhiteListRule?



    public override init(){
        super.init()
    }

    enum DescribeWhiteListRuleOfForwardRuleResultCodingKeys: String, CodingKey {
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeWhiteListRuleOfForwardRuleResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode(ForwardWhiteListRule?.self, forKey: .data)
        }
    }
}
public extension DescribeWhiteListRuleOfForwardRuleResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeWhiteListRuleOfForwardRuleResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
    }
}
