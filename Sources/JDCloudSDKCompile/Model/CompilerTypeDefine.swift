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

///  compilerTypeDefine
@objc(CompilerTypeDefine)
public class CompilerTypeDefine:NSObject,Codable{
    /// Label
    var label:String?
    /// Value
    var value:String?



    public override init(){
            super.init()
    }

    enum CompilerTypeDefineCodingKeys: String, CodingKey {
        case label
        case value
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CompilerTypeDefineCodingKeys.self)
        if decoderContainer.contains(.label)
        {
            self.label = try decoderContainer.decode(String?.self, forKey: .label)
        }
        if decoderContainer.contains(.value)
        {
            self.value = try decoderContainer.decode(String?.self, forKey: .value)
        }
    }
}
public extension CompilerTypeDefine{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CompilerTypeDefineCodingKeys.self)
         try encoderContainer.encode(label, forKey: .label)
         try encoderContainer.encode(value, forKey: .value)
    }
}
