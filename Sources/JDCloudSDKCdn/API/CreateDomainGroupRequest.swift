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


///  创建域名组
@objc(CreateDomainGroupRequest)
public class CreateDomainGroupRequest:JdCloudRequest
{
    /// 是否共享内存
    var shareCache:String?

    /// 主域名,开启共享缓存时必传
    var primaryDomain:String?

    /// 域名组名称
    var domainGroupName:String?

    /// 域名组内域名包含主域名
    var domains:[String?]?




    enum CreateDomainGroupRequestRequestCodingKeys: String, CodingKey {
        case shareCache
        case primaryDomain
        case domainGroupName
        case domains
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateDomainGroupRequestRequestCodingKeys.self)
        try encoderContainer.encode(shareCache, forKey: .shareCache)
        try encoderContainer.encode(primaryDomain, forKey: .primaryDomain)
        try encoderContainer.encode(domainGroupName, forKey: .domainGroupName)
        try encoderContainer.encode(domains, forKey: .domains)

    }
}