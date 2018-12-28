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


///  删除缓存规则
@objc(DeleteCacheRuleRequest)
public class DeleteCacheRuleRequest:JdCloudRequest
{
    /// 缓存规则id
    var configId:Int64?

    /// 用户域名
    var domain:String


    public init(regionId: String,domain:String){
        self.domain = domain
        super.init(regionId: regionId)
    }


    enum DeleteCacheRuleRequestRequestCodingKeys: String, CodingKey {
        case configId
        case domain
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteCacheRuleRequestRequestCodingKeys.self)
        try encoderContainer.encode(configId, forKey: .configId)
        try encoderContainer.encode(domain, forKey: .domain)

    }
}
