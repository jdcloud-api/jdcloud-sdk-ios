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

   堆栈
   堆栈相关操作接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询堆栈事件列表
public class DescribeStackEventsRequest:JdCloudRequest
{
    /// 当前所在页，默认为1
    var pageNumber:Int64?

    /// 页面大小，默认为20；取值范围[1, 100]
    var pageSize:Int64?

    /// 事件开始时间
    var startTime:String?

    /// 事件结束时间
    var endTime:String?

    /// 堆栈id
    var stackId:String


    public init(regionId: String,stackId:String){
        self.stackId = stackId
        super.init(regionId: regionId)
    }


    enum DescribeStackEventsRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case startTime
        case endTime
        case stackId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeStackEventsRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(stackId, forKey: .stackId)

    }
}
