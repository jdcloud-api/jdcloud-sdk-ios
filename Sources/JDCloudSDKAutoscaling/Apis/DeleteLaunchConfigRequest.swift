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

   启动配置
   弹性伸缩启动配置相关操作接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  删除启动配置
public class DeleteLaunchConfigRequest:JdCloudRequest
{
    /// 启动配置uuid
    var launchConfigUuid:String


    public init(regionId: String,launchConfigUuid:String){
        self.launchConfigUuid = launchConfigUuid
        super.init(regionId: regionId)
    }


    enum DeleteLaunchConfigRequestRequestCodingKeys: String, CodingKey {
        case launchConfigUuid
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DeleteLaunchConfigRequestRequestCodingKeys.self)
        try container.encode(launchConfigUuid, forKey: .launchConfigUuid)

    }
}
