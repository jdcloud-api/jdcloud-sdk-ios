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

/// 设置userAgent信息
@objc(QueryUserAgentResult)
public class QueryUserAgentResult:NSObject,JdCloudResult
{
    /// Domain
    var domain:String?

    /// UserAgentType
    var userAgentType:String?

    /// UserAgentList
    var userAgentList:[String?]?

    /// AllowNoUserAgentHeader
    var allowNoUserAgentHeader:String?



    public override init(){
        super.init()
    }

    enum QueryUserAgentResultCodingKeys: String, CodingKey {
        case domain
        case userAgentType
        case userAgentList
        case allowNoUserAgentHeader
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueryUserAgentResultCodingKeys.self)
        if decoderContainer.contains(.domain)
        {
            self.domain = try decoderContainer.decode(String?.self, forKey: .domain)
        }
        if decoderContainer.contains(.userAgentType)
        {
            self.userAgentType = try decoderContainer.decode(String?.self, forKey: .userAgentType)
        }
        if decoderContainer.contains(.userAgentList)
        {
            self.userAgentList = try decoderContainer.decode([String?]?.self, forKey: .userAgentList)
        }
        if decoderContainer.contains(.allowNoUserAgentHeader)
        {
            self.allowNoUserAgentHeader = try decoderContainer.decode(String?.self, forKey: .allowNoUserAgentHeader)
        }
    }
}
public extension QueryUserAgentResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryUserAgentResultCodingKeys.self)
        try encoderContainer.encode(domain, forKey: .domain)
        try encoderContainer.encode(userAgentType, forKey: .userAgentType)
        try encoderContainer.encode(userAgentList, forKey: .userAgentList)
        try encoderContainer.encode(allowNoUserAgentHeader, forKey: .allowNoUserAgentHeader)
    }
}