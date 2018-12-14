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

   域名
   云解析OpenAPI域名接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查看域名的解析次数
public class GetDomainQueryCountRequest:JdCloudRequest
{
    /// 查询的域名
    var domainName:String

    /// 起始时间, UTC时间例如2017-11-10T23:00:00Z
    var start:String

    /// 终止时间, UTC时间例如2017-11-10T23:00:00Z
    var end:String

    /// 域名ID，请使用getDomains接口获取。
    var domainId:String


    public init(regionId: String,domainName:String,start:String,end:String,domainId:String){
        self.domainName = domainName
        self.start = start
        self.end = end
        self.domainId = domainId
        super.init(regionId: regionId)
    }


    enum GetDomainQueryCountRequestRequestCodingKeys: String, CodingKey {
        case domainName
        case start
        case end
        case domainId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: GetDomainQueryCountRequestRequestCodingKeys.self)
        try container.encode(domainName, forKey: .domainName)
        try container.encode(start, forKey: .start)
        try container.encode(end, forKey: .end)
        try container.encode(domainId, forKey: .domainId)

    }
}
