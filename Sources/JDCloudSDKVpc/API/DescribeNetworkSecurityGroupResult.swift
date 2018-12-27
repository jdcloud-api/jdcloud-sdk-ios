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

   安全组
   安全组相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询安全组信息详情
@objc(DescribeNetworkSecurityGroupResult)
public class DescribeNetworkSecurityGroupResult:NSObject,JdCloudResult
{
    /// 安全组资源信息
    var networkSecurityGroup:NetworkSecurityGroup?



    public override init(){
        super.init()
    }

    enum DescribeNetworkSecurityGroupResultCodingKeys: String, CodingKey {
        case networkSecurityGroup
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeNetworkSecurityGroupResultCodingKeys.self)
        self.networkSecurityGroup = try decoderContainer.decode(NetworkSecurityGroup?.self, forKey: .networkSecurityGroup)
    }
}
public extension DescribeNetworkSecurityGroupResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeNetworkSecurityGroupResultCodingKeys.self)
        try encoderContainer.encode(networkSecurityGroup, forKey: .networkSecurityGroup)
    }
}