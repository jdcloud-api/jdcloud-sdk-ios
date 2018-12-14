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

   缓存Redis实例接口
   缓存Redis实例相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询redis备份列表，支持分页查询，支持查询某次备份的信息和分页查询某时间段内的备份列表
public class DescribeBackupsRequest:JdCloudRequest
{
    /// 页码；默认为1
    var pageNumber:Int?

    /// 分页大小；默认为20；取值范围[10, 100]
    var pageSize:Int?

    /// 起始时间, 格式：yyyy-MM-ddTHH:mm:ssZ
    var startTime:String?

    /// 终止时间, 格式：yyyy-MM-ddTHH:mm:ssZ
    var endTime:String?

    /// 备份操作ID，可查询某次手动备份的列表信息
    var baseId:String?

    /// 缓存Redis实例ID，是访问实例的唯一标识。
    var cacheInstanceId:String


    public init(regionId: String,cacheInstanceId:String){
        self.cacheInstanceId = cacheInstanceId
        super.init(regionId: regionId)
    }


    enum DescribeBackupsRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case startTime
        case endTime
        case baseId
        case cacheInstanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeBackupsRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(baseId, forKey: .baseId)
        try container.encode(cacheInstanceId, forKey: .cacheInstanceId)

    }
}
