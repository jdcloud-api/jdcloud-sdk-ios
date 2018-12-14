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

   SiteMonitor APIs
   站点监控相关接口，提供创建、查询、修改、删除站点监控等功能

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  获取站点监控信息
public class GetSiteMonitorRequest:JdCloudRequest
{
    /// Name
    var name:String?

    /// Id
    var id:String?

    /// Type
    var type:String?

    /// PageNumber
    var pageNumber:Int64?

    /// PageSize
    var pageSize:Int64?

    /// WithStats
    var withStats:String?

    /// name为&#39;id&#39; - 站点监控id
    var filters:Filter?




    enum GetSiteMonitorRequestRequestCodingKeys: String, CodingKey {
        case name
        case id
        case type
        case pageNumber
        case pageSize
        case withStats
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: GetSiteMonitorRequestRequestCodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(id, forKey: .id)
        try container.encode(type, forKey: .type)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(withStats, forKey: .withStats)
        try container.encode(filters, forKey: .filters)

    }
}
