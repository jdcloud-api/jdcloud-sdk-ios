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

   JDCLOUD UCAPI account API
   API related to Account

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  绑定手机
public class BindPhoneRequest:JdCloudRequest
{
    /// 绑定手机信息
    var accountMobile:AccountMobile?

    /// 用户pin
    var pin:String


    public init(regionId: String,pin:String){
        self.pin = pin
        super.init(regionId: regionId)
    }


    enum BindPhoneRequestRequestCodingKeys: String, CodingKey {
        case accountMobile
        case pin
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: BindPhoneRequestRequestCodingKeys.self)
        try container.encode(accountMobile, forKey: .accountMobile)
        try container.encode(pin, forKey: .pin)

    }
}
