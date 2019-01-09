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

/// 查询直播域名详情
@objc(QueryLiveDomainDetailResult)
public class QueryLiveDomainDetailResult:NSObject,JdCloudResult
{
    /// 域名类型
    var domainType:String?

    /// 播放域名
    var playDomain:String?

    /// 推流域名
    var publishDomain:String?

    /// 回源域名
    var originDomain:String?

    /// 创建时间
    var createdTime:String?

    /// cname
    var cname:String?

    /// 站点类型推流push，拉流pull
    var siteType:String?

    /// 域名状态
    var status:String?

    /// 回源信息
    var source:BackSourceInfo?

    /// 域名回源类型
    var sourceType:String?

    /// 回源类型目前只能未rtmp
    var backSourceType:String?

    /// 视频格式 H.264
    var videoType:String?

    /// 音频格式AAC
    var audioType:String?

    /// 域名类型
    var type:String?

    /// 默认回源host
    var defaultSourceHost:String?

    /// 备案号
    var archiveNo:String?

    /// rtmpDomain
    var rtmpDomain:String?

    /// rtmpCname
    var rtmpCname:String?

    /// hdlDomain
    var hdlDomain:String?

    /// hdlCname
    var hdlCname:String?

    /// hlsDomain
    var hlsDomain:String?

    /// hlsCname
    var hlsCname:String?

    /// forwardCustomVhost
    var forwardCustomVhost:String?

    /// flvUrls
    var flvUrls:[String?]?

    /// hlsUrls
    var hlsUrls:[String?]?

    /// rtmpUrls
    var rtmpUrls:[String?]?

    /// 转协议
    var protocolConverts:[ProtocolConvert?]?

    /// https证书
    var certificate:String?

    /// https私钥
    var rsaKey:String?

    /// url鉴权开关
    var accesskeyType:Int?

    /// url鉴权key
    var accesskeyKey:String?

    /// playAuthLifeTime
    var playAuthLifeTime:Int?

    /// authLifeTime
    var authLifeTime:Int?

    /// 转推鉴权开关
    var forwardAccessKeyType:Int?

    /// 转推鉴权key
    var forwardPrivateKey:String?

    /// 回源鉴权开关
    var originAccessKeyType:Int?

    /// 回源鉴权key
    var originPrivateKey:String?

    /// app列表
    var allowApps:[String?]?

    /// ip黑名单列表
    var ips:[String?]?

    /// 是否开启ip黑名单
    var blackIpsEnable:String?

    /// 外部关联id
    var externId:String?

    /// ignoreQueryString
    var ignoreQueryString:String?

    /// referType
    var referType:String?

    /// referList
    var referList:[String?]?

    /// 允许无refer
    var allowNoReferHeader:String?

    /// 允许空refer
    var allowNullReferHeader:String?

    /// 推流中断超时时间(单位秒)
    var publishNormalTimeout:String?

    /// 推断流通知Url
    var notifyCustomUrl:String?

    /// 推断流通知key
    var notifyCustomAuthKey:String?



    public override init(){
        super.init()
    }

