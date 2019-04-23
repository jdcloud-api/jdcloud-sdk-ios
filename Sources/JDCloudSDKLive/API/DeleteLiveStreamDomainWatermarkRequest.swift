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

   Live-Video
   直播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  删除域名级别水印模板配置
      ///       /// - 删除域名级别水印模板配置,重新推流后生效
      ///       /// 
@objc(DeleteLiveStreamDomainWatermarkRequest)
public class DeleteLiveStreamDomainWatermarkRequest:JdCloudRequest
{
    /// 推流域名
    var publishDomain:String

    /// 水印模板
      /// 
    var template:String


    public init(regionId: String,publishDomain:String,template:String){
        self.publishDomain = publishDomain
        self.template = template
        super.init(regionId: regionId)
    }


    enum DeleteLiveStreamDomainWatermarkRequestRequestCodingKeys: String, CodingKey {
        case publishDomain
        case template
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteLiveStreamDomainWatermarkRequestRequestCodingKeys.self)
        try encoderContainer.encode(publishDomain, forKey: .publishDomain)
        try encoderContainer.encode(template, forKey: .template)

    }
}
