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

   JDCLOUD COST Services API
   成本查询API接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询成本分析
public class CostBillStatisticsRequest:JdCloudRequest
{
    /// 分组类型 1:产品 2：消费类型 3：地域 0:全部
    var groupType:Int

    /// 起始时间
    var startTime:String

    /// 结束时间
    var endTime:String


    public init(regionId: String,groupType:Int,startTime:String,endTime:String){
        self.groupType = groupType
        self.startTime = startTime
        self.endTime = endTime
        super.init(regionId: regionId)
    }


    enum CostBillStatisticsRequestRequestCodingKeys: String, CodingKey {
        case groupType
        case startTime
        case endTime
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CostBillStatisticsRequestRequestCodingKeys.self)
        try container.encode(groupType, forKey: .groupType)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)

    }
}
