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

///  filter
@objc(Filter)
public class Filter:NSObject,Codable{
    /// 过滤条件的名称
    /// Required:true
    var name:String
    /// 过滤条件的操作符，默认eq
    var operatorValue:String?
    /// 过滤条件的值
    /// Required:true
    var values:[String?]



    public  init(name:String,values:[String?]){
             self.name = name
             self.values = values
    }

    enum FilterCodingKeys: String, CodingKey {
        case name
        case operatorValue = "operator"
        case values
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: FilterCodingKeys.self)
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        if decoderContainer.contains(.operatorValue)
        {
            self.operatorValue = try decoderContainer.decode(String?.self, forKey: .operatorValue)
        }
        self.values = try decoderContainer.decode([String?].self, forKey: .values)
    }
}
public extension Filter{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: FilterCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(operatorValue, forKey: .operatorValue)
         try encoderContainer.encode(values, forKey: .values)
    }
}
