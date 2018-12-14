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

   Function
   提供与function绑定、查询API接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  funciton解绑api
public class UnbindApiRequest:JdCloudRequest
{
    /// 接口ID
    var apiId:String

    /// 函数ID
    var functionId:String


    public init(regionId: String,apiId:String,functionId:String){
        self.apiId = apiId
        self.functionId = functionId
        super.init(regionId: regionId)
    }


    enum UnbindApiRequestRequestCodingKeys: String, CodingKey {
        case apiId
        case functionId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: UnbindApiRequestRequestCodingKeys.self)
        try container.encode(apiId, forKey: .apiId)
        try container.encode(functionId, forKey: .functionId)

    }
}
