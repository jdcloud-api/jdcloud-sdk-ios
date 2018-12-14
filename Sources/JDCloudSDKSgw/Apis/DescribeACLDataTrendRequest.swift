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

   风险监控报表统计相关接口
   API related to attack events

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  查询自定义访问控制规则事件分布
public class DescribeACLDataTrendRequest:JdCloudRequest
{
    /// 请求的时间段,取值范围(1~30天)或(1-23小时)
    var timespan:Int?

    /// 请求的时间单位,1表示小时,2表示天,默认单位是天
    var timeunit:Int?

    /// 查询条件,支持 wafIds(Waf实例id,数组) 精确匹配过滤
    var filters:Filter?




    enum DescribeACLDataTrendRequestRequestCodingKeys: String, CodingKey {
        case timespan
        case timeunit
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeACLDataTrendRequestRequestCodingKeys.self)
        try container.encode(timespan, forKey: .timespan)
        try container.encode(timeunit, forKey: .timeunit)
        try container.encode(filters, forKey: .filters)

    }
}
