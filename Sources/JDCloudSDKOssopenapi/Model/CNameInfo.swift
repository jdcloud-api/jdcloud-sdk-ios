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

   custom domain name openapi
   custom domain name openapi

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  cNameInfo
@objc(CNameInfo)
public class CNameInfo:NSObject,Codable{
    /// 自定义域名
    /// Required:true
    var cname:String
    /// http版本，0：http，1：https
    var protoType:Int?
    /// 域名
    /// Required:true
    var endPoint:String
    /// 是否拦截内部域名添，任意值跳过拦截
    var internalValue:String?



    public  init(cname:String,endPoint:String){
             self.cname = cname
             self.endPoint = endPoint
    }

    enum CNameInfoCodingKeys: String, CodingKey {
        case cname
        case protoType
        case endPoint
        case internalValue = "internal"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CNameInfoCodingKeys.self)
        self.cname = try decoderContainer.decode(String.self, forKey: .cname)
        if decoderContainer.contains(.protoType)
        {
            self.protoType = try decoderContainer.decode(Int?.self, forKey: .protoType)
        }
        self.endPoint = try decoderContainer.decode(String.self, forKey: .endPoint)
        if decoderContainer.contains(.internalValue)
        {
            self.internalValue = try decoderContainer.decode(String?.self, forKey: .internalValue)
        }
    }
}
public extension CNameInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CNameInfoCodingKeys.self)
         try encoderContainer.encode(cname, forKey: .cname)
         try encoderContainer.encode(protoType, forKey: .protoType)
         try encoderContainer.encode(endPoint, forKey: .endPoint)
         try encoderContainer.encode(internalValue, forKey: .internalValue)
    }
}