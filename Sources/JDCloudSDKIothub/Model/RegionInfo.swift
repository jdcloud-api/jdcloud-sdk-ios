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

///  regionInfo
@objc(RegionInfo)
public class RegionInfo:NSObject,Codable{
    /// region编号
    var regionId:String?
    /// region名称
    var regionName:String?
    /// AZ集合
    var azInfo:[Azs?]?



    public override init(){
            super.init()
    }

    enum RegionInfoCodingKeys: String, CodingKey {
        case regionId
        case regionName
        case azInfo
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RegionInfoCodingKeys.self)
        if decoderContainer.contains(.regionId)
        {
            self.regionId = try decoderContainer.decode(String?.self, forKey: .regionId)
        }
        if decoderContainer.contains(.regionName)
        {
            self.regionName = try decoderContainer.decode(String?.self, forKey: .regionName)
        }
        if decoderContainer.contains(.azInfo)
        {
            self.azInfo = try decoderContainer.decode([Azs?]?.self, forKey: .azInfo)
        }
    }
}
public extension RegionInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RegionInfoCodingKeys.self)
         try encoderContainer.encode(regionId, forKey: .regionId)
         try encoderContainer.encode(regionName, forKey: .regionName)
         try encoderContainer.encode(azInfo, forKey: .azInfo)
    }
}
