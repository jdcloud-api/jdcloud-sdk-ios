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

   实例管理相关接口
   API related to waf instance

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  提交订单
public class SubmitNewOrderRequest:JdCloudRequest
{
    /// 创建实例所需基本信息(名称、绑定的LBId、工作模式、工作状态)。
    var instance:WafInstance


    public init(regionId: String,instance:WafInstance){
        self.instance = instance
        super.init(regionId: regionId)
    }


    enum SubmitNewOrderRequestRequestCodingKeys: String, CodingKey {
        case instance
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: SubmitNewOrderRequestRequestCodingKeys.self)
        try container.encode(instance, forKey: .instance)

    }
}
