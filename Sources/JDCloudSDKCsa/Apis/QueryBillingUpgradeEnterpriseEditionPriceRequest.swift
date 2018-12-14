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

   JDCLOUD 计费管理 API
   态势感知计费相关信息接口

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询升级企业版价格
public class QueryBillingUpgradeEnterpriseEditionPriceRequest:JdCloudRequest
{
    /// 企业版资产数量
    var assetCount:Int


    public init(regionId: String,assetCount:Int){
        self.assetCount = assetCount
        super.init(regionId: regionId)
    }


    enum QueryBillingUpgradeEnterpriseEditionPriceRequestRequestCodingKeys: String, CodingKey {
        case assetCount
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: QueryBillingUpgradeEnterpriseEditionPriceRequestRequestCodingKeys.self)
        try container.encode(assetCount, forKey: .assetCount)

    }
}
