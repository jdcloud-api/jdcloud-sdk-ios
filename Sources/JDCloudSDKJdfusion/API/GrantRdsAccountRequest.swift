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

   Rds-Account
   与RDS账号相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  给RDS账号分配数据库权限
@objc(GrantRdsAccountRequest)
public class GrantRdsAccountRequest:JdCloudRequest
{
    /// RDS账号对数据库的权限信息
    var dbPrivilegeInfo:DbPrivilegeInfo

    /// RDS实例ID
    var instId:String

    /// 账号名称
    var accountName:String


    public init(regionId: String,dbPrivilegeInfo:DbPrivilegeInfo,instId:String,accountName:String){
        self.dbPrivilegeInfo = dbPrivilegeInfo
        self.instId = instId
        self.accountName = accountName
        super.init(regionId: regionId)
    }


    enum GrantRdsAccountRequestRequestCodingKeys: String, CodingKey {
        case dbPrivilegeInfo
        case instId
        case accountName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GrantRdsAccountRequestRequestCodingKeys.self)
        try encoderContainer.encode(dbPrivilegeInfo, forKey: .dbPrivilegeInfo)
        try encoderContainer.encode(instId, forKey: .instId)
        try encoderContainer.encode(accountName, forKey: .accountName)

    }
}