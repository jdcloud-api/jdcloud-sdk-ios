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


///  删除主域名
public class DelDomainRequest:JdCloudRequest
{
    /// 需要删除的域名ID
    var domainId:Int


    public init(regionId: String,domainId:Int){
        self.domainId = domainId
        super.init(regionId: regionId)
    }


    enum DelDomainRequestRequestCodingKeys: String, CodingKey {
        case domainId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DelDomainRequestRequestCodingKeys.self)
        try container.encode(domainId, forKey: .domainId)

    }
}
