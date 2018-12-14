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


///  查询攻击日志信息-Web攻击日志
public class DescribeWafsVulsRequest:JdCloudRequest
{
    /// 分页大小；默认为10；取值范围[10, 100]
    var pageSize:Int?

    /// 页码；默认为1
    var pageNumber:Int?

    /// 请求的时间段,取值范围(1~30天)或(1-23小时)
    var timespan:Int?

    /// 请求的时间单位,1表示小时,2表示天,默认单位是天
    var timeunit:Int?

    /// 查询过滤条件, 支持ip(攻击源IP数组)和wafIds(Waf实例id数组)过滤
    var filters:Filter?

    /// 当前仅支持根据攻击发生时间(attackTime)排序
    var sorts:Sort?




    enum DescribeWafsVulsRequestRequestCodingKeys: String, CodingKey {
        case pageSize
        case pageNumber
        case timespan
        case timeunit
        case filters
        case sorts
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeWafsVulsRequestRequestCodingKeys.self)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(timespan, forKey: .timespan)
        try container.encode(timeunit, forKey: .timeunit)
        try container.encode(filters, forKey: .filters)
        try container.encode(sorts, forKey: .sorts)

    }
}
