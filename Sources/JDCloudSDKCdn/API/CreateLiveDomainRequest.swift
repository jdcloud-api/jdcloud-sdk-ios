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

   JCloud Openapi For CDN
   Openapi For JCLOUD cdn

   OpenAPI spec version: v1
   Contact: pid-cdn@jd.com

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建直播域名
@objc(CreateLiveDomainRequest)
public class CreateLiveDomainRequest:JdCloudRequest
{
    /// 播放域名
    var playDomain:String?

    /// 创建推流域名时，必传推流域名
    var publishDomain:String?

    /// 回源类型只能是[ips,domain]中的一种
    var sourceType:String?

    /// BackHttpType
    var backHttpType:String?

    /// 默认回源host
    var defaultSourceHost:String?

    /// 站点类型pull(拉流)push(推流)
    var siteType:String?

    /// 回源类型，目前只能为rtmp
    var backSourceType:String?

    /// IpSource
    var ipSource:[IpSourceInfo?]?

    /// DomainSource
    var domainSource:[DomainSourceInfo?]?




    enum CreateLiveDomainRequestRequestCodingKeys: String, CodingKey {
        case playDomain
        case publishDomain
        case sourceType
        case backHttpType
        case defaultSourceHost
        case siteType
        case backSourceType
        case ipSource
        case domainSource
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateLiveDomainRequestRequestCodingKeys.self)
        try encoderContainer.encode(playDomain, forKey: .playDomain)
        try encoderContainer.encode(publishDomain, forKey: .publishDomain)
        try encoderContainer.encode(sourceType, forKey: .sourceType)
        try encoderContainer.encode(backHttpType, forKey: .backHttpType)
        try encoderContainer.encode(defaultSourceHost, forKey: .defaultSourceHost)
        try encoderContainer.encode(siteType, forKey: .siteType)
        try encoderContainer.encode(backSourceType, forKey: .backSourceType)
        try encoderContainer.encode(ipSource, forKey: .ipSource)
        try encoderContainer.encode(domainSource, forKey: .domainSource)

    }
}
