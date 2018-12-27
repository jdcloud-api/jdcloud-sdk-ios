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

///  chargeSpec
@objc(ChargeSpec)
public class ChargeSpec:NSObject,Codable{
    /// 计费模式，取值为：prepaid_by_duration，postpaid_by_usage或postpaid_by_duration，prepaid_by_duration表示预付费，postpaid_by_usage表示按用量后付费，postpaid_by_duration表示按配置后付费，默认为postpaid_by_duration.请参阅具体产品线帮助文档确认该产品线支持的计费类型
    var chargeMode:String?
    /// 预付费计费单位，预付费必填，当chargeMode为prepaid_by_duration时有效，取值为：month、year，默认为month
    var chargeUnit:String?
    /// 预付费计费时长，预付费必填，当chargeMode取值为prepaid_by_duration时有效。当chargeUnit为month时取值为：1~9，当chargeUnit为year时取值为：1、2、3
    var chargeDuration:Int?



    public override init(){
            super.init()
    }

    enum ChargeSpecCodingKeys: String, CodingKey {
        case chargeMode
        case chargeUnit
        case chargeDuration
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ChargeSpecCodingKeys.self)
        self.chargeMode = try decoderContainer.decode(String?.self, forKey: .chargeMode)
        self.chargeUnit = try decoderContainer.decode(String?.self, forKey: .chargeUnit)
        self.chargeDuration = try decoderContainer.decode(Int?.self, forKey: .chargeDuration)
    }
}
public extension ChargeSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ChargeSpecCodingKeys.self)
         try encoderContainer.encode(chargeMode, forKey: .chargeMode)
         try encoderContainer.encode(chargeUnit, forKey: .chargeUnit)
         try encoderContainer.encode(chargeDuration, forKey: .chargeDuration)
    }
}