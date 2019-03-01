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

///  operatorPrePayAchievement
@objc(OperatorPrePayAchievement)
public class OperatorPrePayAchievement:NSObject,Codable{
    /// pin
    var pin:String?
    /// 名称
    var name:String?
    /// 真实名称
    var realName:String?
    /// 部门
    var dept:Int?
    /// 部门名称
    var deptName:String?
    /// 服务商类型
    var distributorType:String?
    /// 服务商类型名称
    var distributorTypeName:String?
    /// 一级服务商名称
    var oneLevelDistributorName:String?
    /// 二级服务商名称
    var secondLevelDistributorName:String?
    /// 上级服务商名称
    var superDistributorName:String?
    /// 上级服务商pin
    var superDistributorPin:String?
    /// serviceCode
    var serviceCode:String?
    /// serviceCodeName
    var serviceCodeName:String?
    /// opType
    var opType:Int?
    /// opTypeName
    var opTypeName:String?
    /// 开始时间
    var billTime:String?
    /// 完成时间
    var consumeDate:String?
    /// 交易单号
    var transactionNo:String?
    /// 优惠前金额
    var consumeCount:Double?
    /// 现金支付
    var cashPayFeeCount:Double?
    /// 业绩金额
    var achievmentCount:Double?
    /// 付费代金卷金额
    var payCouponFeeCount:Double?
    /// 免费代金卷金额
    var freeCouponFeeCount:Double?



    public override init(){
            super.init()
    }

    enum OperatorPrePayAchievementCodingKeys: String, CodingKey {
        case pin
        case name
        case realName
        case dept
        case deptName
        case distributorType
        case distributorTypeName
        case oneLevelDistributorName
        case secondLevelDistributorName
        case superDistributorName
        case superDistributorPin
        case serviceCode
        case serviceCodeName
        case opType
        case opTypeName
        case billTime
        case consumeDate
        case transactionNo
        case consumeCount
        case cashPayFeeCount
        case achievmentCount
        case payCouponFeeCount
        case freeCouponFeeCount
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OperatorPrePayAchievementCodingKeys.self)
        if decoderContainer.contains(.pin)
        {
            self.pin = try decoderContainer.decode(String?.self, forKey: .pin)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.realName)
        {
            self.realName = try decoderContainer.decode(String?.self, forKey: .realName)
        }
        if decoderContainer.contains(.dept)
        {
            self.dept = try decoderContainer.decode(Int?.self, forKey: .dept)
        }
        if decoderContainer.contains(.deptName)
        {
            self.deptName = try decoderContainer.decode(String?.self, forKey: .deptName)
        }
        if decoderContainer.contains(.distributorType)
        {
            self.distributorType = try decoderContainer.decode(String?.self, forKey: .distributorType)
        }
        if decoderContainer.contains(.distributorTypeName)
        {
            self.distributorTypeName = try decoderContainer.decode(String?.self, forKey: .distributorTypeName)
        }
        if decoderContainer.contains(.oneLevelDistributorName)
        {
            self.oneLevelDistributorName = try decoderContainer.decode(String?.self, forKey: .oneLevelDistributorName)
        }
        if decoderContainer.contains(.secondLevelDistributorName)
        {
            self.secondLevelDistributorName = try decoderContainer.decode(String?.self, forKey: .secondLevelDistributorName)
        }
        if decoderContainer.contains(.superDistributorName)
        {
            self.superDistributorName = try decoderContainer.decode(String?.self, forKey: .superDistributorName)
        }
        if decoderContainer.contains(.superDistributorPin)
        {
            self.superDistributorPin = try decoderContainer.decode(String?.self, forKey: .superDistributorPin)
        }
        if decoderContainer.contains(.serviceCode)
        {
            self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        }
        if decoderContainer.contains(.serviceCodeName)
        {
            self.serviceCodeName = try decoderContainer.decode(String?.self, forKey: .serviceCodeName)
        }
        if decoderContainer.contains(.opType)
        {
            self.opType = try decoderContainer.decode(Int?.self, forKey: .opType)
        }
        if decoderContainer.contains(.opTypeName)
        {
            self.opTypeName = try decoderContainer.decode(String?.self, forKey: .opTypeName)
        }
        if decoderContainer.contains(.billTime)
        {
            self.billTime = try decoderContainer.decode(String?.self, forKey: .billTime)
        }
        if decoderContainer.contains(.consumeDate)
        {
            self.consumeDate = try decoderContainer.decode(String?.self, forKey: .consumeDate)
        }
        if decoderContainer.contains(.transactionNo)
        {
            self.transactionNo = try decoderContainer.decode(String?.self, forKey: .transactionNo)
        }
        if decoderContainer.contains(.consumeCount)
        {
            self.consumeCount = try decoderContainer.decode(Double?.self, forKey: .consumeCount)
        }
        if decoderContainer.contains(.cashPayFeeCount)
        {
            self.cashPayFeeCount = try decoderContainer.decode(Double?.self, forKey: .cashPayFeeCount)
        }
        if decoderContainer.contains(.achievmentCount)
        {
            self.achievmentCount = try decoderContainer.decode(Double?.self, forKey: .achievmentCount)
        }
        if decoderContainer.contains(.payCouponFeeCount)
        {
            self.payCouponFeeCount = try decoderContainer.decode(Double?.self, forKey: .payCouponFeeCount)
        }
        if decoderContainer.contains(.freeCouponFeeCount)
        {
            self.freeCouponFeeCount = try decoderContainer.decode(Double?.self, forKey: .freeCouponFeeCount)
        }
    }
}
public extension OperatorPrePayAchievement{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OperatorPrePayAchievementCodingKeys.self)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(realName, forKey: .realName)
         try encoderContainer.encode(dept, forKey: .dept)
         try encoderContainer.encode(deptName, forKey: .deptName)
         try encoderContainer.encode(distributorType, forKey: .distributorType)
         try encoderContainer.encode(distributorTypeName, forKey: .distributorTypeName)
         try encoderContainer.encode(oneLevelDistributorName, forKey: .oneLevelDistributorName)
         try encoderContainer.encode(secondLevelDistributorName, forKey: .secondLevelDistributorName)
         try encoderContainer.encode(superDistributorName, forKey: .superDistributorName)
         try encoderContainer.encode(superDistributorPin, forKey: .superDistributorPin)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(serviceCodeName, forKey: .serviceCodeName)
         try encoderContainer.encode(opType, forKey: .opType)
         try encoderContainer.encode(opTypeName, forKey: .opTypeName)
         try encoderContainer.encode(billTime, forKey: .billTime)
         try encoderContainer.encode(consumeDate, forKey: .consumeDate)
         try encoderContainer.encode(transactionNo, forKey: .transactionNo)
         try encoderContainer.encode(consumeCount, forKey: .consumeCount)
         try encoderContainer.encode(cashPayFeeCount, forKey: .cashPayFeeCount)
         try encoderContainer.encode(achievmentCount, forKey: .achievmentCount)
         try encoderContainer.encode(payCouponFeeCount, forKey: .payCouponFeeCount)
         try encoderContainer.encode(freeCouponFeeCount, forKey: .freeCouponFeeCount)
    }
}
