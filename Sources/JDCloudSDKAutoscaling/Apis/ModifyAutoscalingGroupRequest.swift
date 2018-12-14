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


///  修改弹性伸缩组
public class ModifyAutoscalingGroupRequest:JdCloudRequest
{
    /// 启动配置 launch configuration 的 id
    var asConfigId:String

    /// 本弹性伸缩组的描述
    var description:String?

    /// 期望实例数
    var expectedSize:Int64

    /// 本组最大容量
    var maxSize:Int64

    /// 本组最小容量
    var minSize:Int64

    /// 本弹性伸缩组的名称
    var name:String

    /// 安全组ID
    var securityGroups:String

    /// 0-default, 1-oldestInstance, 2-newestInstance, 3-oldestLaunchConfig
    var terminationPolicy:Int64

    /// 类型。目前对用户开放的主机弹性伸缩组，取值应为“vm”
    var type:String

    /// 组uuid
    var asGroupUuid:String


    public init(regionId: String,asConfigId:String,expectedSize:Int64,maxSize:Int64,minSize:Int64,name:String,securityGroups:String,terminationPolicy:Int64,type:String,asGroupUuid:String){
        self.asConfigId = asConfigId
        self.expectedSize = expectedSize
        self.maxSize = maxSize
        self.minSize = minSize
        self.name = name
        self.securityGroups = securityGroups
        self.terminationPolicy = terminationPolicy
        self.type = type
        self.asGroupUuid = asGroupUuid
        super.init(regionId: regionId)
    }


    enum ModifyAutoscalingGroupRequestRequestCodingKeys: String, CodingKey {
        case asConfigId
        case description
        case expectedSize
        case maxSize
        case minSize
        case name
        case securityGroups
        case terminationPolicy
        case type
        case asGroupUuid
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyAutoscalingGroupRequestRequestCodingKeys.self)
        try container.encode(asConfigId, forKey: .asConfigId)
        try container.encode(description, forKey: .description)
        try container.encode(expectedSize, forKey: .expectedSize)
        try container.encode(maxSize, forKey: .maxSize)
        try container.encode(minSize, forKey: .minSize)
        try container.encode(name, forKey: .name)
        try container.encode(securityGroups, forKey: .securityGroups)
        try container.encode(terminationPolicy, forKey: .terminationPolicy)
        try container.encode(type, forKey: .type)
        try container.encode(asGroupUuid, forKey: .asGroupUuid)

    }
}