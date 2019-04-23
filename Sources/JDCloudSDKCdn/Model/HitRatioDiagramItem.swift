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

///  hitRatioDiagramItem
@objc(HitRatioDiagramItem)
public class HitRatioDiagramItem:NSObject,Codable{
    /// FlowRatio
    var flowRatio:Double?
    /// ReqRatio
    var reqRatio:Double?
    /// TimeStamp
    var timeStamp:Int64?



    public override init(){
            super.init()
    }

    enum HitRatioDiagramItemCodingKeys: String, CodingKey {
        case flowRatio
        case reqRatio
        case timeStamp
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: HitRatioDiagramItemCodingKeys.self)
        if decoderContainer.contains(.flowRatio)
        {
            self.flowRatio = try decoderContainer.decode(Double?.self, forKey: .flowRatio)
        }
        if decoderContainer.contains(.reqRatio)
        {
            self.reqRatio = try decoderContainer.decode(Double?.self, forKey: .reqRatio)
        }
        if decoderContainer.contains(.timeStamp)
        {
            self.timeStamp = try decoderContainer.decode(Int64?.self, forKey: .timeStamp)
        }
    }
}
public extension HitRatioDiagramItem{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: HitRatioDiagramItemCodingKeys.self)
         try encoderContainer.encode(flowRatio, forKey: .flowRatio)
         try encoderContainer.encode(reqRatio, forKey: .reqRatio)
         try encoderContainer.encode(timeStamp, forKey: .timeStamp)
    }
}
