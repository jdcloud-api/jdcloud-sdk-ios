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

   JDCLOUD 日志信息 API
   态势感知日志相关信息接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询被攻击资产topN排名
public class QueryTopAttackedHostRequest:JdCloudRequest
{
    /// Ip
    var ip:String?

    /// 大于0的时间戳距离1970年1月1日,单位毫秒
    var startTime:Int64

    /// 大于0的时间戳距离1970年1月1日，大于startTime,单位毫秒
    var endTime:Int64


    public init(regionId: String,startTime:Int64,endTime:Int64){
        self.startTime = startTime
        self.endTime = endTime
        super.init(regionId: regionId)
    }


    enum QueryTopAttackedHostRequestRequestCodingKeys: String, CodingKey {
        case ip
        case startTime
        case endTime
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: QueryTopAttackedHostRequestRequestCodingKeys.self)
        try container.encode(ip, forKey: .ip)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)

    }
}
