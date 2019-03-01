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

///  createStackSpec
@objc(CreateStackSpec)
public class CreateStackSpec:NSObject,Codable{
    /// Environment
    /// Required:true
    var environment:Environment
    /// 模板, JSON对象
    /// Required:true
    var template:AnyObject?



    public  init(environment:Environment,template:AnyObject?){
             self.environment = environment
             self.template = template
    }

    enum CreateStackSpecCodingKeys: String, CodingKey {
        case environment
        case template
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateStackSpecCodingKeys.self)
        self.environment = try decoderContainer.decode(Environment.self, forKey: .environment)
    }
}
public extension CreateStackSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateStackSpecCodingKeys.self)
         try encoderContainer.encode(environment, forKey: .environment)
    }
}
