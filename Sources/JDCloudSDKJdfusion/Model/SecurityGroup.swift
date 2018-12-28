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

///  securityGroup
@objc(SecurityGroup)
public class SecurityGroup:NSObject,Codable{
    /// 安全组ID
    var groupId:String?
    /// 安全组名称
    var groupName:String?



    public override init(){
            super.init()
    }

    enum SecurityGroupCodingKeys: String, CodingKey {
        case groupId
        case groupName
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SecurityGroupCodingKeys.self)
        self.groupId = try decoderContainer.decode(String?.self, forKey: .groupId)
        self.groupName = try decoderContainer.decode(String?.self, forKey: .groupName)
    }
}
public extension SecurityGroup{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SecurityGroupCodingKeys.self)
         try encoderContainer.encode(groupId, forKey: .groupId)
         try encoderContainer.encode(groupName, forKey: .groupName)
    }
}
