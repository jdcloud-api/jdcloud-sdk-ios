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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  描述节点组配置信息
@objc(NodeGroup)
public class NodeGroup:NSObject,Codable{
    /// 集群id
    var clusterId:String?
    /// node group id
    var nodeGroupId:String?
    /// 名称
    var name:String?
    /// 描述
    var descriptionValue:String?
    /// Node的信息
    var nodeConfig:NodeConfig?
    /// k8s中的node的版本
    var version:String?
    /// node所属的网络信息
    var nodeNetwork:NodeNetwork?
    /// 当前node数量
    var currentCount:Int?
    /// 期望的node数量
    var expectCount:Int?
    /// node group的ag id ，通过agid可以查询该node group下的实例
    var agId:String?
    /// node group的ag id对应的实例模板
    var instanceTemplateId:String?
    /// 状态  [pending,running,resizing,reconciling,deleting,deleted,error,running_with_error(部分节点有问题)]
    var state:String?
    /// 更新时间
    var updateTime:String?
    /// 状态变更原因
    var stateMessage:String?
    /// 是否开启自动修复
    var autoRepair:String?
    /// 创建时间
    var createdTime:String?



    public override init(){
            super.init()
    }

    enum NodeGroupCodingKeys: String, CodingKey {
        case clusterId
        case nodeGroupId
        case name
        case descriptionValue = "description"
        case nodeConfig
        case version
        case nodeNetwork
        case currentCount
        case expectCount
        case agId
        case instanceTemplateId
        case state
        case updateTime
        case stateMessage
        case autoRepair
        case createdTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NodeGroupCodingKeys.self)
        if decoderContainer.contains(.clusterId)
        {
            self.clusterId = try decoderContainer.decode(String?.self, forKey: .clusterId)
        }
        if decoderContainer.contains(.nodeGroupId)
        {
            self.nodeGroupId = try decoderContainer.decode(String?.self, forKey: .nodeGroupId)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.nodeConfig)
        {
            self.nodeConfig = try decoderContainer.decode(NodeConfig?.self, forKey: .nodeConfig)
        }
        if decoderContainer.contains(.version)
        {
            self.version = try decoderContainer.decode(String?.self, forKey: .version)
        }
        if decoderContainer.contains(.nodeNetwork)
        {
            self.nodeNetwork = try decoderContainer.decode(NodeNetwork?.self, forKey: .nodeNetwork)
        }
        if decoderContainer.contains(.currentCount)
        {
            self.currentCount = try decoderContainer.decode(Int?.self, forKey: .currentCount)
        }
        if decoderContainer.contains(.expectCount)
        {
            self.expectCount = try decoderContainer.decode(Int?.self, forKey: .expectCount)
        }
        if decoderContainer.contains(.agId)
        {
            self.agId = try decoderContainer.decode(String?.self, forKey: .agId)
        }
        if decoderContainer.contains(.instanceTemplateId)
        {
            self.instanceTemplateId = try decoderContainer.decode(String?.self, forKey: .instanceTemplateId)
        }
        if decoderContainer.contains(.state)
        {
            self.state = try decoderContainer.decode(String?.self, forKey: .state)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.stateMessage)
        {
            self.stateMessage = try decoderContainer.decode(String?.self, forKey: .stateMessage)
        }
        if decoderContainer.contains(.autoRepair)
        {
            self.autoRepair = try decoderContainer.decode(String?.self, forKey: .autoRepair)
        }
        if decoderContainer.contains(.createdTime)
        {
            self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        }
    }
}
public extension NodeGroup{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NodeGroupCodingKeys.self)
         try encoderContainer.encode(clusterId, forKey: .clusterId)
         try encoderContainer.encode(nodeGroupId, forKey: .nodeGroupId)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(nodeConfig, forKey: .nodeConfig)
         try encoderContainer.encode(version, forKey: .version)
         try encoderContainer.encode(nodeNetwork, forKey: .nodeNetwork)
         try encoderContainer.encode(currentCount, forKey: .currentCount)
         try encoderContainer.encode(expectCount, forKey: .expectCount)
         try encoderContainer.encode(agId, forKey: .agId)
         try encoderContainer.encode(instanceTemplateId, forKey: .instanceTemplateId)
         try encoderContainer.encode(state, forKey: .state)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(stateMessage, forKey: .stateMessage)
         try encoderContainer.encode(autoRepair, forKey: .autoRepair)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
    }
}