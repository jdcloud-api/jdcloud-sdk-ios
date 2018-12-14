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

   消费管理
   用户中心消费管理API接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询用于在账单展示的资源名称信息
public class GetResourceNameRequest:JdCloudRequest
{
    /// Region
    var region:String?

    /// ServiceCode
    var serviceCode:String?

    /// ResourceId
    var resourceId:String


    public init(regionId: String,resourceId:String){
        self.resourceId = resourceId
        super.init(regionId: regionId)
    }


    enum GetResourceNameRequestRequestCodingKeys: String, CodingKey {
        case region
        case serviceCode
        case resourceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: GetResourceNameRequestRequestCodingKeys.self)
        try container.encode(region, forKey: .region)
        try container.encode(serviceCode, forKey: .serviceCode)
        try container.encode(resourceId, forKey: .resourceId)

    }
}
