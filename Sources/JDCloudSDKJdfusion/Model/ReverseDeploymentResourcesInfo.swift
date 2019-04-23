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

///  资源ID
@objc(ReverseDeploymentResourcesInfo)
public class ReverseDeploymentResourcesInfo:NSObject,Codable{
    /// VmIds
    var vmIds:[String:String?]?
    /// EipIds
    var eipIds:[String:String?]?
    /// SubnetIds
    var subnetIds:[String:String?]?
    /// NetworkInterfaceIds
    var networkInterfaceIds:[String:String?]?
    /// SlbIds
    var slbIds:[String:String?]?
    /// SecurityGroupIds
    var securityGroupIds:[String:String?]?
    /// KeypairIds
    var keypairIds:[String:String?]?
    /// DiskIds
    var diskIds:[String:String?]?
    /// VpcIds
    var vpcIds:[String:String?]?
    /// VserverGroupIds
    var vserverGroupIds:[String:String?]?
    /// HttpListenerIds
    var httpListenerIds:[String:String?]?
    /// DiskAttachmentIds
    var diskAttachmentIds:[String:String?]?
    /// NetInterfaceAttachmentIds
    var netInterfaceAttachmentIds:[String:String?]?
    /// EipAssociateIds
    var eipAssociateIds:[String:String?]?



    public override init(){
            super.init()
    }

    enum ReverseDeploymentResourcesInfoCodingKeys: String, CodingKey {
        case vmIds
        case eipIds
        case subnetIds
        case networkInterfaceIds
        case slbIds
        case securityGroupIds
        case keypairIds
        case diskIds
        case vpcIds
        case vserverGroupIds
        case httpListenerIds
        case diskAttachmentIds
        case netInterfaceAttachmentIds
        case eipAssociateIds
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ReverseDeploymentResourcesInfoCodingKeys.self)
        if decoderContainer.contains(.vmIds)
        {
            self.vmIds = try decoderContainer.decode([String:String?]?.self, forKey: .vmIds)
        }
        if decoderContainer.contains(.eipIds)
        {
            self.eipIds = try decoderContainer.decode([String:String?]?.self, forKey: .eipIds)
        }
        if decoderContainer.contains(.subnetIds)
        {
            self.subnetIds = try decoderContainer.decode([String:String?]?.self, forKey: .subnetIds)
        }
        if decoderContainer.contains(.networkInterfaceIds)
        {
            self.networkInterfaceIds = try decoderContainer.decode([String:String?]?.self, forKey: .networkInterfaceIds)
        }
        if decoderContainer.contains(.slbIds)
        {
            self.slbIds = try decoderContainer.decode([String:String?]?.self, forKey: .slbIds)
        }
        if decoderContainer.contains(.securityGroupIds)
        {
            self.securityGroupIds = try decoderContainer.decode([String:String?]?.self, forKey: .securityGroupIds)
        }
        if decoderContainer.contains(.keypairIds)
        {
            self.keypairIds = try decoderContainer.decode([String:String?]?.self, forKey: .keypairIds)
        }
        if decoderContainer.contains(.diskIds)
        {
            self.diskIds = try decoderContainer.decode([String:String?]?.self, forKey: .diskIds)
        }
        if decoderContainer.contains(.vpcIds)
        {
            self.vpcIds = try decoderContainer.decode([String:String?]?.self, forKey: .vpcIds)
        }
        if decoderContainer.contains(.vserverGroupIds)
        {
            self.vserverGroupIds = try decoderContainer.decode([String:String?]?.self, forKey: .vserverGroupIds)
        }
        if decoderContainer.contains(.httpListenerIds)
        {
            self.httpListenerIds = try decoderContainer.decode([String:String?]?.self, forKey: .httpListenerIds)
        }
        if decoderContainer.contains(.diskAttachmentIds)
        {
            self.diskAttachmentIds = try decoderContainer.decode([String:String?]?.self, forKey: .diskAttachmentIds)
        }
        if decoderContainer.contains(.netInterfaceAttachmentIds)
        {
            self.netInterfaceAttachmentIds = try decoderContainer.decode([String:String?]?.self, forKey: .netInterfaceAttachmentIds)
        }
        if decoderContainer.contains(.eipAssociateIds)
        {
            self.eipAssociateIds = try decoderContainer.decode([String:String?]?.self, forKey: .eipAssociateIds)
        }
    }
}
public extension ReverseDeploymentResourcesInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ReverseDeploymentResourcesInfoCodingKeys.self)
         try encoderContainer.encode(vmIds, forKey: .vmIds)
         try encoderContainer.encode(eipIds, forKey: .eipIds)
         try encoderContainer.encode(subnetIds, forKey: .subnetIds)
         try encoderContainer.encode(networkInterfaceIds, forKey: .networkInterfaceIds)
         try encoderContainer.encode(slbIds, forKey: .slbIds)
         try encoderContainer.encode(securityGroupIds, forKey: .securityGroupIds)
         try encoderContainer.encode(keypairIds, forKey: .keypairIds)
         try encoderContainer.encode(diskIds, forKey: .diskIds)
         try encoderContainer.encode(vpcIds, forKey: .vpcIds)
         try encoderContainer.encode(vserverGroupIds, forKey: .vserverGroupIds)
         try encoderContainer.encode(httpListenerIds, forKey: .httpListenerIds)
         try encoderContainer.encode(diskAttachmentIds, forKey: .diskAttachmentIds)
         try encoderContainer.encode(netInterfaceAttachmentIds, forKey: .netInterfaceAttachmentIds)
         try encoderContainer.encode(eipAssociateIds, forKey: .eipAssociateIds)
    }
}
