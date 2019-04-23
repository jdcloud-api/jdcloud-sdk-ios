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

///  statisticsTopIpData
@objc(StatisticsTopIpData)
public class StatisticsTopIpData:NSObject,Codable{
    /// Count
    var count:Int?
    /// Ips
    var ips:[StatisticsTopIpItem?]?



    public override init(){
            super.init()
    }

    enum StatisticsTopIpDataCodingKeys: String, CodingKey {
        case count
        case ips
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StatisticsTopIpDataCodingKeys.self)
        if decoderContainer.contains(.count)
        {
            self.count = try decoderContainer.decode(Int?.self, forKey: .count)
        }
        if decoderContainer.contains(.ips)
        {
            self.ips = try decoderContainer.decode([StatisticsTopIpItem?]?.self, forKey: .ips)
        }
    }
}
public extension StatisticsTopIpData{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StatisticsTopIpDataCodingKeys.self)
         try encoderContainer.encode(count, forKey: .count)
         try encoderContainer.encode(ips, forKey: .ips)
    }
}
