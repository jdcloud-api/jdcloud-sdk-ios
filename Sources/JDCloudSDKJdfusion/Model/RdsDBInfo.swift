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

///  RDS实例上的数据库信息
@objc(RdsDBInfo)
public class RdsDBInfo:NSObject,Codable{
    /// 数据库名称
    var name:String?
    /// 数据库状态
    var status:String?
    /// 字符集
    var characterSetName:String?
    /// AccountPrivileges
    var accountPrivileges:[RdsDBAccessPrivilege?]?
    /// 所属云提供商ID
    var cloudID:String?



    public override init(){
            super.init()
    }

    enum RdsDBInfoCodingKeys: String, CodingKey {
        case name
        case status
        case characterSetName
        case accountPrivileges
        case cloudID
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RdsDBInfoCodingKeys.self)
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.characterSetName)
        {
            self.characterSetName = try decoderContainer.decode(String?.self, forKey: .characterSetName)
        }
        if decoderContainer.contains(.accountPrivileges)
        {
            self.accountPrivileges = try decoderContainer.decode([RdsDBAccessPrivilege?]?.self, forKey: .accountPrivileges)
        }
        if decoderContainer.contains(.cloudID)
        {
            self.cloudID = try decoderContainer.decode(String?.self, forKey: .cloudID)
        }
    }
}
public extension RdsDBInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RdsDBInfoCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(characterSetName, forKey: .characterSetName)
         try encoderContainer.encode(accountPrivileges, forKey: .accountPrivileges)
         try encoderContainer.encode(cloudID, forKey: .cloudID)
    }
}
