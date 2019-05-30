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

   Domain
   域名管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  设置域名访问头参数
@objc(SetHeaderRequest)
public class SetHeaderRequest:JdCloudRequest
{
    /// 头参数名
    var headerName:String?

    /// 头参数值
    var headerValue:String?

    /// 头参数类型
    var headerType:String?

    /// 域名ID
    var domainId:Int64


    public init(regionId: String,domainId:Int64){
        self.domainId = domainId
        super.init(regionId: regionId)
    }


    enum SetHeaderRequestRequestCodingKeys: String, CodingKey {
        case headerName
        case headerValue
        case headerType
        case domainId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetHeaderRequestRequestCodingKeys.self)
        try encoderContainer.encode(headerName, forKey: .headerName)
        try encoderContainer.encode(headerValue, forKey: .headerValue)
        try encoderContainer.encode(headerType, forKey: .headerType)
        try encoderContainer.encode(domainId, forKey: .domainId)

    }
}
