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

   Common definitions and parameters
   公共实体与参数定义

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  sort
@objc(Sort)
public class Sort:NSObject,Codable{
    /// 排序属性名
    var name:String?
    /// 排序方向
    var direction:String?



    public override init(){
            super.init()
    }

    enum SortCodingKeys: String, CodingKey {
        case name
        case direction
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SortCodingKeys.self)
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.direction)
        {
            self.direction = try decoderContainer.decode(String?.self, forKey: .direction)
        }
    }
}
public extension Sort{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SortCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(direction, forKey: .direction)
    }
}