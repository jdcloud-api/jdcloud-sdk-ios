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

   数据库管理
   数据库管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建数据库
public class CreateDatabaseRequest:JdCloudRequest
{
    /// 新建数据库
    var databaseSpec:DatabaseSpec

    /// 实例ID
    var instanceId:String


    public init(regionId: String,databaseSpec:DatabaseSpec,instanceId:String){
        self.databaseSpec = databaseSpec
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum CreateDatabaseRequestRequestCodingKeys: String, CodingKey {
        case databaseSpec
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateDatabaseRequestRequestCodingKeys.self)
        try container.encode(databaseSpec, forKey: .databaseSpec)
        try container.encode(instanceId, forKey: .instanceId)

    }
}