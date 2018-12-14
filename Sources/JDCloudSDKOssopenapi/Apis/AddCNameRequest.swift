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

   自定义域名openAPI
   自定义域名openAPI

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  添加自定义域名
public class AddCNameRequest:JdCloudRequest
{
    /// 自定义域名
    var cname:String

    /// http版本，0：http，1：https
    var protoType:Int?

    /// 域名
    var endPoint:String

    /// 是否拦截内部域名添，任意值跳过拦截
    var `internal`:String?

    /// Bucket名称
    var bucketName:String


    public init(regionId: String,cname:String,endPoint:String,bucketName:String){
        self.cname = cname
        self.endPoint = endPoint
        self.bucketName = bucketName
        super.init(regionId: regionId)
    }


    enum AddCNameRequestRequestCodingKeys: String, CodingKey {
        case cname
        case protoType
        case endPoint
        case `internal` = "internal"
        case bucketName
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: AddCNameRequestRequestCodingKeys.self)
        try container.encode(cname, forKey: .cname)
        try container.encode(protoType, forKey: .protoType)
        try container.encode(endPoint, forKey: .endPoint)
        try container.encode(`internal`, forKey: .`internal`)
        try container.encode(bucketName, forKey: .bucketName)

    }
}