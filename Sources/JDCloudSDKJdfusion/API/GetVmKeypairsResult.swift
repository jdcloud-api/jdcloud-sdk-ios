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

   Vm-Keypair
   与密钥对相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 根据云提供商查询对应的密钥对资源信息
@objc(GetVmKeypairsResult)
public class GetVmKeypairsResult:NSObject,JdCloudResult
{
    /// Keypairs
    var keypairs:[KeypairInfo?]?



    public override init(){
        super.init()
    }

    enum GetVmKeypairsResultCodingKeys: String, CodingKey {
        case keypairs
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetVmKeypairsResultCodingKeys.self)
        if decoderContainer.contains(.keypairs)
        {
            self.keypairs = try decoderContainer.decode([KeypairInfo?]?.self, forKey: .keypairs)
        }
    }
}
public extension GetVmKeypairsResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetVmKeypairsResultCodingKeys.self)
        try encoderContainer.encode(keypairs, forKey: .keypairs)
    }
}