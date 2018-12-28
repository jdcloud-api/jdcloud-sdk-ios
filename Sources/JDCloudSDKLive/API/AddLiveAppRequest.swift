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


///  添加直播APP
@objc(AddLiveAppRequest)
public class AddLiveAppRequest:JdCloudRequest
{
    /// 直播的推流域名
    var publishDomain:String

    /// appName
    var appName:String


    public init(regionId: String,publishDomain:String,appName:String){
        self.publishDomain = publishDomain
        self.appName = appName
        super.init(regionId: regionId)
    }


    enum AddLiveAppRequestRequestCodingKeys: String, CodingKey {
        case publishDomain
        case appName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddLiveAppRequestRequestCodingKeys.self)
        try encoderContainer.encode(publishDomain, forKey: .publishDomain)
        try encoderContainer.encode(appName, forKey: .appName)

    }
}
