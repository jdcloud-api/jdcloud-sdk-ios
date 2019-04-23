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

///  resourceTargetDefinition
@objc(ResourceTargetDefinition)
public class ResourceTargetDefinition:NSObject,Codable{
    /// Attribute
    var attribute:String?
    /// 如果 Attribute 为 Properties，值为属性的名称，否则为空
    var name:String?
    /// RequiresRecreation
    var requiresRecreation:String?



    public override init(){
            super.init()
    }

    enum ResourceTargetDefinitionCodingKeys: String, CodingKey {
        case attribute
        case name
        case requiresRecreation
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ResourceTargetDefinitionCodingKeys.self)
        if decoderContainer.contains(.attribute)
        {
            self.attribute = try decoderContainer.decode(String?.self, forKey: .attribute)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.requiresRecreation)
        {
            self.requiresRecreation = try decoderContainer.decode(String?.self, forKey: .requiresRecreation)
        }
    }
}
public extension ResourceTargetDefinition{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResourceTargetDefinitionCodingKeys.self)
         try encoderContainer.encode(attribute, forKey: .attribute)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(requiresRecreation, forKey: .requiresRecreation)
    }
}
