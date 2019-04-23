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

///  deployInstance
@objc(DeployInstance)
public class DeployInstance:NSObject,Codable{
    /// 部署ID
    var deployId:String?
    /// 云主机ID
    var uuid:String?
    /// 云主机名称
    var instanceName:String?
    /// ip
    var ip:String?
    /// 公网ip
    var public_ip:String?
    /// 地域
    var regionId:String?
    /// 私有网络
    var vpc:Vpc?
    /// 类型 1云主机，2原生容器
    var type:Int?
    /// 高可用组
    var ag:Ag?
    /// 标签
    var tags:String?
    /// 所属部署组ID，多个,分隔
    var groupId:String?
    /// 部署方式：1滚动 2蓝组 3绿组
    var method:Int?
    /// 部署状态
    var status:Int?



    public override init(){
            super.init()
    }

    enum DeployInstanceCodingKeys: String, CodingKey {
        case deployId
        case uuid
        case instanceName
        case ip
        case public_ip
        case regionId
        case vpc
        case type
        case ag
        case tags
        case groupId
        case method
        case status
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeployInstanceCodingKeys.self)
        if decoderContainer.contains(.deployId)
        {
            self.deployId = try decoderContainer.decode(String?.self, forKey: .deployId)
        }
        if decoderContainer.contains(.uuid)
        {
            self.uuid = try decoderContainer.decode(String?.self, forKey: .uuid)
        }
        if decoderContainer.contains(.instanceName)
        {
            self.instanceName = try decoderContainer.decode(String?.self, forKey: .instanceName)
        }
        if decoderContainer.contains(.ip)
        {
            self.ip = try decoderContainer.decode(String?.self, forKey: .ip)
        }
        if decoderContainer.contains(.public_ip)
        {
            self.public_ip = try decoderContainer.decode(String?.self, forKey: .public_ip)
        }
        if decoderContainer.contains(.regionId)
        {
            self.regionId = try decoderContainer.decode(String?.self, forKey: .regionId)
        }
        if decoderContainer.contains(.vpc)
        {
            self.vpc = try decoderContainer.decode(Vpc?.self, forKey: .vpc)
        }
        if decoderContainer.contains(.type)
        {
            self.type = try decoderContainer.decode(Int?.self, forKey: .type)
        }
        if decoderContainer.contains(.ag)
        {
            self.ag = try decoderContainer.decode(Ag?.self, forKey: .ag)
        }
        if decoderContainer.contains(.tags)
        {
            self.tags = try decoderContainer.decode(String?.self, forKey: .tags)
        }
        if decoderContainer.contains(.groupId)
        {
            self.groupId = try decoderContainer.decode(String?.self, forKey: .groupId)
        }
        if decoderContainer.contains(.method)
        {
            self.method = try decoderContainer.decode(Int?.self, forKey: .method)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Int?.self, forKey: .status)
        }
    }
}
public extension DeployInstance{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeployInstanceCodingKeys.self)
         try encoderContainer.encode(deployId, forKey: .deployId)
         try encoderContainer.encode(uuid, forKey: .uuid)
         try encoderContainer.encode(instanceName, forKey: .instanceName)
         try encoderContainer.encode(ip, forKey: .ip)
         try encoderContainer.encode(public_ip, forKey: .public_ip)
         try encoderContainer.encode(regionId, forKey: .regionId)
         try encoderContainer.encode(vpc, forKey: .vpc)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(ag, forKey: .ag)
         try encoderContainer.encode(tags, forKey: .tags)
         try encoderContainer.encode(groupId, forKey: .groupId)
         try encoderContainer.encode(method, forKey: .method)
         try encoderContainer.encode(status, forKey: .status)
    }
}