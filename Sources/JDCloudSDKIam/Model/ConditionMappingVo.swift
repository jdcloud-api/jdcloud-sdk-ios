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

///  conditionMappingVo
@objc(ConditionMappingVo)
public class ConditionMappingVo:NSObject,Codable{
    /// 条件键Key
    var conditionKey:String?
    /// 符合条件键的值列表
    var values:[String?]?



    public override init(){
            super.init()
    }

    enum ConditionMappingVoCodingKeys: String, CodingKey {
        case conditionKey
        case values
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ConditionMappingVoCodingKeys.self)
        if decoderContainer.contains(.conditionKey)
        {
            self.conditionKey = try decoderContainer.decode(String?.self, forKey: .conditionKey)
        }
        if decoderContainer.contains(.values)
        {
            self.values = try decoderContainer.decode([String?]?.self, forKey: .values)
        }
    }
}
public extension ConditionMappingVo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ConditionMappingVoCodingKeys.self)
         try encoderContainer.encode(conditionKey, forKey: .conditionKey)
         try encoderContainer.encode(values, forKey: .values)
    }
}