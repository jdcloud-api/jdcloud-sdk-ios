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

///  countData
@objc(CountData)
public class CountData:NSObject,Codable{
    /// 时间序列
    var time:[Int64?]?
    /// 数据序列
    var count:[Count?]?



    public override init(){
            super.init()
    }

    enum CountDataCodingKeys: String, CodingKey {
        case time
        case count
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CountDataCodingKeys.self)
        if decoderContainer.contains(.time)
        {
            self.time = try decoderContainer.decode([Int64?]?.self, forKey: .time)
        }
        if decoderContainer.contains(.count)
        {
            self.count = try decoderContainer.decode([Count?]?.self, forKey: .count)
        }
    }
}
public extension CountData{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CountDataCodingKeys.self)
         try encoderContainer.encode(time, forKey: .time)
         try encoderContainer.encode(count, forKey: .count)
    }
}
