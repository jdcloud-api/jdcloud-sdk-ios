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

   user remind相关接口
   API related to UserRemind

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  更新余额提醒状态
public class UpdateUserRemindStatusRequest:JdCloudRequest
{
    /// 用户pin
    var pin:String

    /// 余额预警状态 1-启用 2-停用
    var status:String


    public init(regionId: String,pin:String,status:String){
        self.pin = pin
        self.status = status
        super.init(regionId: regionId)
    }


    enum UpdateUserRemindStatusRequestRequestCodingKeys: String, CodingKey {
        case pin
        case status
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: UpdateUserRemindStatusRequestRequestCodingKeys.self)
        try container.encode(pin, forKey: .pin)
        try container.encode(status, forKey: .status)

    }
}
