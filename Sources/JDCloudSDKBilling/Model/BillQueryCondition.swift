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

///  billQueryCondition
@objc(BillQueryCondition)
public class BillQueryCondition:NSObject,Codable{
    /// 查询类别   1：资源账单   2：消费记录
    /// Required:true
    var queryType:Int
    /// 用户pin
    /// Required:true
    var pin:String
    /// appCode
    /// Required:true
    var appCode:String
    /// serviceCode
    /// Required:true
    var serviceCode:String
    /// 计费类型
    /// Required:true
    var billingType:Int
    /// 支付类型
    /// Required:true
    var payType:Int
    /// 支付状态
    /// Required:true
    var payState:Int
    /// 1按账期、2按消费时间
    /// Required:true
    var timeType:Int
    /// 开始时间
    /// Required:true
    var startTime:String
    /// 结束时间
    /// Required:true
    var endTime:String
    /// 是否忽略0元账单
    /// Required:true
    var ignoreZero:Int
    /// 资源id
    /// Required:true
    var resourceId:String
    /// 站点
    /// Required:true
    var site:Int
    /// 角色
    /// Required:true
    var role:Int
    /// 区域
    /// Required:true
    var region:String



    public  init(queryType:Int,pin:String,appCode:String,serviceCode:String,billingType:Int,payType:Int,payState:Int,timeType:Int,startTime:String,endTime:String,ignoreZero:Int,resourceId:String,site:Int,role:Int,region:String){
             self.queryType = queryType
             self.pin = pin
             self.appCode = appCode
             self.serviceCode = serviceCode
             self.billingType = billingType
             self.payType = payType
             self.payState = payState
             self.timeType = timeType
             self.startTime = startTime
             self.endTime = endTime
             self.ignoreZero = ignoreZero
             self.resourceId = resourceId
             self.site = site
             self.role = role
             self.region = region
    }

    enum BillQueryConditionCodingKeys: String, CodingKey {
        case queryType
        case pin
        case appCode
        case serviceCode
        case billingType
        case payType
        case payState
        case timeType
        case startTime
        case endTime
        case ignoreZero
        case resourceId
        case site
        case role
        case region
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BillQueryConditionCodingKeys.self)
        self.queryType = try decoderContainer.decode(Int.self, forKey: .queryType)
        self.pin = try decoderContainer.decode(String.self, forKey: .pin)
        self.appCode = try decoderContainer.decode(String.self, forKey: .appCode)
        self.serviceCode = try decoderContainer.decode(String.self, forKey: .serviceCode)
        self.billingType = try decoderContainer.decode(Int.self, forKey: .billingType)
        self.payType = try decoderContainer.decode(Int.self, forKey: .payType)
        self.payState = try decoderContainer.decode(Int.self, forKey: .payState)
        self.timeType = try decoderContainer.decode(Int.self, forKey: .timeType)
        self.startTime = try decoderContainer.decode(String.self, forKey: .startTime)
        self.endTime = try decoderContainer.decode(String.self, forKey: .endTime)
        self.ignoreZero = try decoderContainer.decode(Int.self, forKey: .ignoreZero)
        self.resourceId = try decoderContainer.decode(String.self, forKey: .resourceId)
        self.site = try decoderContainer.decode(Int.self, forKey: .site)
        self.role = try decoderContainer.decode(Int.self, forKey: .role)
        self.region = try decoderContainer.decode(String.self, forKey: .region)
    }
}
public extension BillQueryCondition{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BillQueryConditionCodingKeys.self)
         try encoderContainer.encode(queryType, forKey: .queryType)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(billingType, forKey: .billingType)
         try encoderContainer.encode(payType, forKey: .payType)
         try encoderContainer.encode(payState, forKey: .payState)
         try encoderContainer.encode(timeType, forKey: .timeType)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(ignoreZero, forKey: .ignoreZero)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(site, forKey: .site)
         try encoderContainer.encode(role, forKey: .role)
         try encoderContainer.encode(region, forKey: .region)
    }
}
