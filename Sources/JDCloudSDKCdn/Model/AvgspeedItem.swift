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

///  avgspeedItem
@objc(AvgspeedItem)
public class AvgspeedItem:NSObject,Codable{
    /// Area
    var area:String?
    /// Avgspeed
    var avgspeed:Int64?
    /// Firstpkgtime
    var firstpkgtime:Double?
    /// ErrorRatio
    var errorRatio:Double?
    /// Flow
    var flow:Double?
    /// FlowPercent
    var flowPercent:Double?
    /// Pv
    var pv:Int64?
    /// HitRatio
    var hitRatio:Int?



    public override init(){
            super.init()
    }

    enum AvgspeedItemCodingKeys: String, CodingKey {
        case area
        case avgspeed
        case firstpkgtime
        case errorRatio
        case flow
        case flowPercent
        case pv
        case hitRatio
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AvgspeedItemCodingKeys.self)
        if decoderContainer.contains(.area)
        {
            self.area = try decoderContainer.decode(String?.self, forKey: .area)
        }
        if decoderContainer.contains(.avgspeed)
        {
            self.avgspeed = try decoderContainer.decode(Int64?.self, forKey: .avgspeed)
        }
        if decoderContainer.contains(.firstpkgtime)
        {
            self.firstpkgtime = try decoderContainer.decode(Double?.self, forKey: .firstpkgtime)
        }
        if decoderContainer.contains(.errorRatio)
        {
            self.errorRatio = try decoderContainer.decode(Double?.self, forKey: .errorRatio)
        }
        if decoderContainer.contains(.flow)
        {
            self.flow = try decoderContainer.decode(Double?.self, forKey: .flow)
        }
        if decoderContainer.contains(.flowPercent)
        {
            self.flowPercent = try decoderContainer.decode(Double?.self, forKey: .flowPercent)
        }
        if decoderContainer.contains(.pv)
        {
            self.pv = try decoderContainer.decode(Int64?.self, forKey: .pv)
        }
        if decoderContainer.contains(.hitRatio)
        {
            self.hitRatio = try decoderContainer.decode(Int?.self, forKey: .hitRatio)
        }
    }
}
public extension AvgspeedItem{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AvgspeedItemCodingKeys.self)
         try encoderContainer.encode(area, forKey: .area)
         try encoderContainer.encode(avgspeed, forKey: .avgspeed)
         try encoderContainer.encode(firstpkgtime, forKey: .firstpkgtime)
         try encoderContainer.encode(errorRatio, forKey: .errorRatio)
         try encoderContainer.encode(flow, forKey: .flow)
         try encoderContainer.encode(flowPercent, forKey: .flowPercent)
         try encoderContainer.encode(pv, forKey: .pv)
         try encoderContainer.encode(hitRatio, forKey: .hitRatio)
    }
}
