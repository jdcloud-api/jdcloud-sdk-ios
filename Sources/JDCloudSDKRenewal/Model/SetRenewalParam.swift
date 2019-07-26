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

///  setRenewalParam
@objc(SetRenewalParam)
public class SetRenewalParam:NSObject,Codable{
    /// 业务线
    /// Required:true
    var appCode:String
    /// 产品线
    /// Required:true
    var serviceCode:String
    /// 续费时长
    var timeSpan:Int?
    /// 时间单位(MONTH-月,YEAR-年)
    var timeUnit:String?
    /// 资源ID列表,英文逗号分隔
    /// Required:true
    var instanceIds:String
    /// 自动续费状态(OPEN-开通自动续费,CLOSE-关闭自动续费,MODIFY-修改自动续费)
    /// Required:true
    var autoRenewStatus:String
    /// 是否绑定关联资源一并自动续费(AUTO_RENEW-是,UN_AUTO_RENEW-否)
    var allAutoPay:String?



    public  init(appCode:String,serviceCode:String,instanceIds:String,autoRenewStatus:String){
             self.appCode = appCode
             self.serviceCode = serviceCode
             self.instanceIds = instanceIds
             self.autoRenewStatus = autoRenewStatus
    }

    enum SetRenewalParamCodingKeys: String, CodingKey {
        case appCode
        case serviceCode
        case timeSpan
        case timeUnit
        case instanceIds
        case autoRenewStatus
        case allAutoPay
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SetRenewalParamCodingKeys.self)
        self.appCode = try decoderContainer.decode(String.self, forKey: .appCode)
        self.serviceCode = try decoderContainer.decode(String.self, forKey: .serviceCode)
        if decoderContainer.contains(.timeSpan)
        {
            self.timeSpan = try decoderContainer.decode(Int?.self, forKey: .timeSpan)
        }
        if decoderContainer.contains(.timeUnit)
        {
            self.timeUnit = try decoderContainer.decode(String?.self, forKey: .timeUnit)
        }
        self.instanceIds = try decoderContainer.decode(String.self, forKey: .instanceIds)
        self.autoRenewStatus = try decoderContainer.decode(String.self, forKey: .autoRenewStatus)
        if decoderContainer.contains(.allAutoPay)
        {
            self.allAutoPay = try decoderContainer.decode(String?.self, forKey: .allAutoPay)
        }
    }
}
public extension SetRenewalParam{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetRenewalParamCodingKeys.self)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(timeSpan, forKey: .timeSpan)
         try encoderContainer.encode(timeUnit, forKey: .timeUnit)
         try encoderContainer.encode(instanceIds, forKey: .instanceIds)
         try encoderContainer.encode(autoRenewStatus, forKey: .autoRenewStatus)
         try encoderContainer.encode(allAutoPay, forKey: .allAutoPay)
    }
}
