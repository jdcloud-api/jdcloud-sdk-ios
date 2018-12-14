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

   获取用户调用了链显示数据信息
   获取指定调用链集群的调用链信息

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  获取指定服务的调用链分组数据
public class GetServiceStatRequest:JdCloudRequest
{
    /// 查询调用链信息开始时间
    var startTime:Int64

    /// 查询调用链信息的结束时间
    var endTime:Int64

    /// 分组名称
    var groupName:String

    /// 分组值
    var groupValue:String

    /// 链路跟踪集群 实例 id
    var instanceId:String

    /// 要获取分组数据的服务名称
    var serviceName:String


    public init(regionId: String,startTime:Int64,endTime:Int64,groupName:String,groupValue:String,instanceId:String,serviceName:String){
        self.startTime = startTime
        self.endTime = endTime
        self.groupName = groupName
        self.groupValue = groupValue
        self.instanceId = instanceId
        self.serviceName = serviceName
        super.init(regionId: regionId)
    }


    enum GetServiceStatRequestRequestCodingKeys: String, CodingKey {
        case startTime
        case endTime
        case groupName
        case groupValue
        case instanceId
        case serviceName
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: GetServiceStatRequestRequestCodingKeys.self)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(groupName, forKey: .groupName)
        try container.encode(groupValue, forKey: .groupValue)
        try container.encode(instanceId, forKey: .instanceId)
        try container.encode(serviceName, forKey: .serviceName)

    }
}
