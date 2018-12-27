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

///  setalb
@objc(Setalb)
public class Setalb:NSObject,Codable{
    /// 解析记录的ID。在getALB接口中获取。
    var id:Int?
    /// 此条解析记录的权重。
    var weight:Int?



    public override init(){
            super.init()
    }

    enum SetalbCodingKeys: String, CodingKey {
        case id
        case weight
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SetalbCodingKeys.self)
        self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        self.weight = try decoderContainer.decode(Int?.self, forKey: .weight)
    }
}
public extension Setalb{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetalbCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(weight, forKey: .weight)
    }
}