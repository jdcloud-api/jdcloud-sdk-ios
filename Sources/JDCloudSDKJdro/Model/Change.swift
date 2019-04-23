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

///  change
@objc(Change)
public class Change:NSObject,Codable{
    /// ResourceChange
    var resourceChange:ResourceChange?
    /// Type
    var type:String?



    public override init(){
            super.init()
    }

    enum ChangeCodingKeys: String, CodingKey {
        case resourceChange
        case type
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ChangeCodingKeys.self)
        if decoderContainer.contains(.resourceChange)
        {
            self.resourceChange = try decoderContainer.decode(ResourceChange?.self, forKey: .resourceChange)
        }
        if decoderContainer.contains(.type)
        {
            self.type = try decoderContainer.decode(String?.self, forKey: .type)
        }
    }
}
public extension Change{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ChangeCodingKeys.self)
         try encoderContainer.encode(resourceChange, forKey: .resourceChange)
         try encoderContainer.encode(type, forKey: .type)
    }
}
