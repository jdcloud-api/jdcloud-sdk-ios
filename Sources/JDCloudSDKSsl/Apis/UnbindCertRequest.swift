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

   JDCLOUD SSL数字证书 API
   SSL数字证书相关信息接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  解除关联证书
public class UnbindCertRequest:JdCloudRequest
{
    /// 绑定来源
    var bindFrom:String

    /// 绑定Id
    var bindId:String

    /// 证书Id
    var certId:String


    public init(regionId: String,bindFrom:String,bindId:String,certId:String){
        self.bindFrom = bindFrom
        self.bindId = bindId
        self.certId = certId
        super.init(regionId: regionId)
    }


    enum UnbindCertRequestRequestCodingKeys: String, CodingKey {
        case bindFrom
        case bindId
        case certId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: UnbindCertRequestRequestCodingKeys.self)
        try container.encode(bindFrom, forKey: .bindFrom)
        try container.encode(bindId, forKey: .bindId)
        try container.encode(certId, forKey: .certId)

    }
}
