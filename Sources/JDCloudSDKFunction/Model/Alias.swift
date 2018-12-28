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

///  alias
@objc(Alias)
public class Alias:NSObject,Codable{
    /// 别名Id
    var aliasId:String?
    /// 别名名称
    var aliasName:String?
    /// 别名对应的函数名称
    var functionName:String?
    /// 别名描述信息
    var descriptionValue:String?
    /// 别名对应的版本名称
    var version:String?



    public override init(){
            super.init()
    }

    enum AliasCodingKeys: String, CodingKey {
        case aliasId
        case aliasName
        case functionName
        case descriptionValue = "description"
        case version
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AliasCodingKeys.self)
        self.aliasId = try decoderContainer.decode(String?.self, forKey: .aliasId)
        self.aliasName = try decoderContainer.decode(String?.self, forKey: .aliasName)
        self.functionName = try decoderContainer.decode(String?.self, forKey: .functionName)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        self.version = try decoderContainer.decode(String?.self, forKey: .version)
    }
}
public extension Alias{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AliasCodingKeys.self)
         try encoderContainer.encode(aliasId, forKey: .aliasId)
         try encoderContainer.encode(aliasName, forKey: .aliasName)
         try encoderContainer.encode(functionName, forKey: .functionName)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(version, forKey: .version)
    }
}
