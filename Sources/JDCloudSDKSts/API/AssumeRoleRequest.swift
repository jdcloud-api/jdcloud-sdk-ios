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

   Security Token Service
   Security Token Service API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  扮演用户角色，获取临时凭证
@objc(AssumeRoleRequest)
public class AssumeRoleRequest:JdCloudRequest
{
    /// 扮演角色参数
    var assumeRoleInfo:AssumeRoleInfo


    public init(regionId: String,assumeRoleInfo:AssumeRoleInfo){
        self.assumeRoleInfo = assumeRoleInfo
        super.init(regionId: regionId)
    }


    enum AssumeRoleRequestRequestCodingKeys: String, CodingKey {
        case assumeRoleInfo
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AssumeRoleRequestRequestCodingKeys.self)
        try encoderContainer.encode(assumeRoleInfo, forKey: .assumeRoleInfo)

    }
}