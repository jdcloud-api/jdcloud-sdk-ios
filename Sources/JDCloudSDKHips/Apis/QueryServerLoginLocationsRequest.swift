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

   JDCLOUD 主机信息 API
   主机相关信息接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询常用登录地
public class QueryServerLoginLocationsRequest:JdCloudRequest
{
    /// ServerId
    var serverId:String


    public init(regionId: String,serverId:String){
        self.serverId = serverId
        super.init(regionId: regionId)
    }


    enum QueryServerLoginLocationsRequestRequestCodingKeys: String, CodingKey {
        case serverId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: QueryServerLoginLocationsRequestRequestCodingKeys.self)
        try container.encode(serverId, forKey: .serverId)

    }
}