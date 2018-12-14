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

   消费管理
   用户中心消费管理API接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询资源账单，消费记录中的费用信息
public class QueryBillStatisticsInfoRequest:JdCloudRequest
{
    /// appCode
    var appCode:String

    /// serviceCode
    var serviceCode:String

    /// 支付状态
    var payState:Int

    /// 时间类型
    var timeType:Int

    /// 开始时间
    var startTime:String

    /// 结束时间
    var endTime:String

    /// 查询类型
    var queryType:Int

    /// 支付类型
    var payType:Int

    /// 计费类型
    var billingType:Int


    public init(regionId: String,appCode:String,serviceCode:String,payState:Int,timeType:Int,startTime:String,endTime:String,queryType:Int,payType:Int,billingType:Int){
        self.appCode = appCode
        self.serviceCode = serviceCode
        self.payState = payState
        self.timeType = timeType
        self.startTime = startTime
        self.endTime = endTime
        self.queryType = queryType
        self.payType = payType
        self.billingType = billingType
        super.init(regionId: regionId)
    }


    enum QueryBillStatisticsInfoRequestRequestCodingKeys: String, CodingKey {
        case appCode
        case serviceCode
        case payState
        case timeType
        case startTime
        case endTime
        case queryType
        case payType
        case billingType
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: QueryBillStatisticsInfoRequestRequestCodingKeys.self)
        try container.encode(appCode, forKey: .appCode)
        try container.encode(serviceCode, forKey: .serviceCode)
        try container.encode(payState, forKey: .payState)
        try container.encode(timeType, forKey: .timeType)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(queryType, forKey: .queryType)
        try container.encode(payType, forKey: .payType)
        try container.encode(billingType, forKey: .billingType)

    }
}
