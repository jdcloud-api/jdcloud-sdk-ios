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

   网站监控
   云解析OpenAPI网站监控接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  监控项的操作集合，包括：删除，暂停，启动, 手动恢复, 手动切换
public class OperateMonitorRequest:JdCloudRequest
{
    /// 删除del, 暂停stop, 开启start, 手动恢复recover，手动切换switch
    var action:String

    /// 监控项ID
    var ids:Int?

    /// 监控项的主机值, 手动切换时必填
    var switchTarget:String?

    /// 域名ID，请使用getDomains接口获取。
    var domainId:String


    public init(regionId: String,action:String,ids:Int?,domainId:String){
        self.action = action
        self.ids = ids
        self.domainId = domainId
        super.init(regionId: regionId)
    }


    enum OperateMonitorRequestRequestCodingKeys: String, CodingKey {
        case action
        case ids
        case switchTarget
        case domainId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: OperateMonitorRequestRequestCodingKeys.self)
        try container.encode(action, forKey: .action)
        try container.encode(ids, forKey: .ids)
        try container.encode(switchTarget, forKey: .switchTarget)
        try container.encode(domainId, forKey: .domainId)

    }
}
