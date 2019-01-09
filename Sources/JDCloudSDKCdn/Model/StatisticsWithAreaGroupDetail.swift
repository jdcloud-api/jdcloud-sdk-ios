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

///  statisticsWithAreaGroupDetail
@objc(StatisticsWithAreaGroupDetail)
public class StatisticsWithAreaGroupDetail:NSObject,Codable{
    /// UTC时间，格式为:yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;，示例:2018-10-21T10:00:00Z
    var startTime:String?
    /// UTC时间，格式为:yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;，示例:2018-10-21T10:00:00Z
    var endTime:String?
    /// null
    var data:[StatisticsWithAreaGroupDetailItem?]?



    public override init(){
            super.init()
    }

    enum StatisticsWithAreaGroupDetailCodingKeys: String, CodingKey {
        case startTime
        case endTime
        case data
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StatisticsWithAreaGroupDetailCodingKeys.self)
        if decoderContainer.contains(.startTime)
        {
            self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        }
        if decoderContainer.contains(.endTime)
        {
            self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        }
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode([StatisticsWithAreaGroupDetailItem?]?.self, forKey: .data)
        }
    }
}
public extension StatisticsWithAreaGroupDetail{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StatisticsWithAreaGroupDetailCodingKeys.self)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(data, forKey: .data)
    }
}
