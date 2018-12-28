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

   JCloud Openapi For CDN
   Openapi For JCLOUD cdn

   OpenAPI spec version: v1
   Contact: pid-cdn@jd.com

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  设置userAgent信息
@objc(SetUserAgentConfigRequest)
public class SetUserAgentConfigRequest:JdCloudRequest
{
    /// userAgent类型,取值：block（黑名单）,allow（白名单）,默认为block
    var userAgentType:String?

    /// UA列表,如果userAgentList为空,则为全部删除
    var userAgentList:[String?]?

    /// 用户域名
    var domain:String


    public init(regionId: String,domain:String){
        self.domain = domain
        super.init(regionId: regionId)
    }


    enum SetUserAgentConfigRequestRequestCodingKeys: String, CodingKey {
        case userAgentType
        case userAgentList
        case domain
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetUserAgentConfigRequestRequestCodingKeys.self)
        try encoderContainer.encode(userAgentType, forKey: .userAgentType)
        try encoderContainer.encode(userAgentList, forKey: .userAgentList)
        try encoderContainer.encode(domain, forKey: .domain)

    }
}
