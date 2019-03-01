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

   Anti DDos Pro Instance APIs
   Anti DDos Pro Instance APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  新购或升级高防实例, 新购或升级成功时, 需根据订单 id 完成支付流程, 新购或升级实例才会生效
@objc(CreateInstanceRequest)
public class CreateInstanceRequest:JdCloudRequest
{
    /// 新购或升级实例请求参数
    var createInstanceSpec:CreateInstanceSpec


    public init(regionId: String,createInstanceSpec:CreateInstanceSpec){
        self.createInstanceSpec = createInstanceSpec
        super.init(regionId: regionId)
    }


    enum CreateInstanceRequestRequestCodingKeys: String, CodingKey {
        case createInstanceSpec
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateInstanceRequestRequestCodingKeys.self)
        try encoderContainer.encode(createInstanceSpec, forKey: .createInstanceSpec)

    }
}
