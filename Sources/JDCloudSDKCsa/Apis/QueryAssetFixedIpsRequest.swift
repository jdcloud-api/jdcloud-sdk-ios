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

   JDCLOUD 资产管理 API
   态势感知资产管理相关信息接口

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查看资产详情
public class QueryAssetFixedIpsRequest:JdCloudRequest
{
    /// 公网Ip
    var floatingIp:String

    /// 第几页，从1开始计数，最大值100
    var pageNumber:Int?

    /// 每页显示的数目，默认为10，最大值100
    var pageSize:Int?


    public init(regionId: String,floatingIp:String){
        self.floatingIp = floatingIp
        super.init(regionId: regionId)
    }


    enum QueryAssetFixedIpsRequestRequestCodingKeys: String, CodingKey {
        case floatingIp
        case pageNumber
        case pageSize
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: QueryAssetFixedIpsRequestRequestCodingKeys.self)
        try container.encode(floatingIp, forKey: .floatingIp)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)

    }
}
