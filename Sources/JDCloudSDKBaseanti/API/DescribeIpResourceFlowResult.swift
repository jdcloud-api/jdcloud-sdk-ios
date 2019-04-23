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

   DDoS基础防护相关接口
   DDoS基础防护相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询公网Ip的监控流量
@objc(DescribeIpResourceFlowResult)
public class DescribeIpResourceFlowResult:NSObject,JdCloudResult
{
    /// Data
    var data:IpResourceFlow?



    public override init(){
        super.init()
    }

    enum DescribeIpResourceFlowResultCodingKeys: String, CodingKey {
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeIpResourceFlowResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode(IpResourceFlow?.self, forKey: .data)
        }
    }
}
public extension DescribeIpResourceFlowResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeIpResourceFlowResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
    }
}
