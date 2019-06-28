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


///  修改缓存规则
@objc(UpdateCacheRuleRequest)
public class UpdateCacheRuleRequest:JdCloudRequest
{
    /// 此条配置的权重值, 取值范围为1-10,1最大
    var weight:Int32?

    /// 缓存时间,单位秒
    var ttl:Int64?

    /// 规则内容。其他类型只能以/或者.开头，如/a/b或.jpg
    var contents:String?

    /// 缓存方式：0、不缓存，1自定义
    var cacheType:Int32?

    /// 缓存规则配置ID
    var configId:Int64?

    /// 用户域名
    var domain:String


    public init(regionId: String,domain:String){
        self.domain = domain
        super.init(regionId: regionId)
    }


    enum UpdateCacheRuleRequestRequestCodingKeys: String, CodingKey {
        case weight
        case ttl
        case contents
        case cacheType
        case configId
        case domain
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdateCacheRuleRequestRequestCodingKeys.self)
        try encoderContainer.encode(weight, forKey: .weight)
        try encoderContainer.encode(ttl, forKey: .ttl)
        try encoderContainer.encode(contents, forKey: .contents)
        try encoderContainer.encode(cacheType, forKey: .cacheType)
        try encoderContainer.encode(configId, forKey: .configId)
        try encoderContainer.encode(domain, forKey: .domain)

    }
}
