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

/// 查询TOP IP
@objc(QueryStatisticsTopIpResult)
public class QueryStatisticsTopIpResult:NSObject,JdCloudResult
{
    /// StartTime
    var startTime:String?

    /// EndTime
    var endTime:String?

    /// Domain
    var domain:String?

    /// IpData
    var ipData:StatisticsTopIpData?



    public override init(){
        super.init()
    }

    enum QueryStatisticsTopIpResultCodingKeys: String, CodingKey {
        case startTime
        case endTime
        case domain
        case ipData
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueryStatisticsTopIpResultCodingKeys.self)
        self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        self.domain = try decoderContainer.decode(String?.self, forKey: .domain)
        self.ipData = try decoderContainer.decode(StatisticsTopIpData?.self, forKey: .ipData)
    }
}
public extension QueryStatisticsTopIpResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryStatisticsTopIpResultCodingKeys.self)
        try encoderContainer.encode(startTime, forKey: .startTime)
        try encoderContainer.encode(endTime, forKey: .endTime)
        try encoderContainer.encode(domain, forKey: .domain)
        try encoderContainer.encode(ipData, forKey: .ipData)
    }
}