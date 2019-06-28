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


///  批量域名查询日志
@objc(QueryDomainsLogRequest)
public class QueryDomainsLogRequest:JdCloudRequest
{
    /// Domains
    var domains:[String?]?

    /// 查询起始时间,UTC时间，格式为:yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;，示例:2018-10-21T10:00:00Z
    var startTime:String?

    /// 查询截止时间,UTC时间，格式为:yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;，示例:2018-10-21T10:00:00Z
    var endTime:String?

    /// 时间间隔，取值(hour，day，fiveMin)，不传默认小时。
    var interval:String?

    /// 日志类型，取值(log，zip,gz)，不传默认gz。
    var logType:String?




    enum QueryDomainsLogRequestRequestCodingKeys: String, CodingKey {
        case domains
        case startTime
        case endTime
        case interval
        case logType
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryDomainsLogRequestRequestCodingKeys.self)
        try encoderContainer.encode(domains, forKey: .domains)
        try encoderContainer.encode(startTime, forKey: .startTime)
        try encoderContainer.encode(endTime, forKey: .endTime)
        try encoderContainer.encode(interval, forKey: .interval)
        try encoderContainer.encode(logType, forKey: .logType)

    }
}
