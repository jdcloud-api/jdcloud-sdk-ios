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

   kms
   key manager service

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  删除key接口
public class KmsDeleteKeysRequest:JdCloudRequest
{
    /// 要删除key的ID集合，以,分隔
    var keyIds:String

    /// 用户id
    var userId:String


    public init(regionId: String,keyIds:String,userId:String){
        self.keyIds = keyIds
        self.userId = userId
        super.init(regionId: regionId)
    }


    enum KmsDeleteKeysRequestRequestCodingKeys: String, CodingKey {
        case keyIds
        case userId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: KmsDeleteKeysRequestRequestCodingKeys.self)
        try container.encode(keyIds, forKey: .keyIds)
        try container.encode(userId, forKey: .userId)

    }
}
