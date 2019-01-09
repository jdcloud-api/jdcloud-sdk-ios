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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  describedAlarm
@objc(DescribedAlarm)
public class DescribedAlarm:NSObject,Codable{
    /// 计算单位
    var calculateUnit:String?
    /// 统计方法：平均值&#x3D;avg、最大值&#x3D;max、最小值&#x3D;min
    var calculation:String?
    /// 创建时间
    var createTime:String?
    /// 降采样方法
    var downSample:String?
    /// 是否启用
    var enabled:Int64?
    /// 报警规则ID
    var id:String?
    /// 监控项
    var metric:String?
    /// 监控项名称
    var metricName:String?
    /// NoticeLevel
    var noticeLevel:NoticeLevel?
    /// 告警周期
    var noticePeriod:Int64?
    /// gt, gte, lt, lte, eq, ne
    var operation:String?
    /// 统计周期（单位：分钟）
    var period:Int64?
    /// 地域信息
    var region:String?
    /// 资源id
    var resourceId:String?
    /// 产品线编码
    var serviceCode:String?
    /// 监控项状态：1正常，2告警，4数据不足
    var status:Int64?
    /// 标签
    var tags:[String:String?]?
    /// 告警阈值
    var threshold:Double?
    /// 告警次数
    var times:Int64?



    public override init(){
            super.init()
    }

    enum DescribedAlarmCodingKeys: String, CodingKey {
        case calculateUnit
        case calculation
        case createTime
        case downSample
        case enabled
        case id
        case metric
        case metricName
        case noticeLevel
        case noticePeriod
        case operation
        case period
        case region
        case resourceId
        case serviceCode
        case status
        case tags
        case threshold
        case times
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribedAlarmCodingKeys.self)
        if decoderContainer.contains(.calculateUnit)
        {
            self.calculateUnit = try decoderContainer.decode(String?.self, forKey: .calculateUnit)
        }
        if decoderContainer.contains(.calculation)
        {
            self.calculation = try decoderContainer.decode(String?.self, forKey: .calculation)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.downSample)
        {
            self.downSample = try decoderContainer.decode(String?.self, forKey: .downSample)
        }
        if decoderContainer.contains(.enabled)
        {
            self.enabled = try decoderContainer.decode(Int64?.self, forKey: .enabled)
        }
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
        if decoderContainer.contains(.metric)
        {
            self.metric = try decoderContainer.decode(String?.self, forKey: .metric)
        }
        if decoderContainer.contains(.metricName)
        {
            self.metricName = try decoderContainer.decode(String?.self, forKey: .metricName)
        }
        if decoderContainer.contains(.noticeLevel)
        {
            self.noticeLevel = try decoderContainer.decode(NoticeLevel?.self, forKey: .noticeLevel)
        }
        if decoderContainer.contains(.noticePeriod)
        {
            self.noticePeriod = try decoderContainer.decode(Int64?.self, forKey: .noticePeriod)
        }
        if decoderContainer.contains(.operation)
        {
            self.operation = try decoderContainer.decode(String?.self, forKey: .operation)
        }
        if decoderContainer.contains(.period)
        {
            self.period = try decoderContainer.decode(Int64?.self, forKey: .period)
        }
        if decoderContainer.contains(.region)
        {
            self.region = try decoderContainer.decode(String?.self, forKey: .region)
        }
        if decoderContainer.contains(.resourceId)
        {
            self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
        }
        if decoderContainer.contains(.serviceCode)
        {
            self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Int64?.self, forKey: .status)
        }
        if decoderContainer.contains(.tags)
        {
            self.tags = try decoderContainer.decode([String:String?]?.self, forKey: .tags)
        }
        if decoderContainer.contains(.threshold)
        {
            self.threshold = try decoderContainer.decode(Double?.self, forKey: .threshold)
        }
        if decoderContainer.contains(.times)
        {
            self.times = try decoderContainer.decode(Int64?.self, forKey: .times)
        }
    }
}
public extension DescribedAlarm{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribedAlarmCodingKeys.self)
         try encoderContainer.encode(calculateUnit, forKey: .calculateUnit)
         try encoderContainer.encode(calculation, forKey: .calculation)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(downSample, forKey: .downSample)
         try encoderContainer.encode(enabled, forKey: .enabled)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(metric, forKey: .metric)
         try encoderContainer.encode(metricName, forKey: .metricName)
         try encoderContainer.encode(noticeLevel, forKey: .noticeLevel)
         try encoderContainer.encode(noticePeriod, forKey: .noticePeriod)
         try encoderContainer.encode(operation, forKey: .operation)
         try encoderContainer.encode(period, forKey: .period)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(tags, forKey: .tags)
         try encoderContainer.encode(threshold, forKey: .threshold)
         try encoderContainer.encode(times, forKey: .times)
    }
}
