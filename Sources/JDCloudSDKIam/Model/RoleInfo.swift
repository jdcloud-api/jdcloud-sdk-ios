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

///  roleInfo
@objc(RoleInfo)
public class RoleInfo:NSObject,Codable{
    /// 角色ID
    var roleId:String?
    /// 角色名称
    var roleName:String?
    /// 角色类型，2-服务相关角色，3-服务角色，4-用户角色
    var type:Int?
    /// 信任实体信息
    var assumeRolePolicyDocument:String?
    /// 描述，0~256个字符
    var descriptionValue:String?
    /// 最大会话时长3600~43200秒，默认3600秒
    var maxSessionDuration:Int?
    /// 京东云资源标识(jrn)
    var jrn:String?
    /// 创建角色的时间
    var createTime:String?
    /// 角色所属主账号
    var account:String?



    public override init(){
            super.init()
    }

    enum RoleInfoCodingKeys: String, CodingKey {
        case roleId
        case roleName
        case type
        case assumeRolePolicyDocument
        case descriptionValue = "description"
        case maxSessionDuration
        case jrn
        case createTime
        case account
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RoleInfoCodingKeys.self)
        if decoderContainer.contains(.roleId)
        {
            self.roleId = try decoderContainer.decode(String?.self, forKey: .roleId)
        }
        if decoderContainer.contains(.roleName)
        {
            self.roleName = try decoderContainer.decode(String?.self, forKey: .roleName)
        }
        if decoderContainer.contains(.type)
        {
            self.type = try decoderContainer.decode(Int?.self, forKey: .type)
        }
        if decoderContainer.contains(.assumeRolePolicyDocument)
        {
            self.assumeRolePolicyDocument = try decoderContainer.decode(String?.self, forKey: .assumeRolePolicyDocument)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.maxSessionDuration)
        {
            self.maxSessionDuration = try decoderContainer.decode(Int?.self, forKey: .maxSessionDuration)
        }
        if decoderContainer.contains(.jrn)
        {
            self.jrn = try decoderContainer.decode(String?.self, forKey: .jrn)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.account)
        {
            self.account = try decoderContainer.decode(String?.self, forKey: .account)
        }
    }
}
public extension RoleInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RoleInfoCodingKeys.self)
         try encoderContainer.encode(roleId, forKey: .roleId)
         try encoderContainer.encode(roleName, forKey: .roleName)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(assumeRolePolicyDocument, forKey: .assumeRolePolicyDocument)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(maxSessionDuration, forKey: .maxSessionDuration)
         try encoderContainer.encode(jrn, forKey: .jrn)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(account, forKey: .account)
    }
}
