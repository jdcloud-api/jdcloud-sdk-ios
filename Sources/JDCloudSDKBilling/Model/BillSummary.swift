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

///  billSummary
@objc(BillSummary)
public class BillSummary:NSObject,Codable{
    /// 用户pin
    var pin:String?
    /// appCode
    var appCode:String?
    /// 产品线代码名称
    var appCodeName:String?
    /// serviceCode
    var serviceCode:String?
    /// 产品代码名称
    var serviceCodeName:String?
    /// 计费类型
    var billingType:Int?
    /// 计费类型描述
    var billingTypeName:String?
    /// 资源id
    var resourceId:String?
    /// 资源名称
    var resourceName:String?
    /// 区域
    var region:String?
    /// 费用类型
    var actionTypeName:String?
    /// 规格
    var formula:String?
    /// 计费开始时间
    var startTime:String?
    /// 计费结束时间
    var endTime:String?
    /// 账单生成时间
    var billTime:String?
    /// 账单总额
    var totalFee:Double?
    /// 优惠金额
    var discountFee:Double?
    /// 优惠后总价金额
    var realTotalFee:Double?
    /// 代金券支付金额
    var cashCouponPayFee:Double?
    /// 余额支付金额
    var balancePayFee:Double?
    /// 现金支付金额
    var cashPayFee:Double?
    /// 欠费金额
    var arrearFee:Double?



    public override init(){
            super.init()
    }

    enum BillSummaryCodingKeys: String, CodingKey {
        case pin
        case appCode
        case appCodeName
        case serviceCode
        case serviceCodeName
        case billingType
        case billingTypeName
        case resourceId
        case resourceName
        case region
        case actionTypeName
        case formula
        case startTime
        case endTime
        case billTime
        case totalFee
        case discountFee
        case realTotalFee
        case cashCouponPayFee
        case balancePayFee
        case cashPayFee
        case arrearFee
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BillSummaryCodingKeys.self)
        if decoderContainer.contains(.pin)
        {
            self.pin = try decoderContainer.decode(String?.self, forKey: .pin)
        }
        if decoderContainer.contains(.appCode)
        {
            self.appCode = try decoderContainer.decode(String?.self, forKey: .appCode)
        }
        if decoderContainer.contains(.appCodeName)
        {
            self.appCodeName = try decoderContainer.decode(String?.self, forKey: .appCodeName)
        }
        if decoderContainer.contains(.serviceCode)
        {
            self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        }
        if decoderContainer.contains(.serviceCodeName)
        {
            self.serviceCodeName = try decoderContainer.decode(String?.self, forKey: .serviceCodeName)
        }
        if decoderContainer.contains(.billingType)
        {
            self.billingType = try decoderContainer.decode(Int?.self, forKey: .billingType)
        }
        if decoderContainer.contains(.billingTypeName)
        {
            self.billingTypeName = try decoderContainer.decode(String?.self, forKey: .billingTypeName)
        }
        if decoderContainer.contains(.resourceId)
        {
            self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
        }
        if decoderContainer.contains(.resourceName)
        {
            self.resourceName = try decoderContainer.decode(String?.self, forKey: .resourceName)
        }
        if decoderContainer.contains(.region)
        {
            self.region = try decoderContainer.decode(String?.self, forKey: .region)
        }
        if decoderContainer.contains(.actionTypeName)
        {
            self.actionTypeName = try decoderContainer.decode(String?.self, forKey: .actionTypeName)
        }
        if decoderContainer.contains(.formula)
        {
            self.formula = try decoderContainer.decode(String?.self, forKey: .formula)
        }
        if decoderContainer.contains(.startTime)
        {
            self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        }
        if decoderContainer.contains(.endTime)
        {
            self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        }
        if decoderContainer.contains(.billTime)
        {
            self.billTime = try decoderContainer.decode(String?.self, forKey: .billTime)
        }
        if decoderContainer.contains(.totalFee)
        {
            self.totalFee = try decoderContainer.decode(Double?.self, forKey: .totalFee)
        }
        if decoderContainer.contains(.discountFee)
        {
            self.discountFee = try decoderContainer.decode(Double?.self, forKey: .discountFee)
        }
        if decoderContainer.contains(.realTotalFee)
        {
            self.realTotalFee = try decoderContainer.decode(Double?.self, forKey: .realTotalFee)
        }
        if decoderContainer.contains(.cashCouponPayFee)
        {
            self.cashCouponPayFee = try decoderContainer.decode(Double?.self, forKey: .cashCouponPayFee)
        }
        if decoderContainer.contains(.balancePayFee)
        {
            self.balancePayFee = try decoderContainer.decode(Double?.self, forKey: .balancePayFee)
        }
        if decoderContainer.contains(.cashPayFee)
        {
            self.cashPayFee = try decoderContainer.decode(Double?.self, forKey: .cashPayFee)
        }
        if decoderContainer.contains(.arrearFee)
        {
            self.arrearFee = try decoderContainer.decode(Double?.self, forKey: .arrearFee)
        }
    }
}
public extension BillSummary{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BillSummaryCodingKeys.self)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(appCodeName, forKey: .appCodeName)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(serviceCodeName, forKey: .serviceCodeName)
         try encoderContainer.encode(billingType, forKey: .billingType)
         try encoderContainer.encode(billingTypeName, forKey: .billingTypeName)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(resourceName, forKey: .resourceName)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(actionTypeName, forKey: .actionTypeName)
         try encoderContainer.encode(formula, forKey: .formula)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(billTime, forKey: .billTime)
         try encoderContainer.encode(totalFee, forKey: .totalFee)
         try encoderContainer.encode(discountFee, forKey: .discountFee)
         try encoderContainer.encode(realTotalFee, forKey: .realTotalFee)
         try encoderContainer.encode(cashCouponPayFee, forKey: .cashCouponPayFee)
         try encoderContainer.encode(balancePayFee, forKey: .balancePayFee)
         try encoderContainer.encode(cashPayFee, forKey: .cashPayFee)
         try encoderContainer.encode(arrearFee, forKey: .arrearFee)
    }
}