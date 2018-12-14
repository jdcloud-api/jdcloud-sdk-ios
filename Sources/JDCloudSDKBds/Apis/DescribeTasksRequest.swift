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

   任务管理
   任务管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查看任务列表
public class DescribeTasksRequest:JdCloudRequest
{
    /// 显示数据的页码，取值范围：[1,1000)，页码超过总页数时，显示最后一页，用于查询列表的接口
    var pageNumber:Int?

    /// 每页显示的数据条数，取值范围：10/20/30/50/100
    var pageSize:Int?

    /// 实例ID
    var instanceId:String


    public init(regionId: String,instanceId:String){
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum DescribeTasksRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeTasksRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(instanceId, forKey: .instanceId)

    }
}
