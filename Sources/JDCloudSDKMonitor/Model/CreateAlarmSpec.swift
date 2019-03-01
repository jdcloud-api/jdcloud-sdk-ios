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

///  createAlarmSpec
@objc(CreateAlarmSpec)
public class CreateAlarmSpec:NSObject,Codable{
    /// 幂等性校验参数,最长36位,若两个请求clientToken相等，则返回第一次创建的规则id，只创建一次规则
    /// Required:true
    var clientToken:String
    /// CreateAlarmSpecValue
    /// Required:true
    var createAlarmSpecValue:CreateAlarmParam



    public  init(clientToken:String,createAlarmSpecValue:CreateAlarmParam){
             self.clientToken = clientToken
             self.createAlarmSpecValue = createAlarmSpecValue
    }

    enum CreateAlarmSpecCodingKeys: String, CodingKey {
        case clientToken
        case createAlarmSpecValue = "createAlarmSpec"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateAlarmSpecCodingKeys.self)
        self.clientToken = try decoderContainer.decode(String.self, forKey: .clientToken)
        self.createAlarmSpecValue = try decoderContainer.decode(CreateAlarmParam.self, forKey: .createAlarmSpecValue)
    }
}
public extension CreateAlarmSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateAlarmSpecCodingKeys.self)
         try encoderContainer.encode(clientToken, forKey: .clientToken)
         try encoderContainer.encode(createAlarmSpecValue, forKey: .createAlarmSpecValue)
    }
}
