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

///  可用域信息
@objc(AzInfo)
public class AzInfo:NSObject,Codable{
    /// 可用域 ID
    var zoneId:String?
    /// 名称
    var localName:String?



    public override init(){
            super.init()
    }

    enum AzInfoCodingKeys: String, CodingKey {
        case zoneId
        case localName
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AzInfoCodingKeys.self)
        if decoderContainer.contains(.zoneId)
        {
            self.zoneId = try decoderContainer.decode(String?.self, forKey: .zoneId)
        }
        if decoderContainer.contains(.localName)
        {
            self.localName = try decoderContainer.decode(String?.self, forKey: .localName)
        }
    }
}
public extension AzInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AzInfoCodingKeys.self)
         try encoderContainer.encode(zoneId, forKey: .zoneId)
         try encoderContainer.encode(localName, forKey: .localName)
    }
}