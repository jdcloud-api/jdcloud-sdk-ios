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

   jdsf 服务所有的配置信息维护
   维护jdsf 的配置信息

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  更新设置信息
public class UpdateSettingsRequest:JdCloudRequest
{
    /// 设置的值
    var settingValue:String

    /// 设置的描述信息
    var settingDesc:String?

    /// 设置的key
    var settingKey:String


    public init(regionId: String,settingValue:String,settingKey:String){
        self.settingValue = settingValue
        self.settingKey = settingKey
        super.init(regionId: regionId)
    }


    enum UpdateSettingsRequestRequestCodingKeys: String, CodingKey {
        case settingValue
        case settingDesc
        case settingKey
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: UpdateSettingsRequestRequestCodingKeys.self)
        try container.encode(settingValue, forKey: .settingValue)
        try container.encode(settingDesc, forKey: .settingDesc)
        try container.encode(settingKey, forKey: .settingKey)

    }
}
