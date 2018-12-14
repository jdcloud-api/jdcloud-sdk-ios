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

   域名诊断
   云解析OpenAPI域名诊断接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询域名的whois信息
public class GetWhoisRequest:JdCloudRequest
{
    /// 要查询的域名
    var domain:String


    public init(regionId: String,domain:String){
        self.domain = domain
        super.init(regionId: regionId)
    }


    enum GetWhoisRequestRequestCodingKeys: String, CodingKey {
        case domain
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: GetWhoisRequestRequestCodingKeys.self)
        try container.encode(domain, forKey: .domain)

    }
}
