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


///  设置源站监控信息
@objc(SetMonitorRequest)
public class SetMonitorRequest:JdCloudRequest
{
    /// 探测周期，取值1和5，单位为分钟
    var cycle:Int32?

    /// 探测路径
    var monitorPath:String?

    /// HttpRequestHeader
    var httpRequestHeader:[String:String?]?

    /// 用户域名
    var domain:String


    public init(regionId: String,domain:String){
        self.domain = domain
        super.init(regionId: regionId)
    }


    enum SetMonitorRequestRequestCodingKeys: String, CodingKey {
        case cycle
        case monitorPath
        case httpRequestHeader
        case domain
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetMonitorRequestRequestCodingKeys.self)
        try encoderContainer.encode(cycle, forKey: .cycle)
        try encoderContainer.encode(monitorPath, forKey: .monitorPath)
        try encoderContainer.encode(httpRequestHeader, forKey: .httpRequestHeader)
        try encoderContainer.encode(domain, forKey: .domain)

    }
}
