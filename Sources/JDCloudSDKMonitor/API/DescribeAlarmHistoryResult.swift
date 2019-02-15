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

   Monitoring Rules APIs
   云监控规则相关接口，提供创建、查询、修改、删除监控规则等功能

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询报警历史
      ///       /// 检索条件组合优先级从高到低为
      ///       /// 1. alarmId
      ///       /// 2. serviceCode
      ///       /// 2.1 serviceCode + resourceId
      ///       /// 2.2 serviceCode + resourceIds
      ///       /// 3. serviceCodes
      ///       /// 4. 用户所有规则
@objc(DescribeAlarmHistoryResult)
public class DescribeAlarmHistoryResult:NSObject,JdCloudResult
{
    /// 告警历史列表
    var alarmHistoryList:[DescribedAlarmHistory?]?

    /// 总数
    var total:Int64?



    public override init(){
        super.init()
    }

    enum DescribeAlarmHistoryResultCodingKeys: String, CodingKey {
        case alarmHistoryList
        case total
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeAlarmHistoryResultCodingKeys.self)
        if decoderContainer.contains(.alarmHistoryList)
        {
            self.alarmHistoryList = try decoderContainer.decode([DescribedAlarmHistory?]?.self, forKey: .alarmHistoryList)
        }
        if decoderContainer.contains(.total)
        {
            self.total = try decoderContainer.decode(Int64?.self, forKey: .total)
        }
    }
}
public extension DescribeAlarmHistoryResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAlarmHistoryResultCodingKeys.self)
        try encoderContainer.encode(alarmHistoryList, forKey: .alarmHistoryList)
        try encoderContainer.encode(total, forKey: .total)
    }
}
