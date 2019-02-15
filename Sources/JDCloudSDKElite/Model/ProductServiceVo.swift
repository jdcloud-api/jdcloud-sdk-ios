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

///  productServiceVo
@objc(ProductServiceVo)
public class ProductServiceVo:NSObject,Codable{
    /// 交付单号
    var deliverNumber:String?
    /// 订单号
    var orderNumber:String?
    /// 产品ID
    var productId:Int?
    /// sku ID
    var skuId:Int?
    /// sku名称
    var skuName:String?
    /// 服务code
    var serviceCode:String?
    /// 数量
    var num:Int?
    /// 周期
    var period:Int?
    /// 周期类型
    var periodType:Int?
    /// 周期类型名称
    var periodTypeName:String?
    /// 账号数量
    var accountNum:Int?
    /// 交付状态
    var deliverStatus:Int?
    /// 交付状态名称
    var deliverStatusName:String?
    /// 服务生效时间，格式：yyyy-MM-dd HH:mm:ss
    var effectiveDt:String?
    /// 服务过期时间，格式：yyyy-MM-dd HH:mm:ss
    var failureDt:String?
    /// 商品属性
    var extraInfo:String?
    /// 交付单备注
    var remark:String?



    public override init(){
            super.init()
    }

    enum ProductServiceVoCodingKeys: String, CodingKey {
        case deliverNumber
        case orderNumber
        case productId
        case skuId
        case skuName
        case serviceCode
        case num
        case period
        case periodType
        case periodTypeName
        case accountNum
        case deliverStatus
        case deliverStatusName
        case effectiveDt
        case failureDt
        case extraInfo
        case remark
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ProductServiceVoCodingKeys.self)
        if decoderContainer.contains(.deliverNumber)
        {
            self.deliverNumber = try decoderContainer.decode(String?.self, forKey: .deliverNumber)
        }
        if decoderContainer.contains(.orderNumber)
        {
            self.orderNumber = try decoderContainer.decode(String?.self, forKey: .orderNumber)
        }
        if decoderContainer.contains(.productId)
        {
            self.productId = try decoderContainer.decode(Int?.self, forKey: .productId)
        }
        if decoderContainer.contains(.skuId)
        {
            self.skuId = try decoderContainer.decode(Int?.self, forKey: .skuId)
        }
        if decoderContainer.contains(.skuName)
        {
            self.skuName = try decoderContainer.decode(String?.self, forKey: .skuName)
        }
        if decoderContainer.contains(.serviceCode)
        {
            self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        }
        if decoderContainer.contains(.num)
        {
            self.num = try decoderContainer.decode(Int?.self, forKey: .num)
        }
        if decoderContainer.contains(.period)
        {
            self.period = try decoderContainer.decode(Int?.self, forKey: .period)
        }
        if decoderContainer.contains(.periodType)
        {
            self.periodType = try decoderContainer.decode(Int?.self, forKey: .periodType)
        }
        if decoderContainer.contains(.periodTypeName)
        {
            self.periodTypeName = try decoderContainer.decode(String?.self, forKey: .periodTypeName)
        }
        if decoderContainer.contains(.accountNum)
        {
            self.accountNum = try decoderContainer.decode(Int?.self, forKey: .accountNum)
        }
        if decoderContainer.contains(.deliverStatus)
        {
            self.deliverStatus = try decoderContainer.decode(Int?.self, forKey: .deliverStatus)
        }
        if decoderContainer.contains(.deliverStatusName)
        {
            self.deliverStatusName = try decoderContainer.decode(String?.self, forKey: .deliverStatusName)
        }
        if decoderContainer.contains(.effectiveDt)
        {
            self.effectiveDt = try decoderContainer.decode(String?.self, forKey: .effectiveDt)
        }
        if decoderContainer.contains(.failureDt)
        {
            self.failureDt = try decoderContainer.decode(String?.self, forKey: .failureDt)
        }
        if decoderContainer.contains(.extraInfo)
        {
            self.extraInfo = try decoderContainer.decode(String?.self, forKey: .extraInfo)
        }
        if decoderContainer.contains(.remark)
        {
            self.remark = try decoderContainer.decode(String?.self, forKey: .remark)
        }
    }
}
public extension ProductServiceVo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ProductServiceVoCodingKeys.self)
         try encoderContainer.encode(deliverNumber, forKey: .deliverNumber)
         try encoderContainer.encode(orderNumber, forKey: .orderNumber)
         try encoderContainer.encode(productId, forKey: .productId)
         try encoderContainer.encode(skuId, forKey: .skuId)
         try encoderContainer.encode(skuName, forKey: .skuName)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(num, forKey: .num)
         try encoderContainer.encode(period, forKey: .period)
         try encoderContainer.encode(periodType, forKey: .periodType)
         try encoderContainer.encode(periodTypeName, forKey: .periodTypeName)
         try encoderContainer.encode(accountNum, forKey: .accountNum)
         try encoderContainer.encode(deliverStatus, forKey: .deliverStatus)
         try encoderContainer.encode(deliverStatusName, forKey: .deliverStatusName)
         try encoderContainer.encode(effectiveDt, forKey: .effectiveDt)
         try encoderContainer.encode(failureDt, forKey: .failureDt)
         try encoderContainer.encode(extraInfo, forKey: .extraInfo)
         try encoderContainer.encode(remark, forKey: .remark)
    }
}
