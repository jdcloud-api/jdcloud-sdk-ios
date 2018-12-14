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

   invoices相关接口
   API related to invoices

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  设置默认的发票邮寄地址
public class SetDefaultPostAddressRequest:JdCloudRequest
{
    /// 邮寄地址id
    var addressId:String

    /// 用户pin
    var pin:String


    public init(regionId: String,addressId:String,pin:String){
        self.addressId = addressId
        self.pin = pin
        super.init(regionId: regionId)
    }


    enum SetDefaultPostAddressRequestRequestCodingKeys: String, CodingKey {
        case addressId
        case pin
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: SetDefaultPostAddressRequestRequestCodingKeys.self)
        try container.encode(addressId, forKey: .addressId)
        try container.encode(pin, forKey: .pin)

    }
}
