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

   Monitoring Rules APIs
   云监控规则相关接口，提供创建、查询、修改、删除监控规则等功能

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建报警规则，可以为某一个实例创建报警规则，也可以为多个实例同时创建报警规则。
public class CreateAlarmRequest:JdCloudRequest
{
    /// 幂等性校验参数,最长36位
    var clientToken:String

    /// CreateAlarmSpec
    var createAlarmSpec:CreateAlarmParam


    public init(regionId: String,clientToken:String,createAlarmSpec:CreateAlarmParam){
        self.clientToken = clientToken
        self.createAlarmSpec = createAlarmSpec
        super.init(regionId: regionId)
    }


    enum CreateAlarmRequestRequestCodingKeys: String, CodingKey {
        case clientToken
        case createAlarmSpec
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateAlarmRequestRequestCodingKeys.self)
        try container.encode(clientToken, forKey: .clientToken)
        try container.encode(createAlarmSpec, forKey: .createAlarmSpec)

    }
}
