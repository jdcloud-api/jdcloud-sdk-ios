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

   LogManage
   后台运营日志管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  查询日志列表
public class QueryLogRequest:JdCloudRequest
{
    /// 页码, 默认为1, 取值范围：[1,∞)
    var pageNumber:Int?

    /// 分页大小，默认为20，取值范围：[10,100]
    var pageSize:Int?

    /// startTime - 开始时间，单位毫秒，长度13位，必填。
        /// endTime - 结束时间，单位毫秒，长度13位，必填。
        /// searchField - 查询字段：req_id，uuid,erp,pin,path，response_status
        /// searchValue - 查询值，单个值，模糊匹配
        /// method - 请求方式
        /// orderby - 排序
        /// 
    var filters:Filter?




    enum QueryLogRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: QueryLogRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(filters, forKey: .filters)

    }
}