    enum QueryLiveDomainDetailResultCodingKeys: String, CodingKey {
        case domainType
        case playDomain
        case publishDomain
        case originDomain
        case createdTime
        case cname
        case siteType
        case status
        case source
        case sourceType
        case backSourceType
        case videoType
        case audioType
        case type
        case defaultSourceHost
        case archiveNo
        case rtmpDomain
        case rtmpCname
        case hdlDomain
        case hdlCname
        case hlsDomain
        case hlsCname
        case forwardCustomVhost
        case flvUrls
        case hlsUrls
        case rtmpUrls
        case protocolConverts
        case certificate
        case rsaKey
        case accesskeyType
        case accesskeyKey
        case playAuthLifeTime
        case authLifeTime
        case forwardAccessKeyType
        case forwardPrivateKey
        case originAccessKeyType
        case originPrivateKey
        case allowApps
        case ips
        case blackIpsEnable
        case externId
        case ignoreQueryString
        case referType
        case referList
        case allowNoReferHeader
        case allowNullReferHeader
        case publishNormalTimeout
        case notifyCustomUrl
        case notifyCustomAuthKey
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueryLiveDomainDetailResultCodingKeys.self)
        if decoderContainer.contains(.domainType)
        {
            self.domainType = try decoderContainer.decode(String?.self, forKey: .domainType)
        }
        if decoderContainer.contains(.playDomain)
        {
            self.playDomain = try decoderContainer.decode(String?.self, forKey: .playDomain)
        }
        if decoderContainer.contains(.publishDomain)
        {
            self.publishDomain = try decoderContainer.decode(String?.self, forKey: .publishDomain)
        }
        if decoderContainer.contains(.originDomain)
        {
            self.originDomain = try decoderContainer.decode(String?.self, forKey: .originDomain)
        }
        if decoderContainer.contains(.createdTime)
        {
            self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        }
        if decoderContainer.contains(.cname)
        {
            self.cname = try decoderContainer.decode(String?.self, forKey: .cname)
        }
        if decoderContainer.contains(.siteType)
        {
            self.siteType = try decoderContainer.decode(String?.self, forKey: .siteType)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.source)
        {
            self.source = try decoderContainer.decode(BackSourceInfo?.self, forKey: .source)
        }
        if decoderContainer.contains(.sourceType)
        {
            self.sourceType = try decoderContainer.decode(String?.self, forKey: .sourceType)
        }
        if decoderContainer.contains(.backSourceType)
        {
            self.backSourceType = try decoderContainer.decode(String?.self, forKey: .backSourceType)
        }
        if decoderContainer.contains(.videoType)
        {
            self.videoType = try decoderContainer.decode(String?.self, forKey: .videoType)
        }
        if decoderContainer.contains(.audioType)
        {
            self.audioType = try decoderContainer.decode(String?.self, forKey: .audioType)
        }
        if decoderContainer.contains(.type)
        {
            self.type = try decoderContainer.decode(String?.self, forKey: .type)
        }
        if decoderContainer.contains(.defaultSourceHost)
        {
            self.defaultSourceHost = try decoderContainer.decode(String?.self, forKey: .defaultSourceHost)
        }
        if decoderContainer.contains(.archiveNo)
        {
            self.archiveNo = try decoderContainer.decode(String?.self, forKey: .archiveNo)
        }
        if decoderContainer.contains(.rtmpDomain)
        {
            self.rtmpDomain = try decoderContainer.decode(String?.self, forKey: .rtmpDomain)
        }
        if decoderContainer.contains(.rtmpCname)
        {
            self.rtmpCname = try decoderContainer.decode(String?.self, forKey: .rtmpCname)
        }
        if decoderContainer.contains(.hdlDomain)
        {
            self.hdlDomain = try decoderContainer.decode(String?.self, forKey: .hdlDomain)
        }
        if decoderContainer.contains(.hdlCname)
        {
            self.hdlCname = try decoderContainer.decode(String?.self, forKey: .hdlCname)
        }
        if decoderContainer.contains(.hlsDomain)
        {
            self.hlsDomain = try decoderContainer.decode(String?.self, forKey: .hlsDomain)
        }
        if decoderContainer.contains(.hlsCname)
        {
            self.hlsCname = try decoderContainer.decode(String?.self, forKey: .hlsCname)
        }
        if decoderContainer.contains(.forwardCustomVhost)
        {
            self.forwardCustomVhost = try decoderContainer.decode(String?.self, forKey: .forwardCustomVhost)
        }
        if decoderContainer.contains(.flvUrls)
        {
            self.flvUrls = try decoderContainer.decode([String?]?.self, forKey: .flvUrls)
        }
        if decoderContainer.contains(.hlsUrls)
        {
            self.hlsUrls = try decoderContainer.decode([String?]?.self, forKey: .hlsUrls)
        }
        if decoderContainer.contains(.rtmpUrls)
        {
            self.rtmpUrls = try decoderContainer.decode([String?]?.self, forKey: .rtmpUrls)
        }
        if decoderContainer.contains(.protocolConverts)
        {
            self.protocolConverts = try decoderContainer.decode([ProtocolConvert?]?.self, forKey: .protocolConverts)
        }
        if decoderContainer.contains(.certificate)
        {
            self.certificate = try decoderContainer.decode(String?.self, forKey: .certificate)
        }
        if decoderContainer.contains(.rsaKey)
        {
            self.rsaKey = try decoderContainer.decode(String?.self, forKey: .rsaKey)
        }
        if decoderContainer.contains(.accesskeyType)
        {
            self.accesskeyType = try decoderContainer.decode(Int?.self, forKey: .accesskeyType)
        }
        if decoderContainer.contains(.accesskeyKey)
        {
            self.accesskeyKey = try decoderContainer.decode(String?.self, forKey: .accesskeyKey)
        }
        if decoderContainer.contains(.playAuthLifeTime)
        {
            self.playAuthLifeTime = try decoderContainer.decode(Int?.self, forKey: .playAuthLifeTime)
        }
        if decoderContainer.contains(.authLifeTime)
        {
            self.authLifeTime = try decoderContainer.decode(Int?.self, forKey: .authLifeTime)
        }
        if decoderContainer.contains(.forwardAccessKeyType)
        {
            self.forwardAccessKeyType = try decoderContainer.decode(Int?.self, forKey: .forwardAccessKeyType)
        }
        if decoderContainer.contains(.forwardPrivateKey)
        {
            self.forwardPrivateKey = try decoderContainer.decode(String?.self, forKey: .forwardPrivateKey)
        }
        if decoderContainer.contains(.originAccessKeyType)
        {
            self.originAccessKeyType = try decoderContainer.decode(Int?.self, forKey: .originAccessKeyType)
        }
        if decoderContainer.contains(.originPrivateKey)
        {
            self.originPrivateKey = try decoderContainer.decode(String?.self, forKey: .originPrivateKey)
        }
        if decoderContainer.contains(.allowApps)
        {
            self.allowApps = try decoderContainer.decode([String?]?.self, forKey: .allowApps)
        }
        if decoderContainer.contains(.ips)
        {
            self.ips = try decoderContainer.decode([String?]?.self, forKey: .ips)
        }
        if decoderContainer.contains(.blackIpsEnable)
        {
            self.blackIpsEnable = try decoderContainer.decode(String?.self, forKey: .blackIpsEnable)
        }
        if decoderContainer.contains(.externId)
        {
            self.externId = try decoderContainer.decode(String?.self, forKey: .externId)
        }
        if decoderContainer.contains(.ignoreQueryString)
        {
            self.ignoreQueryString = try decoderContainer.decode(String?.self, forKey: .ignoreQueryString)
        }
        if decoderContainer.contains(.referType)
        {
            self.referType = try decoderContainer.decode(String?.self, forKey: .referType)
        }
        if decoderContainer.contains(.referList)
        {
            self.referList = try decoderContainer.decode([String?]?.self, forKey: .referList)
        }
        if decoderContainer.contains(.allowNoReferHeader)
        {
            self.allowNoReferHeader = try decoderContainer.decode(String?.self, forKey: .allowNoReferHeader)
        }
        if decoderContainer.contains(.allowNullReferHeader)
        {
            self.allowNullReferHeader = try decoderContainer.decode(String?.self, forKey: .allowNullReferHeader)
        }
        if decoderContainer.contains(.publishNormalTimeout)
        {
            self.publishNormalTimeout = try decoderContainer.decode(String?.self, forKey: .publishNormalTimeout)
        }
        if decoderContainer.contains(.notifyCustomUrl)
        {
            self.notifyCustomUrl = try decoderContainer.decode(String?.self, forKey: .notifyCustomUrl)
        }
        if decoderContainer.contains(.notifyCustomAuthKey)
        {
            self.notifyCustomAuthKey = try decoderContainer.decode(String?.self, forKey: .notifyCustomAuthKey)
        }
    }
}
public extension QueryLiveDomainDetailResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryLiveDomainDetailResultCodingKeys.self)
        try encoderContainer.encode(domainType, forKey: .domainType)
        try encoderContainer.encode(playDomain, forKey: .playDomain)
        try encoderContainer.encode(publishDomain, forKey: .publishDomain)
        try encoderContainer.encode(originDomain, forKey: .originDomain)
        try encoderContainer.encode(createdTime, forKey: .createdTime)
        try encoderContainer.encode(cname, forKey: .cname)
        try encoderContainer.encode(siteType, forKey: .siteType)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(source, forKey: .source)
        try encoderContainer.encode(sourceType, forKey: .sourceType)
        try encoderContainer.encode(backSourceType, forKey: .backSourceType)
        try encoderContainer.encode(videoType, forKey: .videoType)
        try encoderContainer.encode(audioType, forKey: .audioType)
        try encoderContainer.encode(type, forKey: .type)
        try encoderContainer.encode(defaultSourceHost, forKey: .defaultSourceHost)
        try encoderContainer.encode(archiveNo, forKey: .archiveNo)
        try encoderContainer.encode(rtmpDomain, forKey: .rtmpDomain)
        try encoderContainer.encode(rtmpCname, forKey: .rtmpCname)
        try encoderContainer.encode(hdlDomain, forKey: .hdlDomain)
        try encoderContainer.encode(hdlCname, forKey: .hdlCname)
        try encoderContainer.encode(hlsDomain, forKey: .hlsDomain)
        try encoderContainer.encode(hlsCname, forKey: .hlsCname)
        try encoderContainer.encode(forwardCustomVhost, forKey: .forwardCustomVhost)
        try encoderContainer.encode(flvUrls, forKey: .flvUrls)
        try encoderContainer.encode(hlsUrls, forKey: .hlsUrls)
        try encoderContainer.encode(rtmpUrls, forKey: .rtmpUrls)
        try encoderContainer.encode(protocolConverts, forKey: .protocolConverts)
        try encoderContainer.encode(certificate, forKey: .certificate)
        try encoderContainer.encode(rsaKey, forKey: .rsaKey)
        try encoderContainer.encode(accesskeyType, forKey: .accesskeyType)
        try encoderContainer.encode(accesskeyKey, forKey: .accesskeyKey)
        try encoderContainer.encode(playAuthLifeTime, forKey: .playAuthLifeTime)
        try encoderContainer.encode(authLifeTime, forKey: .authLifeTime)
        try encoderContainer.encode(forwardAccessKeyType, forKey: .forwardAccessKeyType)
        try encoderContainer.encode(forwardPrivateKey, forKey: .forwardPrivateKey)
        try encoderContainer.encode(originAccessKeyType, forKey: .originAccessKeyType)
        try encoderContainer.encode(originPrivateKey, forKey: .originPrivateKey)
        try encoderContainer.encode(allowApps, forKey: .allowApps)
        try encoderContainer.encode(ips, forKey: .ips)
        try encoderContainer.encode(blackIpsEnable, forKey: .blackIpsEnable)
        try encoderContainer.encode(externId, forKey: .externId)
        try encoderContainer.encode(ignoreQueryString, forKey: .ignoreQueryString)
        try encoderContainer.encode(referType, forKey: .referType)
        try encoderContainer.encode(referList, forKey: .referList)
        try encoderContainer.encode(allowNoReferHeader, forKey: .allowNoReferHeader)
        try encoderContainer.encode(allowNullReferHeader, forKey: .allowNullReferHeader)
        try encoderContainer.encode(publishNormalTimeout, forKey: .publishNormalTimeout)
        try encoderContainer.encode(notifyCustomUrl, forKey: .notifyCustomUrl)
        try encoderContainer.encode(notifyCustomAuthKey, forKey: .notifyCustomAuthKey)
    }
}
