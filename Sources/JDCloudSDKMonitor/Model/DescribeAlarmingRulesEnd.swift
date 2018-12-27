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

///  describeAlarmingRulesEnd
@objc(DescribeAlarmingRulesEnd)
public class DescribeAlarmingRulesEnd:NSObject,Codable{
    /// 未恢复的报警
    var alarmHistoryList:AlarmHistoryWithDetail?
    /// 总页数
    var numberPages:Int64?
    /// 总记录数
    var numberRecords:Int64?
    /// 当前页码
    var pageNumber:Int64?
    /// 分页大小
    var pageSize:Int64?



    public override init(){
            super.init()
    }

    enum DescribeAlarmingRulesEndCodingKeys: String, CodingKey {
        case alarmHistoryList
        case numberPages
        case numberRecords
        case pageNumber
        case pageSize
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeAlarmingRulesEndCodingKeys.self)
        self.alarmHistoryList = try decoderContainer.decode(AlarmHistoryWithDetail?.self, forKey: .alarmHistoryList)
        self.numberPages = try decoderContainer.decode(Int64?.self, forKey: .numberPages)
        self.numberRecords = try decoderContainer.decode(Int64?.self, forKey: .numberRecords)
        self.pageNumber = try decoderContainer.decode(Int64?.self, forKey: .pageNumber)
        self.pageSize = try decoderContainer.decode(Int64?.self, forKey: .pageSize)
    }
}
public extension DescribeAlarmingRulesEnd{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAlarmingRulesEndCodingKeys.self)
         try encoderContainer.encode(alarmHistoryList, forKey: .alarmHistoryList)
         try encoderContainer.encode(numberPages, forKey: .numberPages)
         try encoderContainer.encode(numberRecords, forKey: .numberRecords)
         try encoderContainer.encode(pageNumber, forKey: .pageNumber)
         try encoderContainer.encode(pageSize, forKey: .pageSize)
    }
}