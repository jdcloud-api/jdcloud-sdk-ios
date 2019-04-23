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

/// 查询ip黑名单
@objc(QueryIpBlackListResult)
public class QueryIpBlackListResult:NSObject,JdCloudResult
{
    /// Domain
    var domain:String?

    /// Ips
    var ips:[AnyObject?]?

    /// Status
    var status:String?



    public override init(){
        super.init()
    }

    enum QueryIpBlackListResultCodingKeys: String, CodingKey {
        case domain
        case ips
        case status
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueryIpBlackListResultCodingKeys.self)
        if decoderContainer.contains(.domain)
        {
            self.domain = try decoderContainer.decode(String?.self, forKey: .domain)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
    }
}
public extension QueryIpBlackListResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryIpBlackListResultCodingKeys.self)
        try encoderContainer.encode(domain, forKey: .domain)
        try encoderContainer.encode(status, forKey: .status)
    }
}
