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


///  根据源实例全量备份创建一个新实例，新实例的数据跟源实例在创建备份时的数据状态一样。&lt;br&gt;例如根据源实例A的一个全量备份“mybak”新建一个实例B，该备份是在“‘2018-8-18 03:23:54”创建的。那么新建实例B的数据状态跟实例A‘2018-8-18 03:23:54’的状态一致&lt;br&gt;- 仅支持MySQL
public class CreateInstanceFromBackupRequest:JdCloudRequest
{
    /// 备份ID
    var backupId:String

    /// 标识是创建什么类型的实例，例如MySQL，SQL Server等,具体可参见文档[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)&lt;br&gt;**注意：备份来源实例的engine和要创建的实例的engine必须一致**
    var engine:String

    /// 新建实例规格
    var instanceSpec:RestoredNewDBInstanceSpec


    public init(regionId: String,backupId:String,engine:String,instanceSpec:RestoredNewDBInstanceSpec){
        self.backupId = backupId
        self.engine = engine
        self.instanceSpec = instanceSpec
        super.init(regionId: regionId)
    }


    enum CreateInstanceFromBackupRequestRequestCodingKeys: String, CodingKey {
        case backupId
        case engine
        case instanceSpec
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateInstanceFromBackupRequestRequestCodingKeys.self)
        try container.encode(backupId, forKey: .backupId)
        try container.encode(engine, forKey: .engine)
        try container.encode(instanceSpec, forKey: .instanceSpec)

    }
}
