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

   Availability-Group
   高可用组的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改高可用组的实例模板
@objc(SetInstanceTemplateRequest)
public class SetInstanceTemplateRequest:JdCloudRequest
{
    /// 实例模板 id
    var instanceTemplateId:String

    /// 高可用组 ID
    var agId:String


    public init(regionId: String,instanceTemplateId:String,agId:String){
        self.instanceTemplateId = instanceTemplateId
        self.agId = agId
        super.init(regionId: regionId)
    }


    enum SetInstanceTemplateRequestRequestCodingKeys: String, CodingKey {
        case instanceTemplateId
        case agId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetInstanceTemplateRequestRequestCodingKeys.self)
        try encoderContainer.encode(instanceTemplateId, forKey: .instanceTemplateId)
        try encoderContainer.encode(agId, forKey: .agId)

    }
}
