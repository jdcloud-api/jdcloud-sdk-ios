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


///  修改一个高可用组的信息
@objc(UpdateAgRequest)
public class UpdateAgRequest:JdCloudRequest
{
    /// 描述，长度不超过 256 字符
    var descriptionValue:String?

    /// 高可用组名称，只支持中文、数字、大小写字母、英文下划线 “_” 及中划线 “-”，且不能超过 32 字符
    var name:String?

    /// 高可用组 ID
    var agId:String


    public init(regionId: String,agId:String){
        self.agId = agId
        super.init(regionId: regionId)
    }


    enum UpdateAgRequestRequestCodingKeys: String, CodingKey {
        case descriptionValue = "description"
        case name
        case agId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdateAgRequestRequestCodingKeys.self)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(agId, forKey: .agId)

    }
}
