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

   NodeGroup
   节点组相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  设置节点组的自动修复
@objc(SetAutoRepairRequest)
public class SetAutoRepairRequest:JdCloudRequest
{
    /// 是否开启自动修复
    var enabled:Bool

    /// 节点组 ID
    var nodeGroupId:String


    public init(regionId: String,enabled:Bool,nodeGroupId:String){
        self.enabled = enabled
        self.nodeGroupId = nodeGroupId
        super.init(regionId: regionId)
    }


    enum SetAutoRepairRequestRequestCodingKeys: String, CodingKey {
        case enabled
        case nodeGroupId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetAutoRepairRequestRequestCodingKeys.self)
        try encoderContainer.encode(enabled, forKey: .enabled)
        try encoderContainer.encode(nodeGroupId, forKey: .nodeGroupId)

    }
}