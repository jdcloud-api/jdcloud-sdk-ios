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

///  创建监控规则
@objc(CreateCmAlarmParam)
public class CreateCmAlarmParam:NSObject,Codable{
    /// 统计方法，必须与定义的metric一致，可选值列表：avg,max,sum,min
    /// Required:true
    var calculation:String
    /// 报警规则通知的联系组，必须在控制台上已创建，例如&quot; [&#39;联系组1&#39;,&#39;联系组2&#39;]&quot;
    var contactGroups:[String?]?
    /// 报警规则通知的联系人，必须在控制台上已创建，例如 [“联系人1”,”联系人2”]
    var contactPersons:[String?]?
    /// 取样频次
    var downSample:String?
    /// 根据产品线查询可用监控项列表 接口 返回的Metric字段
    /// Required:true
    var metricUID:String
    /// 命名空间
    /// Required:true
    var namespaceUID:String
    /// 通知周期 单位：小时
    var noticePeriod:Int64?
    /// 报警规则对应实例列表，每次最多100个，例如&quot;[&#39;resourceId1&#39;,&#39;resourceId2&#39;]&quot;
    /// Required:true
    var objUIDs:[String?]
    /// 报警比较符，只能为以下几种&lt;&#x3D;,&lt;,&gt;,&gt;&#x3D;,&#x3D;&#x3D;,!&#x3D;
    /// Required:true
    var operation:String
    /// 查询指标的周期，单位为分钟,目前支持的取值：2，5，15，30，60
    /// Required:true
    var period:Int64
    /// 报警阈值，目前只开放数值类型功能
    /// Required:true
    var threshold:Double
    /// 连续探测几次都满足阈值条件时报警，可选值:1,2,3,5
    /// Required:true
    var times:Int64



    public  init(calculation:String,metricUID:String,namespaceUID:String,objUIDs:[String?],operation:String,period:Int64,threshold:Double,times:Int64){
             self.calculation = calculation
             self.metricUID = metricUID
             self.namespaceUID = namespaceUID
             self.objUIDs = objUIDs
             self.operation = operation
             self.period = period
             self.threshold = threshold
             self.times = times
    }

    enum CreateCmAlarmParamCodingKeys: String, CodingKey {
        case calculation
        case contactGroups
        case contactPersons
        case downSample
        case metricUID
        case namespaceUID
        case noticePeriod
        case objUIDs
        case operation
        case period
        case threshold
        case times
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateCmAlarmParamCodingKeys.self)
        self.calculation = try decoderContainer.decode(String.self, forKey: .calculation)
        if decoderContainer.contains(.contactGroups)
        {
            self.contactGroups = try decoderContainer.decode([String?]?.self, forKey: .contactGroups)
        }
        if decoderContainer.contains(.contactPersons)
        {
            self.contactPersons = try decoderContainer.decode([String?]?.self, forKey: .contactPersons)
        }
        if decoderContainer.contains(.downSample)
        {
            self.downSample = try decoderContainer.decode(String?.self, forKey: .downSample)
        }
        self.metricUID = try decoderContainer.decode(String.self, forKey: .metricUID)
        self.namespaceUID = try decoderContainer.decode(String.self, forKey: .namespaceUID)
        if decoderContainer.contains(.noticePeriod)
        {
            self.noticePeriod = try decoderContainer.decode(Int64?.self, forKey: .noticePeriod)
        }
        self.objUIDs = try decoderContainer.decode([String?].self, forKey: .objUIDs)
        self.operation = try decoderContainer.decode(String.self, forKey: .operation)
        self.period = try decoderContainer.decode(Int64.self, forKey: .period)
        self.threshold = try decoderContainer.decode(Double.self, forKey: .threshold)
        self.times = try decoderContainer.decode(Int64.self, forKey: .times)
    }
}
public extension CreateCmAlarmParam{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateCmAlarmParamCodingKeys.self)
         try encoderContainer.encode(calculation, forKey: .calculation)
         try encoderContainer.encode(contactGroups, forKey: .contactGroups)
         try encoderContainer.encode(contactPersons, forKey: .contactPersons)
         try encoderContainer.encode(downSample, forKey: .downSample)
         try encoderContainer.encode(metricUID, forKey: .metricUID)
         try encoderContainer.encode(namespaceUID, forKey: .namespaceUID)
         try encoderContainer.encode(noticePeriod, forKey: .noticePeriod)
         try encoderContainer.encode(objUIDs, forKey: .objUIDs)
         try encoderContainer.encode(operation, forKey: .operation)
         try encoderContainer.encode(period, forKey: .period)
         try encoderContainer.encode(threshold, forKey: .threshold)
         try encoderContainer.encode(times, forKey: .times)
    }
}
