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

   MFA管理接口
   MFA管理接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  绑定虚拟多因素认证设备
public class BindMFADeviceRequest:JdCloudRequest
{
    /// 被绑定的账号（目前支持：默认不填的情况表示给自己绑定，填写子账号的name表示主账号给子账号绑定)
    var boundAccount:String?

    /// 第一组动态密码
    var authenticationCode1:String

    /// 第二组动态密码
    var authenticationCode2:String


    public init(regionId: String,authenticationCode1:String,authenticationCode2:String){
        self.authenticationCode1 = authenticationCode1
        self.authenticationCode2 = authenticationCode2
        super.init(regionId: regionId)
    }


    enum BindMFADeviceRequestRequestCodingKeys: String, CodingKey {
        case boundAccount
        case authenticationCode1
        case authenticationCode2
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: BindMFADeviceRequestRequestCodingKeys.self)
        try container.encode(boundAccount, forKey: .boundAccount)
        try container.encode(authenticationCode1, forKey: .authenticationCode1)
        try container.encode(authenticationCode2, forKey: .authenticationCode2)

    }
}
