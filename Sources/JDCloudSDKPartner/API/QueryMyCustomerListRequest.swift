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

   customer
   客户管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询客户信息
@objc(QueryMyCustomerListRequest)
public class QueryMyCustomerListRequest:JdCloudRequest
{
    /// 客户pin（客户账户）
    var customerPin:String?

    /// 客户昵称
    var aliasName:String?

    /// 关联开始时间（格式：yyyy-MM-dd HH:mm:ss）
    var startRelTime:String?

    /// 关联结束时间（格式：yyyy-MM-dd HH:mm:ss）
    var endRelTime:String?

    /// 当前页序号
    var pageIndex:Int?

    /// 当前条数
    var pageSize:Int?




    enum QueryMyCustomerListRequestRequestCodingKeys: String, CodingKey {
        case customerPin
        case aliasName
        case startRelTime
        case endRelTime
        case pageIndex
        case pageSize
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryMyCustomerListRequestRequestCodingKeys.self)
        try encoderContainer.encode(customerPin, forKey: .customerPin)
        try encoderContainer.encode(aliasName, forKey: .aliasName)
        try encoderContainer.encode(startRelTime, forKey: .startRelTime)
        try encoderContainer.encode(endRelTime, forKey: .endRelTime)
        try encoderContainer.encode(pageIndex, forKey: .pageIndex)
        try encoderContainer.encode(pageSize, forKey: .pageSize)

    }
}
