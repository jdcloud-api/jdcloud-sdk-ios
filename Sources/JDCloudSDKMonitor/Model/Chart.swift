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

///  chart
@objc(Chart)
public class Chart:NSObject,Codable{
    /// 监控图名称
    var chartName:String?
    /// 监控图单位
    var chartUnit:String?
    /// 监控图包含的指标
    var include:[String?]?



    public override init(){
            super.init()
    }

    enum ChartCodingKeys: String, CodingKey {
        case chartName
        case chartUnit
        case include
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ChartCodingKeys.self)
        if decoderContainer.contains(.chartName)
        {
            self.chartName = try decoderContainer.decode(String?.self, forKey: .chartName)
        }
        if decoderContainer.contains(.chartUnit)
        {
            self.chartUnit = try decoderContainer.decode(String?.self, forKey: .chartUnit)
        }
        if decoderContainer.contains(.include)
        {
            self.include = try decoderContainer.decode([String?]?.self, forKey: .include)
        }
    }
}
public extension Chart{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ChartCodingKeys.self)
         try encoderContainer.encode(chartName, forKey: .chartName)
         try encoderContainer.encode(chartUnit, forKey: .chartUnit)
         try encoderContainer.encode(include, forKey: .include)
    }
}
