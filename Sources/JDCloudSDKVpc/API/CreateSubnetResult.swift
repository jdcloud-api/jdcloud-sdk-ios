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

   子网
   子网相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 创建子网
@objc(CreateSubnetResult)
public class CreateSubnetResult:NSObject,JdCloudResult
{
    /// 子网ID
    var subnetId:String?



    public override init(){
        super.init()
    }

    enum CreateSubnetResultCodingKeys: String, CodingKey {
        case subnetId
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateSubnetResultCodingKeys.self)
        if decoderContainer.contains(.subnetId)
        {
            self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        }
    }
}
public extension CreateSubnetResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateSubnetResultCodingKeys.self)
        try encoderContainer.encode(subnetId, forKey: .subnetId)
    }
}
