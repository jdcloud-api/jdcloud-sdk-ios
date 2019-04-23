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


///  取得指定RDS实例上的指定账号信息
@objc(GetRdsAccountsByInstIdAndAccountNameRequest)
public class GetRdsAccountsByInstIdAndAccountNameRequest:JdCloudRequest
{
    /// RDS实例ID
    var instId:String

    /// 账号名称
    var accountName:String


    public init(regionId: String,instId:String,accountName:String){
        self.instId = instId
        self.accountName = accountName
        super.init(regionId: regionId)
    }


    enum GetRdsAccountsByInstIdAndAccountNameRequestRequestCodingKeys: String, CodingKey {
        case instId
        case accountName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetRdsAccountsByInstIdAndAccountNameRequestRequestCodingKeys.self)
        try encoderContainer.encode(instId, forKey: .instId)
        try encoderContainer.encode(accountName, forKey: .accountName)

    }
}