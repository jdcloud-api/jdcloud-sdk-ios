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

///  createVpc
@objc(CreateVpc)
public class CreateVpc:NSObject,Codable{
    /// Vpc的Id
    var id:String?
    /// 私有网络名称
    var name:String?
    /// 地址范围
    var addressPrefix:String?
    /// VPC 描述
    var descriptionValue:String?
    /// 创建时间
    var createdTime:String?
    /// 所属云提供商ID
    var cloudID:String?
    /// VPC的网段
    /// Required:true
    var cidrBlock:String
    /// 用户侧网络的网段
    var userCidr:String?



    public  init(cidrBlock:String){
             self.cidrBlock = cidrBlock
    }

    enum CreateVpcCodingKeys: String, CodingKey {
        case id
        case name
        case addressPrefix
        case descriptionValue = "description"
        case createdTime
        case cloudID
        case cidrBlock
        case userCidr
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateVpcCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.addressPrefix)
        {
            self.addressPrefix = try decoderContainer.decode(String?.self, forKey: .addressPrefix)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.createdTime)
        {
            self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        }
        if decoderContainer.contains(.cloudID)
        {
            self.cloudID = try decoderContainer.decode(String?.self, forKey: .cloudID)
        }
        self.cidrBlock = try decoderContainer.decode(String.self, forKey: .cidrBlock)
        if decoderContainer.contains(.userCidr)
        {
            self.userCidr = try decoderContainer.decode(String?.self, forKey: .userCidr)
        }
    }
}
public extension CreateVpc{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateVpcCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(addressPrefix, forKey: .addressPrefix)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
         try encoderContainer.encode(cloudID, forKey: .cloudID)
         try encoderContainer.encode(cidrBlock, forKey: .cidrBlock)
         try encoderContainer.encode(userCidr, forKey: .userCidr)
    }
}