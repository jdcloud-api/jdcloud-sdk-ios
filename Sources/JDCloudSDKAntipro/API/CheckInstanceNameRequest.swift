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

   Instance APIs
   Anti DDoS Protection Package Instance APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  检测实例名称是否可用, 防护包实例名称不可重复
@objc(CheckInstanceNameRequest)
public class CheckInstanceNameRequest:JdCloudRequest
{
    /// 待检测实例名称, 长度限制为 1-80 个字符, 只允许包含中文, 字母, 数字, -, ., /, _
    var instanceName:String


    public init(regionId: String,instanceName:String){
        self.instanceName = instanceName
        super.init(regionId: regionId)
    }


    enum CheckInstanceNameRequestRequestCodingKeys: String, CodingKey {
        case instanceName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CheckInstanceNameRequestRequestCodingKeys.self)
        try encoderContainer.encode(instanceName, forKey: .instanceName)

    }
}
