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


///  恢复直播流推送
@objc(ResumeLiveStreamRequest)
public class ResumeLiveStreamRequest:JdCloudRequest
{
    /// 应用名称
    var appName:String

    /// 您的加速域名
    var publishDomain:String

    /// 流名称
    var streamName:String


    public init(regionId: String,appName:String,publishDomain:String,streamName:String){
        self.appName = appName
        self.publishDomain = publishDomain
        self.streamName = streamName
        super.init(regionId: regionId)
    }


    enum ResumeLiveStreamRequestRequestCodingKeys: String, CodingKey {
        case appName
        case publishDomain
        case streamName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResumeLiveStreamRequestRequestCodingKeys.self)
        try encoderContainer.encode(appName, forKey: .appName)
        try encoderContainer.encode(publishDomain, forKey: .publishDomain)
        try encoderContainer.encode(streamName, forKey: .streamName)

    }
}
