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

   Availability Monitoring APIs
   可用性监控相关接口

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询可用性监控任务列表
public class DescribeProbeTasksRequest:JdCloudRequest
{
    /// 当前所在页，默认为1
    var pageNumber:Int64?

    /// 页面大小，默认为20；取值范围[1, 100]
    var pageSize:Int64?

    /// 根据探测任务的名称查询，支持模糊查询
    var name:String?

    /// 根据探测任务的类型查询，1、http 2、telnet
    var type:Int64?

    /// 探测任务的task_id
    var probeTaskID:String


    public init(regionId: String,probeTaskID:String){
        self.probeTaskID = probeTaskID
        super.init(regionId: regionId)
    }


    enum DescribeProbeTasksRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case name
        case type
        case probeTaskID
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeProbeTasksRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encode(probeTaskID, forKey: .probeTaskID)

    }
}
