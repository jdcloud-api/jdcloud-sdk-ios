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


///  查询域名组接口
@objc(QueryDomainGroupListRequest)
public class QueryDomainGroupListRequest:JdCloudRequest
{
    /// 根据是否共享内存筛选
    var shareCache:String?

    /// pageNumber
    var pageNumber:Int32?

    /// pageSize
    var pageSize:Int32?

    /// 根据主域名模糊查询
    var primaryDomain:String?

    /// 根据域名组模糊查询
    var domainGroupName:String?




    enum QueryDomainGroupListRequestRequestCodingKeys: String, CodingKey {
        case shareCache
        case pageNumber
        case pageSize
        case primaryDomain
        case domainGroupName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryDomainGroupListRequestRequestCodingKeys.self)
        try encoderContainer.encode(shareCache, forKey: .shareCache)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(primaryDomain, forKey: .primaryDomain)
        try encoderContainer.encode(domainGroupName, forKey: .domainGroupName)

    }
}