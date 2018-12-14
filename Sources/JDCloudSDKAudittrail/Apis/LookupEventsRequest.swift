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

   JDCLOUD AuditTrail Service API
   京东云操作审计服务

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询Events
public class LookupEventsRequest:JdCloudRequest
{
    /// 开始时间
    var startTime:Int64?

    /// 结束时间
    var endTime:Int64?

    /// 类别
    var classification:String?

    /// 每页大小
    var pageSize:Int?

    /// 页码
    var pageNumber:Int?

    /// lookupAttributes
    var lookupAttributes:String?

    /// requestId
    var requestId:String?

    /// 主账号
    var account:String?

    /// 子账号
    var subAccount:String?




    enum LookupEventsRequestRequestCodingKeys: String, CodingKey {
        case startTime
        case endTime
        case classification
        case pageSize
        case pageNumber
        case lookupAttributes
        case requestId
        case account
        case subAccount
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: LookupEventsRequestRequestCodingKeys.self)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(classification, forKey: .classification)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(lookupAttributes, forKey: .lookupAttributes)
        try container.encode(requestId, forKey: .requestId)
        try container.encode(account, forKey: .account)
        try container.encode(subAccount, forKey: .subAccount)

    }
}