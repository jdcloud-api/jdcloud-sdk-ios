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

///  networkAcl
@objc(NetworkAcl)
public class NetworkAcl:NSObject,Codable{
    /// networkAcl ID
    var networkAclId:String?
    /// networkAcl名称
    var networkAclName:String?
    /// 私有网络 ID
    var vpcId:String?
    /// networkAcl规则列表
    var networkAclRules:[NetworkAclRule?]?
    /// networkAcl绑定的子网列表
    var subnetIds:[String?]?
    /// 描述,允许输入UTF-8编码下的全部字符，不超过256字符
    var descriptionValue:String?
    /// networkAcl创建时间
    var createdTime:String?



    public override init(){
            super.init()
    }

    enum NetworkAclCodingKeys: String, CodingKey {
        case networkAclId
        case networkAclName
        case vpcId
        case networkAclRules
        case subnetIds
        case descriptionValue = "description"
        case createdTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NetworkAclCodingKeys.self)
        if decoderContainer.contains(.networkAclId)
        {
            self.networkAclId = try decoderContainer.decode(String?.self, forKey: .networkAclId)
        }
        if decoderContainer.contains(.networkAclName)
        {
            self.networkAclName = try decoderContainer.decode(String?.self, forKey: .networkAclName)
        }
        if decoderContainer.contains(.vpcId)
        {
            self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        }
        if decoderContainer.contains(.networkAclRules)
        {
            self.networkAclRules = try decoderContainer.decode([NetworkAclRule?]?.self, forKey: .networkAclRules)
        }
        if decoderContainer.contains(.subnetIds)
        {
            self.subnetIds = try decoderContainer.decode([String?]?.self, forKey: .subnetIds)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.createdTime)
        {
            self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        }
    }
}
public extension NetworkAcl{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NetworkAclCodingKeys.self)
         try encoderContainer.encode(networkAclId, forKey: .networkAclId)
         try encoderContainer.encode(networkAclName, forKey: .networkAclName)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(networkAclRules, forKey: .networkAclRules)
         try encoderContainer.encode(subnetIds, forKey: .subnetIds)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
    }
}
