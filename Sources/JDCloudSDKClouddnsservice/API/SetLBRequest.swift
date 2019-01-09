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
@objc(SetLBRequest)
public class SetLBRequest:JdCloudRequest
{
    /// 要设置解析记录的权重参数列表
    var idWeights:[Setlb?]?

    /// 这几条解析记录的类型。可以设置权重的类型有：A、AAAA、CNAME、JNAME
    var type:String

    /// 域名ID，请使用getDomains接口获取。
    var domainId:String


    public init(regionId: String,idWeights:[Setlb?]?,type:String,domainId:String){
        self.idWeights = idWeights
        self.type = type
        self.domainId = domainId
        super.init(regionId: regionId)
    }


    enum SetLBRequestRequestCodingKeys: String, CodingKey {
        case idWeights
        case type
        case domainId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetLBRequestRequestCodingKeys.self)
        try encoderContainer.encode(idWeights, forKey: .idWeights)
        try encoderContainer.encode(type, forKey: .type)
        try encoderContainer.encode(domainId, forKey: .domainId)

    }
}
