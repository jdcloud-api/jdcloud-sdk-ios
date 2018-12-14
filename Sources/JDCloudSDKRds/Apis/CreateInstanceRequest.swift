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
   实例管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建一个RDS实例，用户可以使用相应的数据库客户端或者应用程序通过域名和端口链接到该RDS实例上，进行操作。
public class CreateInstanceRequest:JdCloudRequest
{
    /// 新建实例规格
    var instanceSpec:DBInstanceSpec


    public init(regionId: String,instanceSpec:DBInstanceSpec){
        self.instanceSpec = instanceSpec
        super.init(regionId: regionId)
    }


    enum CreateInstanceRequestRequestCodingKeys: String, CodingKey {
        case instanceSpec
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateInstanceRequestRequestCodingKeys.self)
        try container.encode(instanceSpec, forKey: .instanceSpec)

    }
}
