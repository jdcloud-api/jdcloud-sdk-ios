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

///  productServiceVoListData
@objc(ProductServiceVoListData)
public class ProductServiceVoListData:NSObject,Codable{
    /// 页码
    var pageNo:Int?
    /// 每页记录数
    var pageSize:Int?
    /// 总记录数
    var totalRecord:Int?
    /// 总页数
    var totalPage:Int?
    /// 交付单信息列表
    var dataList:[ProductServiceVo?]?



    public override init(){
            super.init()
    }

    enum ProductServiceVoListDataCodingKeys: String, CodingKey {
        case pageNo
        case pageSize
        case totalRecord
        case totalPage
        case dataList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ProductServiceVoListDataCodingKeys.self)
        if decoderContainer.contains(.pageNo)
        {
            self.pageNo = try decoderContainer.decode(Int?.self, forKey: .pageNo)
        }
        if decoderContainer.contains(.pageSize)
        {
            self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        }
        if decoderContainer.contains(.totalRecord)
        {
            self.totalRecord = try decoderContainer.decode(Int?.self, forKey: .totalRecord)
        }
        if decoderContainer.contains(.totalPage)
        {
            self.totalPage = try decoderContainer.decode(Int?.self, forKey: .totalPage)
        }
        if decoderContainer.contains(.dataList)
        {
            self.dataList = try decoderContainer.decode([ProductServiceVo?]?.self, forKey: .dataList)
        }
    }
}
public extension ProductServiceVoListData{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ProductServiceVoListDataCodingKeys.self)
         try encoderContainer.encode(pageNo, forKey: .pageNo)
         try encoderContainer.encode(pageSize, forKey: .pageSize)
         try encoderContainer.encode(totalRecord, forKey: .totalRecord)
         try encoderContainer.encode(totalPage, forKey: .totalPage)
         try encoderContainer.encode(dataList, forKey: .dataList)
    }
}
