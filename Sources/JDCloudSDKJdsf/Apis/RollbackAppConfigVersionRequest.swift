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

   应用配置发布
   获取发布配置列表，发布配置 ，回滚配置

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  回滚配置版本
public class RollbackAppConfigVersionRequest:JdCloudRequest
{
    /// 要回滚的配置发布信息id
    var appConfigPublishVersionId:Int64


    public init(regionId: String,appConfigPublishVersionId:Int64){
        self.appConfigPublishVersionId = appConfigPublishVersionId
        super.init(regionId: regionId)
    }


    enum RollbackAppConfigVersionRequestRequestCodingKeys: String, CodingKey {
        case appConfigPublishVersionId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: RollbackAppConfigVersionRequestRequestCodingKeys.self)
        try container.encode(appConfigPublishVersionId, forKey: .appConfigPublishVersionId)

    }
}
