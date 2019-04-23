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

///  orderPrice
@objc(OrderPrice)
public class OrderPrice:NSObject,Codable{
    /// 折扣前总价
    var totalPrice:Double?
    /// 折扣前总价4位
    var totalPriceScale4:Double?
    /// 折扣后订单价格
    var discountedTotalPrice:Double?
    /// 总折扣金额
    var totalDiscount:Double?
    /// 计算完价格后的详细订单列表
    var list:[OrderPriceDetail?]?
    /// 订单原价 包年时 一年原价为12个月价格，totalPrice为10个月价格
    var totalOriginalPrice:Double?
    /// 参与优惠的明细
    var favorableInfos:Int?
    /// 备注
    var remark:Int?



    public override init(){
            super.init()
    }

    enum OrderPriceCodingKeys: String, CodingKey {
        case totalPrice
        case totalPriceScale4
        case discountedTotalPrice
        case totalDiscount
        case list
        case totalOriginalPrice
        case favorableInfos
        case remark
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OrderPriceCodingKeys.self)
        if decoderContainer.contains(.totalPrice)
        {
            self.totalPrice = try decoderContainer.decode(Double?.self, forKey: .totalPrice)
        }
        if decoderContainer.contains(.totalPriceScale4)
        {
            self.totalPriceScale4 = try decoderContainer.decode(Double?.self, forKey: .totalPriceScale4)
        }
        if decoderContainer.contains(.discountedTotalPrice)
        {
            self.discountedTotalPrice = try decoderContainer.decode(Double?.self, forKey: .discountedTotalPrice)
        }
        if decoderContainer.contains(.totalDiscount)
        {
            self.totalDiscount = try decoderContainer.decode(Double?.self, forKey: .totalDiscount)
        }
        if decoderContainer.contains(.list)
        {
            self.list = try decoderContainer.decode([OrderPriceDetail?]?.self, forKey: .list)
        }
        if decoderContainer.contains(.totalOriginalPrice)
        {
            self.totalOriginalPrice = try decoderContainer.decode(Double?.self, forKey: .totalOriginalPrice)
        }
        if decoderContainer.contains(.favorableInfos)
        {
            self.favorableInfos = try decoderContainer.decode(Int?.self, forKey: .favorableInfos)
        }
        if decoderContainer.contains(.remark)
        {
            self.remark = try decoderContainer.decode(Int?.self, forKey: .remark)
        }
    }
}
public extension OrderPrice{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OrderPriceCodingKeys.self)
         try encoderContainer.encode(totalPrice, forKey: .totalPrice)
         try encoderContainer.encode(totalPriceScale4, forKey: .totalPriceScale4)
         try encoderContainer.encode(discountedTotalPrice, forKey: .discountedTotalPrice)
         try encoderContainer.encode(totalDiscount, forKey: .totalDiscount)
         try encoderContainer.encode(list, forKey: .list)
         try encoderContainer.encode(totalOriginalPrice, forKey: .totalOriginalPrice)
         try encoderContainer.encode(favorableInfos, forKey: .favorableInfos)
         try encoderContainer.encode(remark, forKey: .remark)
    }
}
