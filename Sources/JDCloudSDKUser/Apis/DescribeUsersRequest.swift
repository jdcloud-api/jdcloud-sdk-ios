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

   用户中心接口
   用户中心接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  获取用户列表
public class DescribeUsersRequest:JdCloudRequest
{
    /// 用户信息
    var userReqVo:UserReqVo


    public init(regionId: String,userReqVo:UserReqVo){
        self.userReqVo = userReqVo
        super.init(regionId: regionId)
    }


    enum DescribeUsersRequestRequestCodingKeys: String, CodingKey {
        case userReqVo
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeUsersRequestRequestCodingKeys.self)
        try container.encode(userReqVo, forKey: .userReqVo)

    }
}
