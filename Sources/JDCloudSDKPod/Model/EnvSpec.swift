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

///  容器环境变量。
@objc(EnvSpec)
public class EnvSpec:NSObject,Codable{
    /// 环境变量名称（ASCII）。范围：[1-64]。必须为字母、数字、下划线()，正则为&#x60;[a-zA-Z0-9]*$&#x60;。
    /// Required:true
    var name:String
    /// 环境变量取值。范围：[0-1024]
    var value:String?



    public  init(name:String){
             self.name = name
    }

    enum EnvSpecCodingKeys: String, CodingKey {
        case name
        case value
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: EnvSpecCodingKeys.self)
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        if decoderContainer.contains(.value)
        {
            self.value = try decoderContainer.decode(String?.self, forKey: .value)
        }
    }
}
public extension EnvSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: EnvSpecCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(value, forKey: .value)
    }
}