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

///  subnet
@objc(Subnet)
public class Subnet:NSObject,Codable{
    /// Subnet的Id
    var subnetId:String?
    /// 子网名称
    var subnetName:String?
    /// 子网所属VPC的Id
    var vpcId:String?
    /// 子网网段，vpc内子网网段不能重叠，cidr的取值范围：10.0.0.0/8、172.16.0.0/12和192.168.0.0/16及它们包含的子网，且子网掩码长度为16-28之间，如果VPC含有Cidr，则必须为VPC所在Cidr的子网
    var addressPrefix:String?
    /// 子网可用ip数量
    var availableIpCount:Double?
    /// 子网描述信息
    var descriptionValue:String?
    /// 子网关联的路由表Id
    var routeTableId:String?
    /// 子网关联的acl Id
    var aclId:String?
    /// 子网的起始地址，子网第1个地位为路由器网关保留，第2个地址为dhcp服务保留
    var startIp:String?
    /// 子网的结束地址，子网第1个地位为路由器网关保留，第2个地址为dhcp服务保留
    var endIp:String?
    /// 子网创建时间
    var createdTime:String?



    public override init(){
            super.init()
    }

    enum SubnetCodingKeys: String, CodingKey {
        case subnetId
        case subnetName
        case vpcId
        case addressPrefix
        case availableIpCount
        case descriptionValue = "description"
        case routeTableId
        case aclId
        case startIp
        case endIp
        case createdTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SubnetCodingKeys.self)
        if decoderContainer.contains(.subnetId)
        {
            self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        }
        if decoderContainer.contains(.subnetName)
        {
            self.subnetName = try decoderContainer.decode(String?.self, forKey: .subnetName)
        }
        if decoderContainer.contains(.vpcId)
        {
            self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        }
        if decoderContainer.contains(.addressPrefix)
        {
            self.addressPrefix = try decoderContainer.decode(String?.self, forKey: .addressPrefix)
        }
        if decoderContainer.contains(.availableIpCount)
        {
            self.availableIpCount = try decoderContainer.decode(Double?.self, forKey: .availableIpCount)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.routeTableId)
        {
            self.routeTableId = try decoderContainer.decode(String?.self, forKey: .routeTableId)
        }
        if decoderContainer.contains(.aclId)
        {
            self.aclId = try decoderContainer.decode(String?.self, forKey: .aclId)
        }
        if decoderContainer.contains(.startIp)
        {
            self.startIp = try decoderContainer.decode(String?.self, forKey: .startIp)
        }
        if decoderContainer.contains(.endIp)
        {
            self.endIp = try decoderContainer.decode(String?.self, forKey: .endIp)
        }
        if decoderContainer.contains(.createdTime)
        {
            self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        }
    }
}
public extension Subnet{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SubnetCodingKeys.self)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(subnetName, forKey: .subnetName)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(addressPrefix, forKey: .addressPrefix)
         try encoderContainer.encode(availableIpCount, forKey: .availableIpCount)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(routeTableId, forKey: .routeTableId)
         try encoderContainer.encode(aclId, forKey: .aclId)
         try encoderContainer.encode(startIp, forKey: .startIp)
         try encoderContainer.encode(endIp, forKey: .endIp)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
    }
}
