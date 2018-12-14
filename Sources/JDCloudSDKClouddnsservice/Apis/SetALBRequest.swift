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

   解析记录
   云解析OpenAPI解析记录接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  设置域名解析记录的负载均衡
public class SetALBRequest:JdCloudRequest
{
    /// setALB的权重参数列表
    var idWeights:Setalb?

    /// 域名ID，请使用getDomains接口获取。
    var domainId:String


    public init(regionId: String,idWeights:Setalb?,domainId:String){
        self.idWeights = idWeights
        self.domainId = domainId
        super.init(regionId: regionId)
    }


    enum SetALBRequestRequestCodingKeys: String, CodingKey {
        case idWeights
        case domainId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: SetALBRequestRequestCodingKeys.self)
        try container.encode(idWeights, forKey: .idWeights)
        try container.encode(domainId, forKey: .domainId)

    }
}
