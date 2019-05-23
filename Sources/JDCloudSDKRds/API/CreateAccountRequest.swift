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


///  创建数据库账号，用户可以使用客户端，应用程序等通过该账号和密码登录RDS数据库实例。&lt;br&gt;为便于管理和恢复，RDS对账号进行了限制，数据库账号只能通过控制台或者OpenAPI进行创建、删除账号以及对账号授权等，用户不能通过SQL语句对账号进行相关操作。
@objc(CreateAccountRequest)
public class CreateAccountRequest:JdCloudRequest
{
    /// 账号名，在同一个RDS实例中，账号名不能重复。账号名的具体规则可参见帮助中心文档:[名称及密码限制](../../../documentation/Database-and-Cache-Service/RDS/Introduction/Restrictions/SQLServer-Restrictions.md)
    var accountName:String

    /// 密码,密码的具体规则可参见帮助中心文档:[名称及密码限制](../../../documentation/Database-and-Cache-Service/RDS/Introduction/Restrictions/SQLServer-Restrictions.md)
    var accountPassword:String

    /// RDS 实例ID，唯一标识一个RDS实例
    var instanceId:String


    public init(regionId: String,accountName:String,accountPassword:String,instanceId:String){
        self.accountName = accountName
        self.accountPassword = accountPassword
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum CreateAccountRequestRequestCodingKeys: String, CodingKey {
        case accountName
        case accountPassword
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateAccountRequestRequestCodingKeys.self)
        try encoderContainer.encode(accountName, forKey: .accountName)
        try encoderContainer.encode(accountPassword, forKey: .accountPassword)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
