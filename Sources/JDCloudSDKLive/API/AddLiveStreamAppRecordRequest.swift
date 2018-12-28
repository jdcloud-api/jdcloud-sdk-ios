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


///  添加APP录制配置
@objc(AddLiveStreamAppRecordRequest)
public class AddLiveStreamAppRecordRequest:JdCloudRequest
{
    /// 直播流所属应用名称
    var appName:String

    /// 您的推流加速域名
    var publishDomain:String

    /// 录制模版
    var template:String


    public init(regionId: String,appName:String,publishDomain:String,template:String){
        self.appName = appName
        self.publishDomain = publishDomain
        self.template = template
        super.init(regionId: regionId)
    }


    enum AddLiveStreamAppRecordRequestRequestCodingKeys: String, CodingKey {
        case appName
        case publishDomain
        case template
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddLiveStreamAppRecordRequestRequestCodingKeys.self)
        try encoderContainer.encode(appName, forKey: .appName)
        try encoderContainer.encode(publishDomain, forKey: .publishDomain)
        try encoderContainer.encode(template, forKey: .template)

    }
}
