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

   实例管理
   API related to MONGODB instances

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCharge


///  创建实例
public class CreateInstanceRequest:JdCloudRequest
{
    /// 实例规格
    var instanceSpec:DBInstanceSpec

    /// 付费方式
    var chargeSpec:ChargeSpec?


    public init(regionId: String,instanceSpec:DBInstanceSpec){
        self.instanceSpec = instanceSpec
        super.init(regionId: regionId)
    }


    enum CreateInstanceRequestRequestCodingKeys: String, CodingKey {
        case instanceSpec
        case chargeSpec
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateInstanceRequestRequestCodingKeys.self)
        try container.encode(instanceSpec, forKey: .instanceSpec)
        try container.encode(chargeSpec, forKey: .chargeSpec)

    }
}