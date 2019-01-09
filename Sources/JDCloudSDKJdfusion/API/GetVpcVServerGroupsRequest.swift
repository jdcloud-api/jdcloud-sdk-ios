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

   Vpc-VserverGroup
   与服务器组相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  根据过滤条件，取得服务器组的信息
@objc(GetVpcVServerGroupsRequest)
public class GetVpcVServerGroupsRequest:JdCloudRequest
{
    /// 负载均衡id
    var slbid:String?




    enum GetVpcVServerGroupsRequestRequestCodingKeys: String, CodingKey {
        case slbid
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetVpcVServerGroupsRequestRequestCodingKeys.self)
        try encoderContainer.encode(slbid, forKey: .slbid)

    }
}