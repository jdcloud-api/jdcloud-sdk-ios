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

   物模型管理
   用于完成物模型管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  物模型注册接口
      ///       /// 
@objc(OmEnrollRequest)
public class OmEnrollRequest:JdCloudRequest
{
    /// InstanceId
    var instanceId:String?

    /// Payload
    var payload:String?

    /// 物模型唯一标识
    var omName:String


    public init(regionId: String,omName:String){
        self.omName = omName
        super.init(regionId: regionId)
    }


    enum OmEnrollRequestRequestCodingKeys: String, CodingKey {
        case instanceId
        case payload
        case omName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OmEnrollRequestRequestCodingKeys.self)
        try encoderContainer.encode(instanceId, forKey: .instanceId)
        try encoderContainer.encode(payload, forKey: .payload)
        try encoderContainer.encode(omName, forKey: .omName)

    }
}
