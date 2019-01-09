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

   审计管理
   审计管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查看当前实例已开启的审计选项。如当前实例未开启审计，则返回空&lt;br&gt;- 仅支持SQL Server
@objc(DescribeAuditResult)
public class DescribeAuditResult:NSObject,JdCloudResult
{
    /// Enabled
    var enabled:[String?]?



    public override init(){
        super.init()
    }

    enum DescribeAuditResultCodingKeys: String, CodingKey {
        case enabled
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeAuditResultCodingKeys.self)
        if decoderContainer.contains(.enabled)
        {
            self.enabled = try decoderContainer.decode([String?]?.self, forKey: .enabled)
        }
    }
}
public extension DescribeAuditResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAuditResultCodingKeys.self)
        try encoderContainer.encode(enabled, forKey: .enabled)
    }
}
