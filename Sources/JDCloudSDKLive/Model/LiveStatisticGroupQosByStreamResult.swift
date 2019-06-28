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

   Live-Video
   直播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  liveStatisticGroupQosByStreamResult
@objc(LiveStatisticGroupQosByStreamResult)
public class LiveStatisticGroupQosByStreamResult:NSObject,Codable{
    /// 起始时间点，UTC时间，格式：yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;
      /// 
    var startTime:String?
    /// 结束时间点，UTC时间，格式：yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;
      /// 
    var endTime:String?
    /// Data
    var data:[LiveStatisticGroupQosByStreamResultData?]?



    public override init(){
            super.init()
    }

    enum LiveStatisticGroupQosByStreamResultCodingKeys: String, CodingKey {
        case startTime
        case endTime
        case data
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: LiveStatisticGroupQosByStreamResultCodingKeys.self)
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
            self.data = try decoderContainer.decode([LiveStatisticGroupQosByStreamResultData?]?.self, forKey: .data)
        }
    }
}
public extension LiveStatisticGroupQosByStreamResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: LiveStatisticGroupQosByStreamResultCodingKeys.self)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(data, forKey: .data)
    }
}
