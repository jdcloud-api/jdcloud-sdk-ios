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

///  software
@objc(Software)
public class Software:NSObject,Codable{
    /// 软件包名称
    var name:String?
    /// 软件包版本
    var version:String?
    /// 操作系统系统类型ID
    var osTypeId:String?
    /// 软件包描述
    var descriptionValue:String?



    public override init(){
            super.init()
    }

    enum SoftwareCodingKeys: String, CodingKey {
        case name
        case version
        case osTypeId
        case descriptionValue = "description"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SoftwareCodingKeys.self)
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.version)
        {
            self.version = try decoderContainer.decode(String?.self, forKey: .version)
        }
        if decoderContainer.contains(.osTypeId)
        {
            self.osTypeId = try decoderContainer.decode(String?.self, forKey: .osTypeId)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
    }
}
public extension Software{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SoftwareCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(version, forKey: .version)
         try encoderContainer.encode(osTypeId, forKey: .osTypeId)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
    }
}
