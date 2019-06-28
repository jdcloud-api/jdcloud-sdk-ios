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

   相关接口
   API related to order

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  orderItemDetailResponseObject
@objc(OrderItemDetailResponseObject)
public class OrderItemDetailResponseObject:NSObject,Codable{
    /// 订单总金额
    var totalFee:Double?
    /// 应付金额（订单总金额-折扣金额）
    var actualFee:Double?
    /// 余额支付金额
    var balancePay:Double?
    /// 计费时长
    var chargeDuration:Int32?
    /// 现金支付金额
    var moneyPay:Double?
    /// 退款金额
    var refundFee:Double?
    /// 计费类型(CONFIG-按配置,FLOW-按用量MONTHLY-包年包月,ONCE-按次付费)
    var chargeMode:String?
    /// 订单创建时间（格式：yyyy-MM-dd HH:mm:ss）
    var createTime:String?
    /// 续费后资源到期时间（格式：yyyy-MM-dd HH:mm:ss）
    var expireDateAfter:String?
    /// 续费前资源到期时间（格式：yyyy-MM-dd HH:mm:ss）
    var expireDateBefore:String?
    /// 销售属性
    var extraInfo:[ExtraInfo?]?
    /// 续费后资源到期-销售属性
    var extraInfoAfter:[ExtraInfo?]?
    /// 续费前资源到期-销售属性
    var extraInfoBefore:[ExtraInfo?]?
    /// 代金券金额
    var favorableFee:Double?
    /// 配置计费项
    var formula:String?
    /// 资源id
    var itemId:String?
    /// 资源名称
    var itemName:String?
    /// 订单号
    var orderNumber:String?
    /// 价格快照
    var priceSnapshot:String?
    /// 数量
    var quantity:Int32?
    /// 备注
    var remark:String?
    /// 变配明细(UP-升配补差价，DOWN-降配延时,MODIFY_CONFIG-调整配置，RENEW-续费，RENEW_UP-续费升配，RENEW_DOWN-续费降配，MONTHLY-配置转包年包月，RENEW_FREE-补偿续费)
    var resizeFormulaType:String?
    /// 产品名称
    var serviceName:String?
    /// 站点名称（MAIN_SITE-主站，INTERNATIONAL_SITE-国际站，SUQIAN_DEDICATED_CLOUD-宿迁专有云）
    var siteType:String?
    /// 资源状态（CREATING-创建中,SUCCESS-成功,FAIL-失败）
    var status:String?
    /// 计费时长单位（HOUR-小时,DAY-天,MONTH-月,YEAR-年）
    var unit:String?
    /// 子订单
    var orderItemDetailResponse:[OrderItemDetailResponseObject?]?



    public override init(){
            super.init()
    }

