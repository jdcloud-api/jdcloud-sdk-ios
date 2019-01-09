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

///  digestData
@objc(DigestData)
public class DigestData:NSObject,Codable{
    /// 表示执行结果中95% 数据小于或等于此数值
    var pct95:Double?
    /// 执行结果的最大值
    var max:Double?
    /// 执行结果的平均值
    var avg:Double?
    /// 执行结果的最小值
    var min:Double?
    /// 执行结果的合计值
    var total:Double?



    public override init(){
            super.init()
    }

    enum DigestDataCodingKeys: String, CodingKey {
        case pct95
        case max
        case avg
        case min
        case total
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DigestDataCodingKeys.self)
        if decoderContainer.contains(.pct95)
        {
            self.pct95 = try decoderContainer.decode(Double?.self, forKey: .pct95)
        }
        if decoderContainer.contains(.max)
        {
            self.max = try decoderContainer.decode(Double?.self, forKey: .max)
        }
        if decoderContainer.contains(.avg)
        {
            self.avg = try decoderContainer.decode(Double?.self, forKey: .avg)
        }
        if decoderContainer.contains(.min)
        {
            self.min = try decoderContainer.decode(Double?.self, forKey: .min)
        }
        if decoderContainer.contains(.total)
        {
            self.total = try decoderContainer.decode(Double?.self, forKey: .total)
        }
    }
}
public extension DigestData{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DigestDataCodingKeys.self)
         try encoderContainer.encode(pct95, forKey: .pct95)
         try encoderContainer.encode(max, forKey: .max)
         try encoderContainer.encode(avg, forKey: .avg)
         try encoderContainer.encode(min, forKey: .min)
         try encoderContainer.encode(total, forKey: .total)
    }
}
