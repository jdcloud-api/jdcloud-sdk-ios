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

/// 查询源站监控信息
@objc(QueryMonitorResult)
public class QueryMonitorResult:NSObject,JdCloudResult
{
    /// Domain
    var domain:String?

    /// Cycle
    var cycle:Int32?

    /// MonitorPath
    var monitorPath:String?

    /// 查询结果,类型为HashMap&lt;String, Object&gt;
    var httpRequestHeader:[String:String?]?



    public override init(){
        super.init()
    }

    enum QueryMonitorResultCodingKeys: String, CodingKey {
        case domain
        case cycle
        case monitorPath
        case httpRequestHeader
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueryMonitorResultCodingKeys.self)
        self.domain = try decoderContainer.decode(String?.self, forKey: .domain)
        self.cycle = try decoderContainer.decode(Int32?.self, forKey: .cycle)
        self.monitorPath = try decoderContainer.decode(String?.self, forKey: .monitorPath)
        self.httpRequestHeader = try decoderContainer.decode([String:String?]?.self, forKey: .httpRequestHeader)
    }
}
public extension QueryMonitorResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryMonitorResultCodingKeys.self)
        try encoderContainer.encode(domain, forKey: .domain)
        try encoderContainer.encode(cycle, forKey: .cycle)
        try encoderContainer.encode(monitorPath, forKey: .monitorPath)
        try encoderContainer.encode(httpRequestHeader, forKey: .httpRequestHeader)
    }
}