    enum OrderItemDetailResponseObjectCodingKeys: String, CodingKey {
        case totalFee
        case actualFee
        case balancePay
        case chargeDuration
        case moneyPay
        case refundFee
        case chargeMode
        case createTime
        case expireDateAfter
        case expireDateBefore
        case extraInfo
        case extraInfoAfter
        case extraInfoBefore
        case favorableFee
        case formula
        case itemId
        case itemName
        case orderNumber
        case priceSnapshot
        case quantity
        case remark
        case resizeFormulaType
        case serviceName
        case siteType
        case status
        case unit
        case orderItemDetailResponse
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OrderItemDetailResponseObjectCodingKeys.self)
        if decoderContainer.contains(.totalFee)
        {
            self.totalFee = try decoderContainer.decode(Double?.self, forKey: .totalFee)
        }
        if decoderContainer.contains(.actualFee)
        {
            self.actualFee = try decoderContainer.decode(Double?.self, forKey: .actualFee)
        }
        if decoderContainer.contains(.balancePay)
        {
            self.balancePay = try decoderContainer.decode(Double?.self, forKey: .balancePay)
        }
        if decoderContainer.contains(.chargeDuration)
        {
            self.chargeDuration = try decoderContainer.decode(Int32?.self, forKey: .chargeDuration)
        }
        if decoderContainer.contains(.moneyPay)
        {
            self.moneyPay = try decoderContainer.decode(Double?.self, forKey: .moneyPay)
        }
        if decoderContainer.contains(.refundFee)
        {
            self.refundFee = try decoderContainer.decode(Double?.self, forKey: .refundFee)
        }
        if decoderContainer.contains(.chargeMode)
        {
            self.chargeMode = try decoderContainer.decode(String?.self, forKey: .chargeMode)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.expireDateAfter)
        {
            self.expireDateAfter = try decoderContainer.decode(String?.self, forKey: .expireDateAfter)
        }
        if decoderContainer.contains(.expireDateBefore)
        {
            self.expireDateBefore = try decoderContainer.decode(String?.self, forKey: .expireDateBefore)
        }
        if decoderContainer.contains(.extraInfo)
        {
            self.extraInfo = try decoderContainer.decode([ExtraInfo?]?.self, forKey: .extraInfo)
        }
        if decoderContainer.contains(.extraInfoAfter)
        {
            self.extraInfoAfter = try decoderContainer.decode([ExtraInfo?]?.self, forKey: .extraInfoAfter)
        }
        if decoderContainer.contains(.extraInfoBefore)
        {
            self.extraInfoBefore = try decoderContainer.decode([ExtraInfo?]?.self, forKey: .extraInfoBefore)
        }
        if decoderContainer.contains(.favorableFee)
        {
            self.favorableFee = try decoderContainer.decode(Double?.self, forKey: .favorableFee)
        }
        if decoderContainer.contains(.formula)
        {
            self.formula = try decoderContainer.decode(String?.self, forKey: .formula)
        }
        if decoderContainer.contains(.itemId)
        {
            self.itemId = try decoderContainer.decode(String?.self, forKey: .itemId)
        }
        if decoderContainer.contains(.itemName)
        {
            self.itemName = try decoderContainer.decode(String?.self, forKey: .itemName)
        }
        if decoderContainer.contains(.orderNumber)
        {
            self.orderNumber = try decoderContainer.decode(String?.self, forKey: .orderNumber)
        }
        if decoderContainer.contains(.priceSnapshot)
        {
            self.priceSnapshot = try decoderContainer.decode(String?.self, forKey: .priceSnapshot)
        }
        if decoderContainer.contains(.quantity)
        {
            self.quantity = try decoderContainer.decode(Int32?.self, forKey: .quantity)
        }
        if decoderContainer.contains(.remark)
        {
            self.remark = try decoderContainer.decode(String?.self, forKey: .remark)
        }
        if decoderContainer.contains(.resizeFormulaType)
        {
            self.resizeFormulaType = try decoderContainer.decode(String?.self, forKey: .resizeFormulaType)
        }
        if decoderContainer.contains(.serviceName)
        {
            self.serviceName = try decoderContainer.decode(String?.self, forKey: .serviceName)
        }
        if decoderContainer.contains(.siteType)
        {
            self.siteType = try decoderContainer.decode(String?.self, forKey: .siteType)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.unit)
        {
            self.unit = try decoderContainer.decode(String?.self, forKey: .unit)
        }
        if decoderContainer.contains(.orderItemDetailResponse)
        {
            self.orderItemDetailResponse = try decoderContainer.decode([OrderItemDetailResponseObject?]?.self, forKey: .orderItemDetailResponse)
        }
    }
}
public extension OrderItemDetailResponseObject{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OrderItemDetailResponseObjectCodingKeys.self)
         try encoderContainer.encode(totalFee, forKey: .totalFee)
         try encoderContainer.encode(actualFee, forKey: .actualFee)
         try encoderContainer.encode(balancePay, forKey: .balancePay)
         try encoderContainer.encode(chargeDuration, forKey: .chargeDuration)
         try encoderContainer.encode(moneyPay, forKey: .moneyPay)
         try encoderContainer.encode(refundFee, forKey: .refundFee)
         try encoderContainer.encode(chargeMode, forKey: .chargeMode)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(expireDateAfter, forKey: .expireDateAfter)
         try encoderContainer.encode(expireDateBefore, forKey: .expireDateBefore)
         try encoderContainer.encode(extraInfo, forKey: .extraInfo)
         try encoderContainer.encode(extraInfoAfter, forKey: .extraInfoAfter)
         try encoderContainer.encode(extraInfoBefore, forKey: .extraInfoBefore)
         try encoderContainer.encode(favorableFee, forKey: .favorableFee)
         try encoderContainer.encode(formula, forKey: .formula)
         try encoderContainer.encode(itemId, forKey: .itemId)
         try encoderContainer.encode(itemName, forKey: .itemName)
         try encoderContainer.encode(orderNumber, forKey: .orderNumber)
         try encoderContainer.encode(priceSnapshot, forKey: .priceSnapshot)
         try encoderContainer.encode(quantity, forKey: .quantity)
         try encoderContainer.encode(remark, forKey: .remark)
         try encoderContainer.encode(resizeFormulaType, forKey: .resizeFormulaType)
         try encoderContainer.encode(serviceName, forKey: .serviceName)
         try encoderContainer.encode(siteType, forKey: .siteType)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(unit, forKey: .unit)
         try encoderContainer.encode(orderItemDetailResponse, forKey: .orderItemDetailResponse)
    }
}
