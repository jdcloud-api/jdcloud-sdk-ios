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

///  widgetDataPointItem
@objc(WidgetDataPointItem)
public class WidgetDataPointItem:NSObject,Codable{
    /// Aggregate
    var aggregate:[StatsItem?]?
    /// Detail
    var detail:[StatsItem?]?
    /// WidgetId
    var widgetId:String?



    public override init(){
            super.init()
    }

    enum WidgetDataPointItemCodingKeys: String, CodingKey {
        case aggregate
        case detail
        case widgetId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: WidgetDataPointItemCodingKeys.self)
        if decoderContainer.contains(.aggregate)
        {
            self.aggregate = try decoderContainer.decode([StatsItem?]?.self, forKey: .aggregate)
        }
        if decoderContainer.contains(.detail)
        {
            self.detail = try decoderContainer.decode([StatsItem?]?.self, forKey: .detail)
        }
        if decoderContainer.contains(.widgetId)
        {
            self.widgetId = try decoderContainer.decode(String?.self, forKey: .widgetId)
        }
    }
}
public extension WidgetDataPointItem{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: WidgetDataPointItemCodingKeys.self)
         try encoderContainer.encode(aggregate, forKey: .aggregate)
         try encoderContainer.encode(detail, forKey: .detail)
         try encoderContainer.encode(widgetId, forKey: .widgetId)
    }
}
