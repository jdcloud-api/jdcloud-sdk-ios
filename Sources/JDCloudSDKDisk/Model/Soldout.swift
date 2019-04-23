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

///  soldout
@objc(Soldout)
public class Soldout:NSObject,Codable{
    /// 云硬盘所属的可用区
    /// Required:true
    var azName:String
    /// 云硬盘类型，取值为ssd、premium-hdd、ssd.gp1、ssd.io1、hdd.std1之一
    /// Required:true
    var mediaType:String
    /// 是否售罄
    /// Required:true
    var isSoldOut:Bool



    public  init(azName:String,mediaType:String,isSoldOut:Bool){
             self.azName = azName
             self.mediaType = mediaType
             self.isSoldOut = isSoldOut
    }

    enum SoldoutCodingKeys: String, CodingKey {
        case azName
        case mediaType
        case isSoldOut
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SoldoutCodingKeys.self)
        self.azName = try decoderContainer.decode(String.self, forKey: .azName)
        self.mediaType = try decoderContainer.decode(String.self, forKey: .mediaType)
        self.isSoldOut = try decoderContainer.decode(Bool.self, forKey: .isSoldOut)
    }
}
public extension Soldout{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SoldoutCodingKeys.self)
         try encoderContainer.encode(azName, forKey: .azName)
         try encoderContainer.encode(mediaType, forKey: .mediaType)
         try encoderContainer.encode(isSoldOut, forKey: .isSoldOut)
    }
}