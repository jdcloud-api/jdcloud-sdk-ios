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

///  achievement
@objc(Achievement)
public class Achievement:NSObject,Codable{
    /// pin
    var pin:String?
    /// 名称
    var name:String?
    /// 真实名称
    var realName:String?
    /// serviceCode
    var serviceCode:String?
    /// serviceCodeName
    var serviceCodeName:String?
    /// 时间
    var consumeDate:String?
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

    enum AchievementCodingKeys: String, CodingKey {
        case pin
        case name
        case realName
        case serviceCode
        case serviceCodeName
        case consumeDate
        case consumeCount
        case cashPayFeeCount
        case achievmentCount
        case payCouponFeeCount
        case freeCouponFeeCount
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AchievementCodingKeys.self)
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
        if decoderContainer.contains(.serviceCode)
        {
            self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        }
        if decoderContainer.contains(.serviceCodeName)
        {
            self.serviceCodeName = try decoderContainer.decode(String?.self, forKey: .serviceCodeName)
        }
        if decoderContainer.contains(.consumeDate)
        {
            self.consumeDate = try decoderContainer.decode(String?.self, forKey: .consumeDate)
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
public extension Achievement{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AchievementCodingKeys.self)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(realName, forKey: .realName)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(serviceCodeName, forKey: .serviceCodeName)
         try encoderContainer.encode(consumeDate, forKey: .consumeDate)
         try encoderContainer.encode(consumeCount, forKey: .consumeCount)
         try encoderContainer.encode(cashPayFeeCount, forKey: .cashPayFeeCount)
         try encoderContainer.encode(achievmentCount, forKey: .achievmentCount)
         try encoderContainer.encode(payCouponFeeCount, forKey: .payCouponFeeCount)
         try encoderContainer.encode(freeCouponFeeCount, forKey: .freeCouponFeeCount)
    }
}
