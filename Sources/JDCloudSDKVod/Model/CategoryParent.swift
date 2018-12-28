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

///  categoryParent
@objc(CategoryParent)
public class CategoryParent:NSObject,Codable{
    /// 分类ID
    var categoryId:Double?
    /// 分类名称
    var category:String?
    /// 父分类
    var parents:AnyObject?



    public override init(){
            super.init()
    }

    enum CategoryParentCodingKeys: String, CodingKey {
        case categoryId
        case category
        case parents
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CategoryParentCodingKeys.self)
        self.categoryId = try decoderContainer.decode(Double?.self, forKey: .categoryId)
        self.category = try decoderContainer.decode(String?.self, forKey: .category)
    }
}
public extension CategoryParent{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CategoryParentCodingKeys.self)
         try encoderContainer.encode(categoryId, forKey: .categoryId)
         try encoderContainer.encode(category, forKey: .category)
    }
}
