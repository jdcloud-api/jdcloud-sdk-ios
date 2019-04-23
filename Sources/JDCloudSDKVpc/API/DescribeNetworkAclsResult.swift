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

   Acl
   Acl相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询Acl列表
@objc(DescribeNetworkAclsResult)
public class DescribeNetworkAclsResult:NSObject,JdCloudResult
{
    /// networkAcl资源信息列表
    var networkAcls:[NetworkAcl?]?

    /// 总数量
    var totalCount:Double?



    public override init(){
        super.init()
    }

    enum DescribeNetworkAclsResultCodingKeys: String, CodingKey {
        case networkAcls
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeNetworkAclsResultCodingKeys.self)
        if decoderContainer.contains(.networkAcls)
        {
            self.networkAcls = try decoderContainer.decode([NetworkAcl?]?.self, forKey: .networkAcls)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Double?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeNetworkAclsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeNetworkAclsResultCodingKeys.self)
        try encoderContainer.encode(networkAcls, forKey: .networkAcls)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
