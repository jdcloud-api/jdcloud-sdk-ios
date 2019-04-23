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

///  returnConditionOperatorDTO
@objc(ReturnConditionOperatorDTO)
public class ReturnConditionOperatorDTO:NSObject,Codable{
    /// 条件编码
    var code:Int?
    /// 操作符
    var operatorValue:String?
    /// 条件值
    var value:Double?



    public override init(){
            super.init()
    }

    enum ReturnConditionOperatorDTOCodingKeys: String, CodingKey {
        case code
        case operatorValue = "operator"
        case value
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ReturnConditionOperatorDTOCodingKeys.self)
        if decoderContainer.contains(.code)
        {
            self.code = try decoderContainer.decode(Int?.self, forKey: .code)
        }
        if decoderContainer.contains(.operatorValue)
        {
            self.operatorValue = try decoderContainer.decode(String?.self, forKey: .operatorValue)
        }
        if decoderContainer.contains(.value)
        {
            self.value = try decoderContainer.decode(Double?.self, forKey: .value)
        }
    }
}
public extension ReturnConditionOperatorDTO{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ReturnConditionOperatorDTOCodingKeys.self)
         try encoderContainer.encode(code, forKey: .code)
         try encoderContainer.encode(operatorValue, forKey: .operatorValue)
         try encoderContainer.encode(value, forKey: .value)
    }
}