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

   账号管理
   API related to Relational Database Service

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  取消该账号对某个数据库的所有权限。权限取消后，该账号将不能访问此数据库。取消账号对某个数据库的访问权限，不影响该账号对其他数据库的访问权限&lt;br&gt;- 仅支持MySQL
public class RevokePrivilegeRequest:JdCloudRequest
{
    /// 需要取消授权的数据库的名称。权限取消后，该账号将不能访问此数据库
    var dbNames:String?

    /// RDS 实例ID，唯一标识一个RDS实例
    var instanceId:String

    /// 账号名，在同一个实例中账号名不能重复
    var accountName:String


    public init(regionId: String,instanceId:String,accountName:String){
        self.instanceId = instanceId
        self.accountName = accountName
        super.init(regionId: regionId)
    }


    enum RevokePrivilegeRequestRequestCodingKeys: String, CodingKey {
        case dbNames
        case instanceId
        case accountName
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: RevokePrivilegeRequestRequestCodingKeys.self)
        try container.encode(dbNames, forKey: .dbNames)
        try container.encode(instanceId, forKey: .instanceId)
        try container.encode(accountName, forKey: .accountName)

    }
}
