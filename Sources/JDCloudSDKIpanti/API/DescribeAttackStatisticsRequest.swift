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

   Anti DDoS Pro Attack Log APIs
   Anti DDoS Pro Attack Log APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询攻击次数及流量峰值
@objc(DescribeAttackStatisticsRequest)
public class DescribeAttackStatisticsRequest:JdCloudRequest
{
    /// 开始时间, 只能查询最近 60 天以内的数据, UTC 时间, 格式：yyyy-MM-dd&#39;T&#39;HH:mm:ssZ
    var startTime:String

    /// 查询的结束时间, UTC 时间, 格式：yyyy-MM-dd&#39;T&#39;HH:mm:ssZ
    var endTime:String

    /// 高防实例 ID
    var instanceId:[String?]?

    /// 攻击类型, 0 为 DDoS, 1 为 CC
    var type:Int


    public init(regionId: String,startTime:String,endTime:String,type:Int){
        self.startTime = startTime
        self.endTime = endTime
        self.type = type
        super.init(regionId: regionId)
    }


    enum DescribeAttackStatisticsRequestRequestCodingKeys: String, CodingKey {
        case startTime
        case endTime
        case instanceId
        case type
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAttackStatisticsRequestRequestCodingKeys.self)
        try encoderContainer.encode(startTime, forKey: .startTime)
        try encoderContainer.encode(endTime, forKey: .endTime)
        try encoderContainer.encode(instanceId, forKey: .instanceId)
        try encoderContainer.encode(type, forKey: .type)

    }
}
