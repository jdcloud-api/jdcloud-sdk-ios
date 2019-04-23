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

   Permission
   Topic 授权相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  删除当前topic对目标用户授权的权限
@objc(RemovePermissionRequest)
public class RemovePermissionRequest:JdCloudRequest
{
    /// 权限类型, [PUB, SUB, PUBSUB]
    var permission:String

    /// 目标用户UserId
    var targetUserId:String

    /// topic 名称
    var topicName:String


    public init(regionId: String,permission:String,targetUserId:String,topicName:String){
        self.permission = permission
        self.targetUserId = targetUserId
        self.topicName = topicName
        super.init(regionId: regionId)
    }


    enum RemovePermissionRequestRequestCodingKeys: String, CodingKey {
        case permission
        case targetUserId
        case topicName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RemovePermissionRequestRequestCodingKeys.self)
        try encoderContainer.encode(permission, forKey: .permission)
        try encoderContainer.encode(targetUserId, forKey: .targetUserId)
        try encoderContainer.encode(topicName, forKey: .topicName)

    }
}