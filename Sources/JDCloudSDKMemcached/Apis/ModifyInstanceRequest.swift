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

   Memcached接口
   Memcached实例相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改实例属性
public class ModifyInstanceRequest:JdCloudRequest
{
    /// 实例名称，如果未修改可以不带这个参数
    var instanceName:String?

    /// 实例描述，如果未修改可以不带这个参数
    var instanceDescription:String?

    /// 认证方式（true：需要认证，false：免密），如果未修改可以不带这个参数
    var mcAuth:Bool?

    /// 密码，如果未修改可以不带这个参数，修改密码时必须携带mcAuth
    var mcPswd:String?

    /// 实例ID
    var instanceId:String


    public init(regionId: String,instanceId:String){
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum ModifyInstanceRequestRequestCodingKeys: String, CodingKey {
        case instanceName
        case instanceDescription
        case mcAuth
        case mcPswd
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyInstanceRequestRequestCodingKeys.self)
        try container.encode(instanceName, forKey: .instanceName)
        try container.encode(instanceDescription, forKey: .instanceDescription)
        try container.encode(mcAuth, forKey: .mcAuth)
        try container.encode(mcPswd, forKey: .mcPswd)
        try container.encode(instanceId, forKey: .instanceId)

    }
}