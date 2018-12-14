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

   伸缩组
   弹性伸缩组相关操作操作

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建弹性伸缩组
public class CreateAutoscalingGroupRequest:JdCloudRequest
{
    /// 启动配置 launch configuration 的 id
    var asConfigId:String

    /// 本弹性伸缩组的描述
    var description:String?

    /// 是否从负载均衡器接收流量
    var enableLb:Bool

    /// 初始容量
    var initSize:Int64

    /// LB列表
    var lbs:Lb?

    /// 本组最大容量
    var maxSize:Int64

    /// 本组最小容量
    var minSize:Int64

    /// 本弹性伸缩组的名称
    var name:String

    /// 安全组ID
    var securityGroups:String?

    /// vpc下的子网id
    var subnetIds:String

    /// 0-default, 1-oldestInstance, 2-newestInstance, 3-oldestLaunchConfig
    var terminationPolicy:Int64

    /// 类型。目前对用户开放的主机弹性伸缩组，取值应为“vm”
    var type:String

    /// vpc id
    var vpcId:String

    /// 本弹性伸缩组所在az列表，以逗号分隔。
    var zones:String


    public init(regionId: String,asConfigId:String,enableLb:Bool,initSize:Int64,maxSize:Int64,minSize:Int64,name:String,subnetIds:String,terminationPolicy:Int64,type:String,vpcId:String,zones:String){
        self.asConfigId = asConfigId
        self.enableLb = enableLb
        self.initSize = initSize
        self.maxSize = maxSize
        self.minSize = minSize
        self.name = name
        self.subnetIds = subnetIds
        self.terminationPolicy = terminationPolicy
        self.type = type
        self.vpcId = vpcId
        self.zones = zones
        super.init(regionId: regionId)
    }


    enum CreateAutoscalingGroupRequestRequestCodingKeys: String, CodingKey {
        case asConfigId
        case description
        case enableLb
        case initSize
        case lbs
        case maxSize
        case minSize
        case name
        case securityGroups
        case subnetIds
        case terminationPolicy
        case type
        case vpcId
        case zones
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateAutoscalingGroupRequestRequestCodingKeys.self)
        try container.encode(asConfigId, forKey: .asConfigId)
        try container.encode(description, forKey: .description)
        try container.encode(enableLb, forKey: .enableLb)
        try container.encode(initSize, forKey: .initSize)
        try container.encode(lbs, forKey: .lbs)
        try container.encode(maxSize, forKey: .maxSize)
        try container.encode(minSize, forKey: .minSize)
        try container.encode(name, forKey: .name)
        try container.encode(securityGroups, forKey: .securityGroups)
        try container.encode(subnetIds, forKey: .subnetIds)
        try container.encode(terminationPolicy, forKey: .terminationPolicy)
        try container.encode(type, forKey: .type)
        try container.encode(vpcId, forKey: .vpcId)
        try container.encode(zones, forKey: .zones)

    }
}
