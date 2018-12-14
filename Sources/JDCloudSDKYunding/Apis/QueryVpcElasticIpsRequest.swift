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

   vpc
   vpc相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  &quot;查询用户弹性ip列表&lt;br&gt;&quot;
        ///         /// &quot;regionId取值：cn-north-1：华北-北京；cn-east-1：华东-宿迁；cn-east-2：华东-上海；cn-south-1：华南-广州&quot;
        ///         /// 
public class QueryVpcElasticIpsRequest:JdCloudRequest
{
    /// 页码, 默认为1, 取值范围：[1,∞), 页码超过总页数时, 显示最后一页
    var pageNumber:Int?

    /// 分页大小，默认为20，取值范围：[10,100]
    var pageSize:Int?




    enum QueryVpcElasticIpsRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: QueryVpcElasticIpsRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)

    }
}
