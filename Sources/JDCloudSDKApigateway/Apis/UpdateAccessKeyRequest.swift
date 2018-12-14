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

   API调用者密钥
   关于API调用者密钥操作的相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  更新密钥
public class UpdateAccessKeyRequest:JdCloudRequest
{
    /// 描述
    var description:String?

    /// 密钥类型
    var accessKeyType:String?

    /// Access Key
    var accessKey:String?

    /// access key id
    var accessKeyId:String


    public init(regionId: String,accessKeyId:String){
        self.accessKeyId = accessKeyId
        super.init(regionId: regionId)
    }


    enum UpdateAccessKeyRequestRequestCodingKeys: String, CodingKey {
        case description
        case accessKeyType
        case accessKey
        case accessKeyId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: UpdateAccessKeyRequestRequestCodingKeys.self)
        try container.encode(description, forKey: .description)
        try container.encode(accessKeyType, forKey: .accessKeyType)
        try container.encode(accessKey, forKey: .accessKey)
        try container.encode(accessKeyId, forKey: .accessKeyId)

    }
}
