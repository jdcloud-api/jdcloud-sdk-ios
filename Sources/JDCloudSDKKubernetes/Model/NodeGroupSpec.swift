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
@objc(NodeGroupSpec)
public class NodeGroupSpec:NSObject,Codable{
    /// 名称
    /// Required:true
    var name:String
    /// Description
    var descriptionValue:String?
    /// Node的信息
    /// Required:true
    var nodeConfig:NodeConfigSpec
    /// nodeGroup初始化大小，至少为1个
    /// Required:true
    var initialNodeCount:Int
    /// k8s运行的vpc
    /// Required:true
    var vpcId:String
    /// k8s的node的cidr
    var nodeCidr:String?
    /// 是否开启自动修复，默认不开启。
    var autoRepair:Bool?



    public  init(name:String,nodeConfig:NodeConfigSpec,initialNodeCount:Int,vpcId:String){
             self.name = name
             self.nodeConfig = nodeConfig
             self.initialNodeCount = initialNodeCount
             self.vpcId = vpcId
    }

    enum NodeGroupSpecCodingKeys: String, CodingKey {
        case name
        case descriptionValue = "description"
        case nodeConfig
        case initialNodeCount
        case vpcId
        case nodeCidr
        case autoRepair
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NodeGroupSpecCodingKeys.self)
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        self.nodeConfig = try decoderContainer.decode(NodeConfigSpec.self, forKey: .nodeConfig)
        self.initialNodeCount = try decoderContainer.decode(Int.self, forKey: .initialNodeCount)
        self.vpcId = try decoderContainer.decode(String.self, forKey: .vpcId)
        if decoderContainer.contains(.nodeCidr)
        {
            self.nodeCidr = try decoderContainer.decode(String?.self, forKey: .nodeCidr)
        }
        if decoderContainer.contains(.autoRepair)
        {
            self.autoRepair = try decoderContainer.decode(Bool?.self, forKey: .autoRepair)
        }
    }
}
public extension NodeGroupSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NodeGroupSpecCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(nodeConfig, forKey: .nodeConfig)
         try encoderContainer.encode(initialNodeCount, forKey: .initialNodeCount)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(nodeCidr, forKey: .nodeCidr)
         try encoderContainer.encode(autoRepair, forKey: .autoRepair)
    }
}
