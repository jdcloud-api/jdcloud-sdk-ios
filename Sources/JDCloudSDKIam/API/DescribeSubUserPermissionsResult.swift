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

   策略管理接口
   策略管理接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询子用户策略列表
@objc(DescribeSubUserPermissionsResult)
public class DescribeSubUserPermissionsResult:NSObject,JdCloudResult
{
    /// 总数
    var total:Int?

    /// 权限列表信息
    var permissions:[Permission?]?



    public override init(){
        super.init()
    }

    enum DescribeSubUserPermissionsResultCodingKeys: String, CodingKey {
        case total
        case permissions
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeSubUserPermissionsResultCodingKeys.self)
        if decoderContainer.contains(.total)
        {
            self.total = try decoderContainer.decode(Int?.self, forKey: .total)
        }
        if decoderContainer.contains(.permissions)
        {
            self.permissions = try decoderContainer.decode([Permission?]?.self, forKey: .permissions)
        }
    }
}
public extension DescribeSubUserPermissionsResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeSubUserPermissionsResultCodingKeys.self)
        try encoderContainer.encode(total, forKey: .total)
        try encoderContainer.encode(permissions, forKey: .permissions)
    }
}
