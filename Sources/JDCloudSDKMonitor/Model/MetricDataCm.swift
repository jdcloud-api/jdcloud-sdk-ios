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

///  metricDataCm
@objc(MetricDataCm)
public class MetricDataCm:NSObject,Codable{
    /// 命名空间 ，长度不超过255字节，只允许英文、数字、下划线_、点., [0-9][a-z] [A-Z] [. _ ]，  其它会返回err
    /// Required:true
    var namespace:String
    /// 监控指标名称，长度不超过255字节，只允许英文、数字、下划线_、点.,  [0-9][a-z] [A-Z] [. _ ]， 其它会返回err
    /// Required:true
    var metric:String
    /// 数据维度，数据类型为map类型，支持最少一个，最多五个标签，总长度不大于255字节，只允许英文、数字、下划线_、点., [0-9][a-z] [A-Z] [. _ ]，  其它会返回err
    /// Required:true
    var dimensions:[String:String?]
    /// 上报数据点的时间戳,只支持10位，秒级时间戳，不能写入过去30天的时间
    /// Required:true
    var timestamp:Int64
    /// 数据上报类型，1为原始值，2为聚合数据。当上报聚合数据时，建议为60s的周期时行上报、否则无法正常查询
    /// Required:true
    var type:Int
    /// 指标值集合，数据类型必须为map类型，key为数据类型，value为数据值，当type&#x3D;1时，key只能为”value”，上报的是原始值，当type&#x3D;2时，K的值可以为&quot;avg&quot;,&quot;sum&quot;,&quot;last&quot;,&quot;max&quot;,&quot;min&quot;,&quot;count&quot;，只支持以上类型，否则会报错，value内容为整型或浮点型数字，最大值为9223372036854775807，count只支持&gt;&#x3D;0的数
    /// Required:true
    var values:[String:String?]
    /// 数据的单位，长度不超过64字节，只允许英文、数字、下划线_、点., [0-9][a-z] [A-Z] [. _ ]，  其它会返回err
    var unit:String?



    public  init(namespace:String,metric:String,dimensions:[String:String?],timestamp:Int64,type:Int,values:[String:String?]){
             self.namespace = namespace
             self.metric = metric
             self.dimensions = dimensions
             self.timestamp = timestamp
             self.type = type
             self.values = values
    }

    enum MetricDataCmCodingKeys: String, CodingKey {
        case namespace
        case metric
        case dimensions
        case timestamp
        case type
        case values
        case unit
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: MetricDataCmCodingKeys.self)
        self.namespace = try decoderContainer.decode(String.self, forKey: .namespace)
        self.metric = try decoderContainer.decode(String.self, forKey: .metric)
        self.dimensions = try decoderContainer.decode([String:String?].self, forKey: .dimensions)
        self.timestamp = try decoderContainer.decode(Int64.self, forKey: .timestamp)
        self.type = try decoderContainer.decode(Int.self, forKey: .type)
        self.values = try decoderContainer.decode([String:String?].self, forKey: .values)
        self.unit = try decoderContainer.decode(String?.self, forKey: .unit)
    }
}
public extension MetricDataCm{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: MetricDataCmCodingKeys.self)
         try encoderContainer.encode(namespace, forKey: .namespace)
         try encoderContainer.encode(metric, forKey: .metric)
         try encoderContainer.encode(dimensions, forKey: .dimensions)
         try encoderContainer.encode(timestamp, forKey: .timestamp)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(values, forKey: .values)
         try encoderContainer.encode(unit, forKey: .unit)
    }
}