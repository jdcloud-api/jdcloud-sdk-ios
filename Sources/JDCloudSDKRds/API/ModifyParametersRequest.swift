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

   参数管理
   参数配置相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改SQL Server数实例的配置参数。 部分参数修改后，需要重启才能生效，具体可以参考微软的相关文档&lt;br&gt;- 仅支持SQL Server
@objc(ModifyParametersRequest)
public class ModifyParametersRequest:JdCloudRequest
{
    /// 修改的实例参数
    var parameters:[Parameter?]?

    /// Instance ID
    var instanceId:String


    public init(regionId: String,parameters:[Parameter?]?,instanceId:String){
        self.parameters = parameters
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum ModifyParametersRequestRequestCodingKeys: String, CodingKey {
        case parameters
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyParametersRequestRequestCodingKeys.self)
        try encoderContainer.encode(parameters, forKey: .parameters)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
