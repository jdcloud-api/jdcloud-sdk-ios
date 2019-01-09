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

   JDCLOUD BILLING ResourceOrder Services API
   资源单管理API接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 删除资源
@objc(SendResourceOrderStatusMessageResult)
public class SendResourceOrderStatusMessageResult:NSObject,JdCloudResult
{
    /// 结果
    var result:Bool?



    public override init(){
        super.init()
    }

    enum SendResourceOrderStatusMessageResultCodingKeys: String, CodingKey {
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SendResourceOrderStatusMessageResultCodingKeys.self)
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode(Bool?.self, forKey: .result)
        }
    }
}
public extension SendResourceOrderStatusMessageResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SendResourceOrderStatusMessageResultCodingKeys.self)
        try encoderContainer.encode(result, forKey: .result)
    }
}
