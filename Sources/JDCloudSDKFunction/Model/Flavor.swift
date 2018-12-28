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

///  flavor
@objc(Flavor)
public class Flavor:NSObject,Codable{
    /// flavor键
    var flavorKey:String?
    /// cpu规格
    var cpu:Int?
    /// 内存规格
    var memory:Int?
    /// 硬盘规格
    var disk:Int?



    public override init(){
            super.init()
    }

    enum FlavorCodingKeys: String, CodingKey {
        case flavorKey
        case cpu
        case memory
        case disk
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: FlavorCodingKeys.self)
        self.flavorKey = try decoderContainer.decode(String?.self, forKey: .flavorKey)
        self.cpu = try decoderContainer.decode(Int?.self, forKey: .cpu)
        self.memory = try decoderContainer.decode(Int?.self, forKey: .memory)
        self.disk = try decoderContainer.decode(Int?.self, forKey: .disk)
    }
}
public extension Flavor{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: FlavorCodingKeys.self)
         try encoderContainer.encode(flavorKey, forKey: .flavorKey)
         try encoderContainer.encode(cpu, forKey: .cpu)
         try encoderContainer.encode(memory, forKey: .memory)
         try encoderContainer.encode(disk, forKey: .disk)
    }
}
