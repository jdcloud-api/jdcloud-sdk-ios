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

///  deploymentResourcesInfo
@objc(DeploymentResourcesInfo)
public class DeploymentResourcesInfo:NSObject,Codable{
    /// Vms
    var vms:[String:CreateVm?]?
    /// Eips
    var eips:[String:AllocateEipAddress?]?
    /// Subnets
    var subnets:[String:CreateSubnet?]?
    /// NetworkInterfaces
    var networkInterfaces:[String:CreateNetInterface?]?
    /// Slbs
    var slbs:[String:SlbInfo?]?
    /// SecurityGroups
    var securityGroups:[String:CreateSecurityGroup?]?
    /// Keypairs
    var keypairs:[String:CreateKeypair?]?
    /// Disks
    var disks:[String:CreateDataDisk?]?
    /// Vpcs
    var vpcs:[String:VpcInfo?]?
    /// VserverGroups
    var vserverGroups:[String:CreateVserverGroup?]?
    /// HttpListeners
    var httpListeners:[String:CreateLoadBalancerHTTPListener?]?
    /// DiskAttachment
    var diskAttachment:[String:DeploymentAttachDisk?]?
    /// NetInterfaceAttachment
    var netInterfaceAttachment:[String:DeploymentAttachNetInterface?]?
    /// EipAssociate
    var eipAssociate:[String:DeploymentAssociateEip?]?
    /// Variables
    var variables:[String:String?]?



    public override init(){
            super.init()
    }

    enum DeploymentResourcesInfoCodingKeys: String, CodingKey {
        case vms
        case eips
        case subnets
        case networkInterfaces
        case slbs
        case securityGroups
        case keypairs
        case disks
        case vpcs
        case vserverGroups
        case httpListeners
        case diskAttachment
        case netInterfaceAttachment
        case eipAssociate
        case variables
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeploymentResourcesInfoCodingKeys.self)
        if decoderContainer.contains(.vms)
        {
            self.vms = try decoderContainer.decode([String:CreateVm?]?.self, forKey: .vms)
        }
        if decoderContainer.contains(.eips)
        {
            self.eips = try decoderContainer.decode([String:AllocateEipAddress?]?.self, forKey: .eips)
        }
        if decoderContainer.contains(.subnets)
        {
            self.subnets = try decoderContainer.decode([String:CreateSubnet?]?.self, forKey: .subnets)
        }
        if decoderContainer.contains(.networkInterfaces)
        {
            self.networkInterfaces = try decoderContainer.decode([String:CreateNetInterface?]?.self, forKey: .networkInterfaces)
        }
        if decoderContainer.contains(.slbs)
        {
            self.slbs = try decoderContainer.decode([String:SlbInfo?]?.self, forKey: .slbs)
        }
        if decoderContainer.contains(.securityGroups)
        {
            self.securityGroups = try decoderContainer.decode([String:CreateSecurityGroup?]?.self, forKey: .securityGroups)
        }
        if decoderContainer.contains(.keypairs)
        {
            self.keypairs = try decoderContainer.decode([String:CreateKeypair?]?.self, forKey: .keypairs)
        }
        if decoderContainer.contains(.disks)
        {
            self.disks = try decoderContainer.decode([String:CreateDataDisk?]?.self, forKey: .disks)
        }
        if decoderContainer.contains(.vpcs)
        {
            self.vpcs = try decoderContainer.decode([String:VpcInfo?]?.self, forKey: .vpcs)
        }
        if decoderContainer.contains(.vserverGroups)
        {
            self.vserverGroups = try decoderContainer.decode([String:CreateVserverGroup?]?.self, forKey: .vserverGroups)
        }
        if decoderContainer.contains(.httpListeners)
        {
            self.httpListeners = try decoderContainer.decode([String:CreateLoadBalancerHTTPListener?]?.self, forKey: .httpListeners)
        }
        if decoderContainer.contains(.diskAttachment)
        {
            self.diskAttachment = try decoderContainer.decode([String:DeploymentAttachDisk?]?.self, forKey: .diskAttachment)
        }
        if decoderContainer.contains(.netInterfaceAttachment)
        {
            self.netInterfaceAttachment = try decoderContainer.decode([String:DeploymentAttachNetInterface?]?.self, forKey: .netInterfaceAttachment)
        }
        if decoderContainer.contains(.eipAssociate)
        {
            self.eipAssociate = try decoderContainer.decode([String:DeploymentAssociateEip?]?.self, forKey: .eipAssociate)
        }
        if decoderContainer.contains(.variables)
        {
            self.variables = try decoderContainer.decode([String:String?]?.self, forKey: .variables)
        }
    }
}
public extension DeploymentResourcesInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeploymentResourcesInfoCodingKeys.self)
         try encoderContainer.encode(vms, forKey: .vms)
         try encoderContainer.encode(eips, forKey: .eips)
         try encoderContainer.encode(subnets, forKey: .subnets)
         try encoderContainer.encode(networkInterfaces, forKey: .networkInterfaces)
         try encoderContainer.encode(slbs, forKey: .slbs)
         try encoderContainer.encode(securityGroups, forKey: .securityGroups)
         try encoderContainer.encode(keypairs, forKey: .keypairs)
         try encoderContainer.encode(disks, forKey: .disks)
         try encoderContainer.encode(vpcs, forKey: .vpcs)
         try encoderContainer.encode(vserverGroups, forKey: .vserverGroups)
         try encoderContainer.encode(httpListeners, forKey: .httpListeners)
         try encoderContainer.encode(diskAttachment, forKey: .diskAttachment)
         try encoderContainer.encode(netInterfaceAttachment, forKey: .netInterfaceAttachment)
         try encoderContainer.encode(eipAssociate, forKey: .eipAssociate)
         try encoderContainer.encode(variables, forKey: .variables)
    }
}
