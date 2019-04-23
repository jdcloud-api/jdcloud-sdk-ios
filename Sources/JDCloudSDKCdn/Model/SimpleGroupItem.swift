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

///  simpleGroupItem
@objc(SimpleGroupItem)
public class SimpleGroupItem:NSObject,Codable{
    /// Name
    var name:String?
    /// Id
    var id:Int64?



    public override init(){
            super.init()
    }

    enum SimpleGroupItemCodingKeys: String, CodingKey {
        case name
        case id
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SimpleGroupItemCodingKeys.self)
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int64?.self, forKey: .id)
        }
    }
}
public extension SimpleGroupItem{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SimpleGroupItemCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(id, forKey: .id)
    }
}