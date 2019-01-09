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

///  productDetailList
@objc(ProductDetailList)
public class ProductDetailList:NSObject,Codable{
    /// Key
    var key:Int?
    /// Values
    var values:Pagination?



    public override init(){
            super.init()
    }

    enum ProductDetailListCodingKeys: String, CodingKey {
        case key
        case values
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ProductDetailListCodingKeys.self)
        if decoderContainer.contains(.key)
        {
            self.key = try decoderContainer.decode(Int?.self, forKey: .key)
        }
        if decoderContainer.contains(.values)
        {
            self.values = try decoderContainer.decode(Pagination?.self, forKey: .values)
        }
    }
}
public extension ProductDetailList{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ProductDetailListCodingKeys.self)
         try encoderContainer.encode(key, forKey: .key)
         try encoderContainer.encode(values, forKey: .values)
    }
}
