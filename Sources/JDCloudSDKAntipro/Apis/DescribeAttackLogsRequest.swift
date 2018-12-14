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

   Anti DDoS Protection Package Attack Log APIs
   Anti DDoS Protection Package Attack Log APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询攻击记录, 参数 ip 优先级大于 instanceId
        ///         ///   - 指定 ip 参数时, 忽略 instanceId 参数, 查询 ip 相关攻击记录
        ///         ///   - 未指定 ip 时, 查询 instanceId 指定实例相关攻击记录
        ///         ///   - ip 和 instanceId 均未指定时, 查询用户所有攻击记录
        ///         /// 
public class DescribeAttackLogsRequest:JdCloudRequest
{
    /// 页码, 默认为1
    var pageNumber:Int?

    /// 分页大小, 默认为10, 取值范围[10, 100]
    var pageSize:Int?

    /// 开始时间, 只能查询最近 90 天以内的数据, UTC 时间, 格式: yyyy-MM-dd&#39;T&#39;HH:mm:ssZ
    var startTime:String

    /// 查询的结束时间, UTC 时间, 格式: yyyy-MM-dd&#39;T&#39;HH:mm:ssZ
    var endTime:String

    /// 防护包实例 Id
    var instanceId:String?

    /// 被防护 IP 列表
    var ip:String?


    public init(regionId: String,startTime:String,endTime:String){
        self.startTime = startTime
        self.endTime = endTime
        super.init(regionId: regionId)
    }


    enum DescribeAttackLogsRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case startTime
        case endTime
        case instanceId
        case ip
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeAttackLogsRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(instanceId, forKey: .instanceId)
        try container.encode(ip, forKey: .ip)

    }
}
