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

   Deployment
   与Deployment相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询应用记录详细信息
@objc(GetDeploymentsVersionRequest)
public class GetDeploymentsVersionRequest:JdCloudRequest
{
    /// deployment ID
    var id:String

    /// application ID
    var version_id:String


    public init(regionId: String,id:String,version_id:String){
        self.id = id
        self.version_id = version_id
        super.init(regionId: regionId)
    }


    enum GetDeploymentsVersionRequestRequestCodingKeys: String, CodingKey {
        case id
        case version_id
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetDeploymentsVersionRequestRequestCodingKeys.self)
        try encoderContainer.encode(id, forKey: .id)
        try encoderContainer.encode(version_id, forKey: .version_id)

    }
}
