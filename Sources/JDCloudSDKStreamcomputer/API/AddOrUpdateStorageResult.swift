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

   storage相关 API
   流计算storage相关信息接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 创建或者更新storage
@objc(AddOrUpdateStorageResult)
public class AddOrUpdateStorageResult:NSObject,JdCloudResult
{
    /// Message
    var message:String?

    /// Status
    var status:Bool?



    public override init(){
        super.init()
    }

    enum AddOrUpdateStorageResultCodingKeys: String, CodingKey {
        case message
        case status
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AddOrUpdateStorageResultCodingKeys.self)
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Bool?.self, forKey: .status)
        }
    }
}
public extension AddOrUpdateStorageResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddOrUpdateStorageResultCodingKeys.self)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(status, forKey: .status)
    }
}
