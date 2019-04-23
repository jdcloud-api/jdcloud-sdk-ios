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

///  account
@objc(Account)
public class Account:NSObject,Codable{
    /// 账号名，账号名的具体规则可参见帮助中心文档:[名称及密码限制](../../../documentation/Cloud-Database-and-Cache/RDS/Introduction/Restrictions/SQLServer-Restrictions.md)
    var accountName:String?
    /// 账号状态，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)&lt;br&gt;- **MySQL：不支持，不返回该字段**&lt;br&gt;- **SQL Server：返回该字段**
    var accountStatus:String?
    /// 具有的权限
    var accountPrivileges:[AccountPrivilege?]?



    public override init(){
            super.init()
    }

    enum AccountCodingKeys: String, CodingKey {
        case accountName
        case accountStatus
        case accountPrivileges
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AccountCodingKeys.self)
        if decoderContainer.contains(.accountName)
        {
            self.accountName = try decoderContainer.decode(String?.self, forKey: .accountName)
        }
        if decoderContainer.contains(.accountStatus)
        {
            self.accountStatus = try decoderContainer.decode(String?.self, forKey: .accountStatus)
        }
        if decoderContainer.contains(.accountPrivileges)
        {
            self.accountPrivileges = try decoderContainer.decode([AccountPrivilege?]?.self, forKey: .accountPrivileges)
        }
    }
}
public extension Account{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AccountCodingKeys.self)
         try encoderContainer.encode(accountName, forKey: .accountName)
         try encoderContainer.encode(accountStatus, forKey: .accountStatus)
         try encoderContainer.encode(accountPrivileges, forKey: .accountPrivileges)
    }
}
