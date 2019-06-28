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

   JDCLOUD Renewal API v2
   API related to Renewal

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 开通、取消实例自动续费
@objc(SetRenewalResult)
public class SetRenewalResult:NSObject,JdCloudResult
{
    /// 更新成功条数
    var stringResult:String?



    public override init(){
        super.init()
    }

    enum SetRenewalResultCodingKeys: String, CodingKey {
        case stringResult
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SetRenewalResultCodingKeys.self)
        if decoderContainer.contains(.stringResult)
        {
            self.stringResult = try decoderContainer.decode(String?.self, forKey: .stringResult)
        }
    }
}
public extension SetRenewalResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetRenewalResultCodingKeys.self)
        try encoderContainer.encode(stringResult, forKey: .stringResult)
    }
}
