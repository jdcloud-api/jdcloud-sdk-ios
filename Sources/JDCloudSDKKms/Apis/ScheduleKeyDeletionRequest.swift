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

   JDCLOUD 密钥管理服务(Key Management Service) API
   基于硬件保护密钥的安全数据托管服务

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  计划在以后的是个时间点删除密钥，默认为7天
public class ScheduleKeyDeletionRequest:JdCloudRequest
{
    /// 延迟删除时间，单位（天），默认为7天；支持时间范围：7~30天
    var delayDays:Int?

    /// 密钥ID
    var keyId:String


    public init(regionId: String,keyId:String){
        self.keyId = keyId
        super.init(regionId: regionId)
    }


    enum ScheduleKeyDeletionRequestRequestCodingKeys: String, CodingKey {
        case delayDays
        case keyId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ScheduleKeyDeletionRequestRequestCodingKeys.self)
        try container.encode(delayDays, forKey: .delayDays)
        try container.encode(keyId, forKey: .keyId)

    }
}
