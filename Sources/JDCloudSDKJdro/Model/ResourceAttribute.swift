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

///  资源输出参数类型
@objc(ResourceAttribute)
public class ResourceAttribute:NSObject,Codable{
    /// 注释
    var comment:String?
    /// 如果 Type 字段的值为 List 或 Map，则指示列表或映射的类型 (如果它们包含非基元类型)
    var itemType:String?
    /// 如果 Type 字段的值为 List 或 Map，则指示列表或映射的类型 (如果它们包含基元类型)
    var primitiveItemType:String?
    /// 基元类型
    var primitiveType:String?
    /// Type
    var type:PropertyItemType?



    public override init(){
            super.init()
    }

    enum ResourceAttributeCodingKeys: String, CodingKey {
        case comment
        case itemType
        case primitiveItemType
        case primitiveType
        case type
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ResourceAttributeCodingKeys.self)
        if decoderContainer.contains(.comment)
        {
            self.comment = try decoderContainer.decode(String?.self, forKey: .comment)
        }
        if decoderContainer.contains(.itemType)
        {
            self.itemType = try decoderContainer.decode(String?.self, forKey: .itemType)
        }
        if decoderContainer.contains(.primitiveItemType)
        {
            self.primitiveItemType = try decoderContainer.decode(String?.self, forKey: .primitiveItemType)
        }
        if decoderContainer.contains(.primitiveType)
        {
            self.primitiveType = try decoderContainer.decode(String?.self, forKey: .primitiveType)
        }
        if decoderContainer.contains(.type)
        {
            self.type = try decoderContainer.decode(PropertyItemType?.self, forKey: .type)
        }
    }
}
public extension ResourceAttribute{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResourceAttributeCodingKeys.self)
         try encoderContainer.encode(comment, forKey: .comment)
         try encoderContainer.encode(itemType, forKey: .itemType)
         try encoderContainer.encode(primitiveItemType, forKey: .primitiveItemType)
         try encoderContainer.encode(primitiveType, forKey: .primitiveType)
         try encoderContainer.encode(type, forKey: .type)
    }
}
