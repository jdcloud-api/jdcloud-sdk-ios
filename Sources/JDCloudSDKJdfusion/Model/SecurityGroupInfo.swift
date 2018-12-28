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

///  安全组详情
@objc(SecurityGroupInfo)
public class SecurityGroupInfo:NSObject,Codable{
    /// 注册云信息ID
    var cloudID:String?
    /// 安全组 id
    var id:String?
    /// 目标安全组名称
    var name:String?
    /// 安全组描述信息
    var descriptionValue:String?
    /// VPC id
    var vpcId:String?
    /// 创建时间
    var createdTime:String?



    public override init(){
            super.init()
    }

    enum SecurityGroupInfoCodingKeys: String, CodingKey {
        case cloudID
        case id
        case name
        case descriptionValue = "description"
        case vpcId
        case createdTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SecurityGroupInfoCodingKeys.self)
        self.cloudID = try decoderContainer.decode(String?.self, forKey: .cloudID)
        self.id = try decoderContainer.decode(String?.self, forKey: .id)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
    }
}
public extension SecurityGroupInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SecurityGroupInfoCodingKeys.self)
         try encoderContainer.encode(cloudID, forKey: .cloudID)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
    }
}
