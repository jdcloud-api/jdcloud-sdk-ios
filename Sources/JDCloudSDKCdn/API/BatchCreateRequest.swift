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


///  创建点播加速域名
@objc(BatchCreateRequest)
public class BatchCreateRequest:JdCloudRequest
{
    /// Domains
    var domains:[String?]?

    /// 回源类型只能是[ips,domain,oss]中的一种
    var sourceType:String?

    /// 点播域名的类型只能是[vod,download,web]中的一种
    var cdnType:String?

    /// 回源方式,只能是[https,http]中的一种,默认http
    var backSourceType:String?

    /// 日带宽(Mbps)
    var dailyBandWidth:Int64?

    /// 服务质量,只能是[good,general]中的一种,默认为good
    var quaility:String?

    /// MaxFileSize
    var maxFileSize:Int64?

    /// MinFileSize
    var minFileSize:Int64?

    /// SumFileSize
    var sumFileSize:Int64?

    /// AvgFileSize
    var avgFileSize:Int64?

    /// DefaultSourceHost
    var defaultSourceHost:String?

    /// HttpType
    var httpType:String?

    /// IpSource
    var ipSource:[IpSourceInfo?]?

    /// DomainSource
    var domainSource:[DomainSourceInfo?]?

    /// OssSource
    var ossSource:String?




    enum BatchCreateRequestRequestCodingKeys: String, CodingKey {
        case domains
        case sourceType
        case cdnType
        case backSourceType
        case dailyBandWidth
        case quaility
        case maxFileSize
        case minFileSize
        case sumFileSize
        case avgFileSize
        case defaultSourceHost
        case httpType
        case ipSource
        case domainSource
        case ossSource
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BatchCreateRequestRequestCodingKeys.self)
        try encoderContainer.encode(domains, forKey: .domains)
        try encoderContainer.encode(sourceType, forKey: .sourceType)
        try encoderContainer.encode(cdnType, forKey: .cdnType)
        try encoderContainer.encode(backSourceType, forKey: .backSourceType)
        try encoderContainer.encode(dailyBandWidth, forKey: .dailyBandWidth)
        try encoderContainer.encode(quaility, forKey: .quaility)
        try encoderContainer.encode(maxFileSize, forKey: .maxFileSize)
        try encoderContainer.encode(minFileSize, forKey: .minFileSize)
        try encoderContainer.encode(sumFileSize, forKey: .sumFileSize)
        try encoderContainer.encode(avgFileSize, forKey: .avgFileSize)
        try encoderContainer.encode(defaultSourceHost, forKey: .defaultSourceHost)
        try encoderContainer.encode(httpType, forKey: .httpType)
        try encoderContainer.encode(ipSource, forKey: .ipSource)
        try encoderContainer.encode(domainSource, forKey: .domainSource)
        try encoderContainer.encode(ossSource, forKey: .ossSource)

    }
}
