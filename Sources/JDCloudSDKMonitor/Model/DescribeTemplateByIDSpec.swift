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

///  describeTemplateByIDSpec
@objc(DescribeTemplateByIDSpec)
public class DescribeTemplateByIDSpec:NSObject,Codable{
    /// 模板类型，区分默认模板和用户自定义模板：1表示默认模板，2表示用户自定义模板
      /// in: query
    var templateType:Int64?



    public override init(){
            super.init()
    }

    enum DescribeTemplateByIDSpecCodingKeys: String, CodingKey {
        case templateType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeTemplateByIDSpecCodingKeys.self)
        if decoderContainer.contains(.templateType)
        {
            self.templateType = try decoderContainer.decode(Int64?.self, forKey: .templateType)
        }
    }
}
public extension DescribeTemplateByIDSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeTemplateByIDSpecCodingKeys.self)
         try encoderContainer.encode(templateType, forKey: .templateType)
    }
}
