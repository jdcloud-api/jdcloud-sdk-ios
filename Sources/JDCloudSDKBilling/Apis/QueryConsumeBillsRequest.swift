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


///  查询消费记录列表
public class QueryConsumeBillsRequest:JdCloudRequest
{
    /// QueryType
    var queryType:Int?

    /// AppCode
    var appCode:String?

    /// ServiceCode
    var serviceCode:String?

    /// BillingType
    var billingType:Int?

    /// PayType
    var payType:Int?

    /// PayState
    var payState:Int?

    /// TimeType
    var timeType:Int?

    /// StartTime
    var startTime:String?

    /// EndTime
    var endTime:String?

    /// IgnoreZero
    var ignoreZero:Int?

    /// ResourceId
    var resourceId:String?

    /// Site
    var site:Int?

    /// Role
    var role:Int?

    /// Region
    var region:String?

    /// PageIndex
    var pageIndex:Int?

    /// PageSize
    var pageSize:Int?




    enum QueryConsumeBillsRequestRequestCodingKeys: String, CodingKey {
        case queryType
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
        case pageIndex
        case pageSize
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: QueryConsumeBillsRequestRequestCodingKeys.self)
        try container.encode(queryType, forKey: .queryType)
        try container.encode(appCode, forKey: .appCode)
        try container.encode(serviceCode, forKey: .serviceCode)
        try container.encode(billingType, forKey: .billingType)
        try container.encode(payType, forKey: .payType)
        try container.encode(payState, forKey: .payState)
        try container.encode(timeType, forKey: .timeType)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(ignoreZero, forKey: .ignoreZero)
        try container.encode(resourceId, forKey: .resourceId)
        try container.encode(site, forKey: .site)
        try container.encode(role, forKey: .role)
        try container.encode(region, forKey: .region)
        try container.encode(pageIndex, forKey: .pageIndex)
        try container.encode(pageSize, forKey: .pageSize)

    }
}
