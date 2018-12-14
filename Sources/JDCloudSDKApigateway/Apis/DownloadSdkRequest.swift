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

   API分组
   提供API分组的创建、查询、删除、修改等功能。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  下载sdk、文档的生成结果
public class DownloadSdkRequest:JdCloudRequest
{
    /// 修订版本号
    var revision:String?

    /// 部署ID
    var deploymentId:String?

    /// sdk语言：java，python，文档等
    var language:String?

    /// 环境信息：test,preview,online
    var environment:String?

    /// 分组ID
    var apiGroupId:String


    public init(regionId: String,apiGroupId:String){
        self.apiGroupId = apiGroupId
        super.init(regionId: regionId)
    }


    enum DownloadSdkRequestRequestCodingKeys: String, CodingKey {
        case revision
        case deploymentId
        case language
        case environment
        case apiGroupId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DownloadSdkRequestRequestCodingKeys.self)
        try container.encode(revision, forKey: .revision)
        try container.encode(deploymentId, forKey: .deploymentId)
        try container.encode(language, forKey: .language)
        try container.encode(environment, forKey: .environment)
        try container.encode(apiGroupId, forKey: .apiGroupId)

    }
}
