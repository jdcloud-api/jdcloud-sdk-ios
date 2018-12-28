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

   Vpc
   与虚拟私有云相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询私有网络资源列表
@objc(GetVpcsResult)
public class GetVpcsResult:NSObject,JdCloudResult
{
    /// Vpcs
    var vpcs:VpcInfo?



    public override init(){
        super.init()
    }

    enum GetVpcsResultCodingKeys: String, CodingKey {
        case vpcs
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetVpcsResultCodingKeys.self)
        self.vpcs = try decoderContainer.decode(VpcInfo?.self, forKey: .vpcs)
    }
}
public extension GetVpcsResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetVpcsResultCodingKeys.self)
        try encoderContainer.encode(vpcs, forKey: .vpcs)
    }
}
