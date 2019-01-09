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

   Ip高防实例相关接口
   Ip高防实例相关接口，以及转发配置中实例级别的接口等

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 创建实例
@objc(CreateInstanceResult)
public class CreateInstanceResult:NSObject,JdCloudResult
{
    /// OrderId
    var orderId:String?



    public override init(){
        super.init()
    }

    enum CreateInstanceResultCodingKeys: String, CodingKey {
        case orderId
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateInstanceResultCodingKeys.self)
        if decoderContainer.contains(.orderId)
        {
            self.orderId = try decoderContainer.decode(String?.self, forKey: .orderId)
        }
    }
}
public extension CreateInstanceResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateInstanceResultCodingKeys.self)
        try encoderContainer.encode(orderId, forKey: .orderId)
    }
}
