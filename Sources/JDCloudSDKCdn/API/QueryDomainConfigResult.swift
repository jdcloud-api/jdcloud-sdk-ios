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

/// 查询域名配置信息
@objc(QueryDomainConfigResult)
public class QueryDomainConfigResult:NSObject,JdCloudResult
{
    /// 忽略参数[on,off]
    var ignoreQueryString:String?

    /// range参数[on,off]
    var range:String?

    /// httpType参数[on,off]
    var httpType:String?

    /// https证书
    var httpsCertificate:String?

    /// rsa秘钥
    var httpsRsaKey:String?

    /// 跳转类型[default,http,https]
    var httpsJumpType:String?

    /// 是否支持视频拖拽[on,off]
    var videoDraft:String?

    /// group
    var groupName:String?

    /// ShareId
    var shareId:Int64?

    /// ShareName
    var shareName:String?

    /// JcdnTimeAnti
    var jcdnTimeAnti:String?

    /// ShareCache
    var shareCache:String?

    /// IsShareOpen
    var isShareOpen:String?

    /// CacheRules
    var cacheRules:[CacheRule?]?



    public override init(){
        super.init()
    }

    enum QueryDomainConfigResultCodingKeys: String, CodingKey {
        case ignoreQueryString
        case range
        case httpType
        case httpsCertificate
        case httpsRsaKey
        case httpsJumpType
        case videoDraft
        case groupName
        case shareId
        case shareName
        case jcdnTimeAnti
        case shareCache
        case isShareOpen
        case cacheRules
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueryDomainConfigResultCodingKeys.self)
        if decoderContainer.contains(.ignoreQueryString)
        {
            self.ignoreQueryString = try decoderContainer.decode(String?.self, forKey: .ignoreQueryString)
        }
        if decoderContainer.contains(.range)
        {
            self.range = try decoderContainer.decode(String?.self, forKey: .range)
        }
        if decoderContainer.contains(.httpType)
        {
            self.httpType = try decoderContainer.decode(String?.self, forKey: .httpType)
        }
        if decoderContainer.contains(.httpsCertificate)
        {
            self.httpsCertificate = try decoderContainer.decode(String?.self, forKey: .httpsCertificate)
        }
        if decoderContainer.contains(.httpsRsaKey)
        {
            self.httpsRsaKey = try decoderContainer.decode(String?.self, forKey: .httpsRsaKey)
        }
        if decoderContainer.contains(.httpsJumpType)
        {
            self.httpsJumpType = try decoderContainer.decode(String?.self, forKey: .httpsJumpType)
        }
        if decoderContainer.contains(.videoDraft)
        {
            self.videoDraft = try decoderContainer.decode(String?.self, forKey: .videoDraft)
        }
        if decoderContainer.contains(.groupName)
        {
            self.groupName = try decoderContainer.decode(String?.self, forKey: .groupName)
        }
        if decoderContainer.contains(.shareId)
        {
            self.shareId = try decoderContainer.decode(Int64?.self, forKey: .shareId)
        }
        if decoderContainer.contains(.shareName)
        {
            self.shareName = try decoderContainer.decode(String?.self, forKey: .shareName)
        }
        if decoderContainer.contains(.jcdnTimeAnti)
        {
            self.jcdnTimeAnti = try decoderContainer.decode(String?.self, forKey: .jcdnTimeAnti)
        }
        if decoderContainer.contains(.shareCache)
        {
            self.shareCache = try decoderContainer.decode(String?.self, forKey: .shareCache)
        }
        if decoderContainer.contains(.isShareOpen)
        {
            self.isShareOpen = try decoderContainer.decode(String?.self, forKey: .isShareOpen)
        }
        if decoderContainer.contains(.cacheRules)
        {
            self.cacheRules = try decoderContainer.decode([CacheRule?]?.self, forKey: .cacheRules)
        }
    }
}
public extension QueryDomainConfigResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryDomainConfigResultCodingKeys.self)
        try encoderContainer.encode(ignoreQueryString, forKey: .ignoreQueryString)
        try encoderContainer.encode(range, forKey: .range)
        try encoderContainer.encode(httpType, forKey: .httpType)
        try encoderContainer.encode(httpsCertificate, forKey: .httpsCertificate)
        try encoderContainer.encode(httpsRsaKey, forKey: .httpsRsaKey)
        try encoderContainer.encode(httpsJumpType, forKey: .httpsJumpType)
        try encoderContainer.encode(videoDraft, forKey: .videoDraft)
        try encoderContainer.encode(groupName, forKey: .groupName)
        try encoderContainer.encode(shareId, forKey: .shareId)
        try encoderContainer.encode(shareName, forKey: .shareName)
        try encoderContainer.encode(jcdnTimeAnti, forKey: .jcdnTimeAnti)
        try encoderContainer.encode(shareCache, forKey: .shareCache)
        try encoderContainer.encode(isShareOpen, forKey: .isShareOpen)
        try encoderContainer.encode(cacheRules, forKey: .cacheRules)
    }
}
