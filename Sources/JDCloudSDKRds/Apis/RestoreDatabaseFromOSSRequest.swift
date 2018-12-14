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


///  从上传到OSS的备份文件中恢复单个数据库&lt;br&gt;- 仅支持SQL Server
public class RestoreDatabaseFromOSSRequest:JdCloudRequest
{
    /// 用户上传到对象存储OSS上的备份文件的内链
    var ossURL:String

    /// RDS 实例ID，唯一标识一个RDS实例
    var instanceId:String

    /// 库名称
    var dbName:String


    public init(regionId: String,ossURL:String,instanceId:String,dbName:String){
        self.ossURL = ossURL
        self.instanceId = instanceId
        self.dbName = dbName
        super.init(regionId: regionId)
    }


    enum RestoreDatabaseFromOSSRequestRequestCodingKeys: String, CodingKey {
        case ossURL
        case instanceId
        case dbName
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: RestoreDatabaseFromOSSRequestRequestCodingKeys.self)
        try container.encode(ossURL, forKey: .ossURL)
        try container.encode(instanceId, forKey: .instanceId)
        try container.encode(dbName, forKey: .dbName)

    }
}
