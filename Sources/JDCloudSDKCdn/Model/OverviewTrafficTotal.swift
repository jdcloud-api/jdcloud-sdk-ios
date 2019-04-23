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

///  overviewTrafficTotal
@objc(OverviewTrafficTotal)
public class OverviewTrafficTotal:NSObject,Codable{
    /// Avgbandwidth
    var avgbandwidth:Double?
    /// Flow
    var flow:Double?
    /// Pv
    var pv:Int64?
    /// TopTimeStamp
    var topTimeStamp:Int64?



    public override init(){
            super.init()
    }

    enum OverviewTrafficTotalCodingKeys: String, CodingKey {
        case avgbandwidth
        case flow
        case pv
        case topTimeStamp
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OverviewTrafficTotalCodingKeys.self)
        if decoderContainer.contains(.avgbandwidth)
        {
            self.avgbandwidth = try decoderContainer.decode(Double?.self, forKey: .avgbandwidth)
        }
        if decoderContainer.contains(.flow)
        {
            self.flow = try decoderContainer.decode(Double?.self, forKey: .flow)
        }
        if decoderContainer.contains(.pv)
        {
            self.pv = try decoderContainer.decode(Int64?.self, forKey: .pv)
        }
        if decoderContainer.contains(.topTimeStamp)
        {
            self.topTimeStamp = try decoderContainer.decode(Int64?.self, forKey: .topTimeStamp)
        }
    }
}
public extension OverviewTrafficTotal{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OverviewTrafficTotalCodingKeys.self)
         try encoderContainer.encode(avgbandwidth, forKey: .avgbandwidth)
         try encoderContainer.encode(flow, forKey: .flow)
         try encoderContainer.encode(pv, forKey: .pv)
         try encoderContainer.encode(topTimeStamp, forKey: .topTimeStamp)
    }
}
