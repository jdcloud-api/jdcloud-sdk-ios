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

   
   

   
   

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
///  chargeSpec
public class ChargeSpec:NSObject,Codable{
    /// 计费模式，取值为：prepaid_by_duration，postpaid_by_usage或postpaid_by_duration，prepaid_by_duration表示预付费，postpaid_by_usage表示按用量后付费，postpaid_by_duration表示按配置后付费，默认为postpaid_by_duration.请参阅具体产品线帮助文档确认该产品线支持的计费类型
    var chargeMode:String?
    /// 预付费计费单位，预付费必填，当chargeMode为prepaid_by_duration时有效，取值为：month、year，默认为month
    var chargeUnit:String?
    /// 预付费计费时长，预付费必填，当chargeMode取值为prepaid_by_duration时有效。当chargeUnit为month时取值为：1~9，当chargeUnit为year时取值为：1、2、3
    var chargeDuration:Int?
    /// True&#x3D;：OPEN——开通自动续费、False&#x3D;CLOSE—— 不开通自动续费，默认为CLOSE
    var autoRenew:Bool?
    /// 产品线统一活动凭证JSON字符串，需要BASE64编码，目前要求编码前格式为 {&quot;activity&quot;:{&quot;activityType&quot;:必填字段, &quot;activityIdentifier&quot;:必填字段}}
    var buyScenario:String?



    public override init(){
            super.init()
    }

    enum ChargeSpecCodingKeys: String, CodingKey {
        case chargeMode
        case chargeUnit
        case chargeDuration
        case autoRenew
        case buyScenario
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ChargeSpecCodingKeys.self)
        if decoderContainer.contains(.chargeMode)
        {
            self.chargeMode = try decoderContainer.decode(String?.self, forKey: .chargeMode)
        }
        if decoderContainer.contains(.chargeUnit)
        {
            self.chargeUnit = try decoderContainer.decode(String?.self, forKey: .chargeUnit)
        }
        if decoderContainer.contains(.chargeDuration)
        {
            self.chargeDuration = try decoderContainer.decode(Int?.self, forKey: .chargeDuration)
        }
        if decoderContainer.contains(.autoRenew)
        {
            self.autoRenew = try decoderContainer.decode(Bool?.self, forKey: .autoRenew)
        }
        if decoderContainer.contains(.buyScenario)
        {
            self.buyScenario = try decoderContainer.decode(String?.self, forKey: .buyScenario)
        }
    }
}
public extension ChargeSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ChargeSpecCodingKeys.self)
         try encoderContainer.encode(chargeMode, forKey: .chargeMode)
         try encoderContainer.encode(chargeUnit, forKey: .chargeUnit)
         try encoderContainer.encode(chargeDuration, forKey: .chargeDuration)
         try encoderContainer.encode(autoRenew, forKey: .autoRenew)
         try encoderContainer.encode(buyScenario, forKey: .buyScenario)
    }
}
///  charge
public class Charge:NSObject,Codable{
    /// 支付模式，取值为：prepaid_by_duration，postpaid_by_usage或postpaid_by_duration，prepaid_by_duration表示预付费，postpaid_by_usage表示按用量后付费，postpaid_by_duration表示按配置后付费，默认为postpaid_by_duration
    var chargeMode:String?
    /// 费用支付状态，取值为：normal、overdue、arrear，normal表示正常，overdue表示已到期，arrear表示欠费
    var chargeStatus:String?
    /// 计费开始时间，遵循ISO8601标准，使用UTC时间，格式为：YYYY-MM-DDTHH:mm:ssZ
    var chargeStartTime:String?
    /// 过期时间，预付费资源的到期时间，遵循ISO8601标准，使用UTC时间，格式为：YYYY-MM-DDTHH:mm:ssZ，后付费资源此字段内容为空
    var chargeExpiredTime:String?
    /// 预期释放时间，资源的预期释放时间，预付费/后付费资源均有此值，遵循ISO8601标准，使用UTC时间，格式为：YYYY-MM-DDTHH:mm:ssZ
    var chargeRetireTime:String?



    public override init(){
            super.init()
    }

    enum ChargeCodingKeys: String, CodingKey {
        case chargeMode
        case chargeStatus
        case chargeStartTime
        case chargeExpiredTime
        case chargeRetireTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ChargeCodingKeys.self)
        if decoderContainer.contains(.chargeMode)
        {
            self.chargeMode = try decoderContainer.decode(String?.self, forKey: .chargeMode)
        }
        if decoderContainer.contains(.chargeStatus)
        {
            self.chargeStatus = try decoderContainer.decode(String?.self, forKey: .chargeStatus)
        }
        if decoderContainer.contains(.chargeStartTime)
        {
            self.chargeStartTime = try decoderContainer.decode(String?.self, forKey: .chargeStartTime)
        }
        if decoderContainer.contains(.chargeExpiredTime)
        {
            self.chargeExpiredTime = try decoderContainer.decode(String?.self, forKey: .chargeExpiredTime)
        }
        if decoderContainer.contains(.chargeRetireTime)
        {
            self.chargeRetireTime = try decoderContainer.decode(String?.self, forKey: .chargeRetireTime)
        }
    }
}
public extension Charge{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ChargeCodingKeys.self)
         try encoderContainer.encode(chargeMode, forKey: .chargeMode)
         try encoderContainer.encode(chargeStatus, forKey: .chargeStatus)
         try encoderContainer.encode(chargeStartTime, forKey: .chargeStartTime)
         try encoderContainer.encode(chargeExpiredTime, forKey: .chargeExpiredTime)
         try encoderContainer.encode(chargeRetireTime, forKey: .chargeRetireTime)
    }
}
