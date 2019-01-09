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

///  metricDetail
@objc(MetricDetail)
public class MetricDetail:NSObject,Codable{
    /// 指标的计算单位，比如bit/s、%、byte等
    var calculateUnit:String?
    /// 监控指标英文标识
    var metric:String?
    /// 监控指标名称
    var metricName:String?
    /// 资源类型标识
    var serviceCode:String?
    /// 取样频次
    var downSample:String?



    public override init(){
            super.init()
    }

    enum MetricDetailCodingKeys: String, CodingKey {
        case calculateUnit
        case metric
        case metricName
        case serviceCode
        case downSample
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: MetricDetailCodingKeys.self)
        if decoderContainer.contains(.calculateUnit)
        {
            self.calculateUnit = try decoderContainer.decode(String?.self, forKey: .calculateUnit)
        }
        if decoderContainer.contains(.metric)
        {
            self.metric = try decoderContainer.decode(String?.self, forKey: .metric)
        }
        if decoderContainer.contains(.metricName)
        {
            self.metricName = try decoderContainer.decode(String?.self, forKey: .metricName)
        }
        if decoderContainer.contains(.serviceCode)
        {
            self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        }
        if decoderContainer.contains(.downSample)
        {
            self.downSample = try decoderContainer.decode(String?.self, forKey: .downSample)
        }
    }
}
public extension MetricDetail{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: MetricDetailCodingKeys.self)
         try encoderContainer.encode(calculateUnit, forKey: .calculateUnit)
         try encoderContainer.encode(metric, forKey: .metric)
         try encoderContainer.encode(metricName, forKey: .metricName)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(downSample, forKey: .downSample)
    }
}
