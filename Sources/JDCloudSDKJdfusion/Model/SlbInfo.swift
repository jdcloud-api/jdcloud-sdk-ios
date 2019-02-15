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

///  负载均衡实例描述
@objc(SlbInfo)
public class SlbInfo:NSObject,Codable{
    /// 所属云ID
    var cloudID:String?
    /// 负载均衡实例ID。
    var id:String?
    /// 负载均衡实例的名称。
    var name:String?
    /// 负载均衡实例状态
    var status:String?
    /// 负载均衡实例的服务地址。
    var ipAddress:String?
    /// 负载均衡实例的网络类型。
    var addressType:String?
    /// 私网负载均衡实例的交换机ID。
    var subnetId:String?
    /// 私网负载均衡实例的专有网络ID。
    var vpc:String?
    /// 私网负载均衡实例的网络类型
    var networkType:String?
    /// 可用区域。
    var azs:[String?]?
    /// 创建时间
    var createdTime:String?



    public override init(){
            super.init()
    }

    enum SlbInfoCodingKeys: String, CodingKey {
        case cloudID
        case id
        case name
        case status
        case ipAddress
        case addressType
        case subnetId
        case vpc
        case networkType
        case azs
        case createdTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SlbInfoCodingKeys.self)
        if decoderContainer.contains(.cloudID)
        {
            self.cloudID = try decoderContainer.decode(String?.self, forKey: .cloudID)
        }
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.ipAddress)
        {
            self.ipAddress = try decoderContainer.decode(String?.self, forKey: .ipAddress)
        }
        if decoderContainer.contains(.addressType)
        {
            self.addressType = try decoderContainer.decode(String?.self, forKey: .addressType)
        }
        if decoderContainer.contains(.subnetId)
        {
            self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        }
        if decoderContainer.contains(.vpc)
        {
            self.vpc = try decoderContainer.decode(String?.self, forKey: .vpc)
        }
        if decoderContainer.contains(.networkType)
        {
            self.networkType = try decoderContainer.decode(String?.self, forKey: .networkType)
        }
        if decoderContainer.contains(.azs)
        {
            self.azs = try decoderContainer.decode([String?]?.self, forKey: .azs)
        }
        if decoderContainer.contains(.createdTime)
        {
            self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        }
    }
}
public extension SlbInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SlbInfoCodingKeys.self)
         try encoderContainer.encode(cloudID, forKey: .cloudID)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(ipAddress, forKey: .ipAddress)
         try encoderContainer.encode(addressType, forKey: .addressType)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(vpc, forKey: .vpc)
         try encoderContainer.encode(networkType, forKey: .networkType)
         try encoderContainer.encode(azs, forKey: .azs)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
    }
}
