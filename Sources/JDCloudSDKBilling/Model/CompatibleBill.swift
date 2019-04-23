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

///  compatibleBill
@objc(CompatibleBill)
public class CompatibleBill:NSObject,Codable{
    /// 账单ID
    var billId:Double?
    /// 用户pin
    var pin:String?
    /// 站点
    var site:Int?
    /// 区域
    var region:String?
    /// appCode
    var appCode:String?
    /// appCodeName
    var appCodeName:String?
    /// serviceCode
    var serviceCode:String?
    /// serviceCodeName
    var serviceCodeName:String?
    /// 资源id
    var resourceId:String?
    /// 计费类型
    var billingType:Int?
    /// 计费类型描述
    var billingTypeName:String?
    /// 规格
    var formula:String?
    /// 规格
    var formulaStr:String?
    /// 开始时间
    var startTime:String?
    /// 结束时间
    var endTime:String?
    /// 创建时间
    var createTime:String?
    /// 账单金额
    var billFee:Double?
    /// 账单金额（保留小数点后2位）
    var billFee2:Double?
    /// 折扣金额
    var discountFee:Double?
    /// 代金券id
    var couponId:String?
    /// 优惠券金额
    var couponFee:Double?
    /// 优惠后金额
    var actualFee:Double?
    /// 代金券金额
    var cashCouponFee:Double?
    /// 余额支付金额
    var balancePayFee:Double?
    /// 现金支付金额
    var cashPayFee:Double?
    /// 欠费金额
    var arrearFee:Double?
    /// 支付状态
    var paySate:Int?
    /// 1:老计费   2：新计费
    var systemType:Int?
    /// 资源名称
    var resourceName:String?



    public override init(){
            super.init()
    }

    enum CompatibleBillCodingKeys: String, CodingKey {
        case billId
        case pin
        case site
        case region
        case appCode
        case appCodeName
        case serviceCode
        case serviceCodeName
        case resourceId
        case billingType
        case billingTypeName
        case formula
        case formulaStr
        case startTime
        case endTime
        case createTime
        case billFee
        case billFee2
        case discountFee
        case couponId
        case couponFee
        case actualFee
        case cashCouponFee
        case balancePayFee
        case cashPayFee
        case arrearFee
        case paySate
        case systemType
        case resourceName
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CompatibleBillCodingKeys.self)
        if decoderContainer.contains(.billId)
        {
            self.billId = try decoderContainer.decode(Double?.self, forKey: .billId)
        }
        if decoderContainer.contains(.pin)
        {
            self.pin = try decoderContainer.decode(String?.self, forKey: .pin)
        }
        if decoderContainer.contains(.site)
        {
            self.site = try decoderContainer.decode(Int?.self, forKey: .site)
        }
        if decoderContainer.contains(.region)
        {
            self.region = try decoderContainer.decode(String?.self, forKey: .region)
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
        if decoderContainer.contains(.resourceId)
        {
            self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
        }
        if decoderContainer.contains(.billingType)
        {
            self.billingType = try decoderContainer.decode(Int?.self, forKey: .billingType)
        }
        if decoderContainer.contains(.billingTypeName)
        {
            self.billingTypeName = try decoderContainer.decode(String?.self, forKey: .billingTypeName)
        }
        if decoderContainer.contains(.formula)
        {
            self.formula = try decoderContainer.decode(String?.self, forKey: .formula)
        }
        if decoderContainer.contains(.formulaStr)
        {
            self.formulaStr = try decoderContainer.decode(String?.self, forKey: .formulaStr)
        }
        if decoderContainer.contains(.startTime)
        {
            self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        }
        if decoderContainer.contains(.endTime)
        {
            self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.billFee)
        {
            self.billFee = try decoderContainer.decode(Double?.self, forKey: .billFee)
        }
        if decoderContainer.contains(.billFee2)
        {
            self.billFee2 = try decoderContainer.decode(Double?.self, forKey: .billFee2)
        }
        if decoderContainer.contains(.discountFee)
        {
            self.discountFee = try decoderContainer.decode(Double?.self, forKey: .discountFee)
        }
        if decoderContainer.contains(.couponId)
        {
            self.couponId = try decoderContainer.decode(String?.self, forKey: .couponId)
        }
        if decoderContainer.contains(.couponFee)
        {
            self.couponFee = try decoderContainer.decode(Double?.self, forKey: .couponFee)
        }
        if decoderContainer.contains(.actualFee)
        {
            self.actualFee = try decoderContainer.decode(Double?.self, forKey: .actualFee)
        }
        if decoderContainer.contains(.cashCouponFee)
        {
            self.cashCouponFee = try decoderContainer.decode(Double?.self, forKey: .cashCouponFee)
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
        if decoderContainer.contains(.paySate)
        {
            self.paySate = try decoderContainer.decode(Int?.self, forKey: .paySate)
        }
        if decoderContainer.contains(.systemType)
        {
            self.systemType = try decoderContainer.decode(Int?.self, forKey: .systemType)
        }
        if decoderContainer.contains(.resourceName)
        {
            self.resourceName = try decoderContainer.decode(String?.self, forKey: .resourceName)
        }
    }
}
public extension CompatibleBill{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CompatibleBillCodingKeys.self)
         try encoderContainer.encode(billId, forKey: .billId)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(site, forKey: .site)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(appCodeName, forKey: .appCodeName)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(serviceCodeName, forKey: .serviceCodeName)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(billingType, forKey: .billingType)
         try encoderContainer.encode(billingTypeName, forKey: .billingTypeName)
         try encoderContainer.encode(formula, forKey: .formula)
         try encoderContainer.encode(formulaStr, forKey: .formulaStr)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(billFee, forKey: .billFee)
         try encoderContainer.encode(billFee2, forKey: .billFee2)
         try encoderContainer.encode(discountFee, forKey: .discountFee)
         try encoderContainer.encode(couponId, forKey: .couponId)
         try encoderContainer.encode(couponFee, forKey: .couponFee)
         try encoderContainer.encode(actualFee, forKey: .actualFee)
         try encoderContainer.encode(cashCouponFee, forKey: .cashCouponFee)
         try encoderContainer.encode(balancePayFee, forKey: .balancePayFee)
         try encoderContainer.encode(cashPayFee, forKey: .cashPayFee)
         try encoderContainer.encode(arrearFee, forKey: .arrearFee)
         try encoderContainer.encode(paySate, forKey: .paySate)
         try encoderContainer.encode(systemType, forKey: .systemType)
         try encoderContainer.encode(resourceName, forKey: .resourceName)
    }
}
