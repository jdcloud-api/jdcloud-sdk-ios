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

///  region
@objc(Region)
public class Region:NSObject,Codable{
    /// 地域代码, 如 cn-east-1
    var regionValue:String?
    /// 地域名称，如 华东一区
    var regionName:String?
    /// 可用区列表
    var azs:Az?



    public override init(){
            super.init()
    }

    enum RegionCodingKeys: String, CodingKey {
        case regionValue = "region"
        case regionName
        case azs
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RegionCodingKeys.self)
        self.regionValue = try decoderContainer.decode(String?.self, forKey: .regionValue)
        self.regionName = try decoderContainer.decode(String?.self, forKey: .regionName)
        self.azs = try decoderContainer.decode(Az?.self, forKey: .azs)
    }
}
public extension Region{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RegionCodingKeys.self)
         try encoderContainer.encode(regionValue, forKey: .regionValue)
         try encoderContainer.encode(regionName, forKey: .regionName)
         try encoderContainer.encode(azs, forKey: .azs)
    }
}