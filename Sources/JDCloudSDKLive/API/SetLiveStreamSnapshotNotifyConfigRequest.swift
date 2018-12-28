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

   Live API
   直播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  设置截图回调通知
@objc(SetLiveStreamSnapshotNotifyConfigRequest)
public class SetLiveStreamSnapshotNotifyConfigRequest:JdCloudRequest
{
    /// 您的推流加速域名
    var publishDomain:String

    /// 设置直播流信息推送到的 URL 地址
    var notifyUrl:String


    public init(regionId: String,publishDomain:String,notifyUrl:String){
        self.publishDomain = publishDomain
        self.notifyUrl = notifyUrl
        super.init(regionId: regionId)
    }


    enum SetLiveStreamSnapshotNotifyConfigRequestRequestCodingKeys: String, CodingKey {
        case publishDomain
        case notifyUrl
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetLiveStreamSnapshotNotifyConfigRequestRequestCodingKeys.self)
        try encoderContainer.encode(publishDomain, forKey: .publishDomain)
        try encoderContainer.encode(notifyUrl, forKey: .notifyUrl)

    }
}
