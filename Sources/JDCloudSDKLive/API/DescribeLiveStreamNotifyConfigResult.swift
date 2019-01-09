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

   Live API
   直播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询直播流状态通知
@objc(DescribeLiveStreamNotifyConfigResult)
public class DescribeLiveStreamNotifyConfigResult:NSObject,JdCloudResult
{
    /// 您的加速域名
    var publishDomain:String?

    /// 回调地址
    var notifyUrl:String?



    public override init(){
        super.init()
    }

    enum DescribeLiveStreamNotifyConfigResultCodingKeys: String, CodingKey {
        case publishDomain
        case notifyUrl
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeLiveStreamNotifyConfigResultCodingKeys.self)
        if decoderContainer.contains(.publishDomain)
        {
            self.publishDomain = try decoderContainer.decode(String?.self, forKey: .publishDomain)
        }
        if decoderContainer.contains(.notifyUrl)
        {
            self.notifyUrl = try decoderContainer.decode(String?.self, forKey: .notifyUrl)
        }
    }
}
public extension DescribeLiveStreamNotifyConfigResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeLiveStreamNotifyConfigResultCodingKeys.self)
        try encoderContainer.encode(publishDomain, forKey: .publishDomain)
        try encoderContainer.encode(notifyUrl, forKey: .notifyUrl)
    }
}
