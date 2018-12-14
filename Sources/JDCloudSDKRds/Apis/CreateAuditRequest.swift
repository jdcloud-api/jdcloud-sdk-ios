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

   审计管理
   审计管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  开启SQL Server的数据库审计功能，目前支持实例级的数据库审计。用户可以根据需要开启、关闭审计、自定义审计策略，并下载审计文件。审计文件为原生的SQL Server审计文件，缺省保存6个月。&lt;br&gt;- 仅支持SQL Server
public class CreateAuditRequest:JdCloudRequest
{
    /// 要开启的审计选项，各个选项之间用英文逗号或空格进行分割，例如：DATABASE_OBJECT_ACCESS_GROUP,ACKUP_RESTORE_GROU等&lt;br&gt;各个数据库版本支持的审计选项可以通过接口[getAuditOptions](./getAuditOptions.md)获得，各个审计项的具体含义可以参看微软的官方文档
    var enabled:String

    /// RDS 实例ID，唯一标识一个RDS实例
    var instanceId:String


    public init(regionId: String,enabled:String,instanceId:String){
        self.enabled = enabled
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum CreateAuditRequestRequestCodingKeys: String, CodingKey {
        case enabled
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateAuditRequestRequestCodingKeys.self)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(instanceId, forKey: .instanceId)

    }
}