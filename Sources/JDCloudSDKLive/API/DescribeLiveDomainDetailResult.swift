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

   Live-Video
   直播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询指定域名相关信息
@objc(DescribeLiveDomainDetailResult)
public class DescribeLiveDomainDetailResult:NSObject,JdCloudResult
{
    /// 推流域名集合
    var publishDomains:[PublishDomain?]?

    /// 直播域名集合
    var playDomains:[PlayDomain?]?



    public override init(){
        super.init()
    }

    enum DescribeLiveDomainDetailResultCodingKeys: String, CodingKey {
        case publishDomains
        case playDomains
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeLiveDomainDetailResultCodingKeys.self)
        if decoderContainer.contains(.publishDomains)
        {
            self.publishDomains = try decoderContainer.decode([PublishDomain?]?.self, forKey: .publishDomains)
        }
        if decoderContainer.contains(.playDomains)
        {
            self.playDomains = try decoderContainer.decode([PlayDomain?]?.self, forKey: .playDomains)
        }
    }
}
public extension DescribeLiveDomainDetailResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeLiveDomainDetailResultCodingKeys.self)
        try encoderContainer.encode(publishDomains, forKey: .publishDomains)
        try encoderContainer.encode(playDomains, forKey: .playDomains)
    }
}
