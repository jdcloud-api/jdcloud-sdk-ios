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

   API
   关于api操作的相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建API时，检查API名称是否重复,返回重复的apiId,如果没有返回空
public class CheckApiNameExistRequest:JdCloudRequest
{
    /// API名称
    var apiName:String

    /// 分组ID
    var apiGroupId:String

    /// 版本号
    var revision:String


    public init(regionId: String,apiName:String,apiGroupId:String,revision:String){
        self.apiName = apiName
        self.apiGroupId = apiGroupId
        self.revision = revision
        super.init(regionId: regionId)
    }


    enum CheckApiNameExistRequestRequestCodingKeys: String, CodingKey {
        case apiName
        case apiGroupId
        case revision
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CheckApiNameExistRequestRequestCodingKeys.self)
        try container.encode(apiName, forKey: .apiName)
        try container.encode(apiGroupId, forKey: .apiGroupId)
        try container.encode(revision, forKey: .revision)

    }
}
