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

   缓存Redis实例接口
   缓存Redis实例相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  备份恢复redis实例，根据某次备份操作来恢复redis实例
public class RestoreInstanceRequest:JdCloudRequest
{
    /// 备份操作ID，根据此次备份操作来恢复redis实例
    var baseId:String

    /// 缓存Redis实例ID，是访问实例的唯一标识。
    var cacheInstanceId:String


    public init(regionId: String,baseId:String,cacheInstanceId:String){
        self.baseId = baseId
        self.cacheInstanceId = cacheInstanceId
        super.init(regionId: regionId)
    }


    enum RestoreInstanceRequestRequestCodingKeys: String, CodingKey {
        case baseId
        case cacheInstanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: RestoreInstanceRequestRequestCodingKeys.self)
        try container.encode(baseId, forKey: .baseId)
        try container.encode(cacheInstanceId, forKey: .cacheInstanceId)

    }
}
