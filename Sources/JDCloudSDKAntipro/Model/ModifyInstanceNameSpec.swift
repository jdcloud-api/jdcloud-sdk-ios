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

///  modifyInstanceNameSpec
@objc(ModifyInstanceNameSpec)
public class ModifyInstanceNameSpec:NSObject,Codable{
    /// 新的实例名称, 长度限制为 1-80 个字符, 只允许包含中文, 字母, 数字, -, ., /, _
    /// Required:true
    var name:String



    public  init(name:String){
             self.name = name
    }

    enum ModifyInstanceNameSpecCodingKeys: String, CodingKey {
        case name
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ModifyInstanceNameSpecCodingKeys.self)
        self.name = try decoderContainer.decode(String.self, forKey: .name)
    }
}
public extension ModifyInstanceNameSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyInstanceNameSpecCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
    }
}
