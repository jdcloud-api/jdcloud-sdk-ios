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

///  createRDSAccount
@objc(CreateRDSAccount)
public class CreateRDSAccount:NSObject,Codable{
    /// 账号名
    /// Required:true
    var name:String
    /// 密码
    /// Required:true
    var password:String



    public  init(name:String,password:String){
             self.name = name
             self.password = password
    }

    enum CreateRDSAccountCodingKeys: String, CodingKey {
        case name
        case password
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateRDSAccountCodingKeys.self)
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        self.password = try decoderContainer.decode(String.self, forKey: .password)
    }
}
public extension CreateRDSAccount{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateRDSAccountCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(password, forKey: .password)
    }
}
