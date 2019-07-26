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

   Domain Management
   域名管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  删除域名头参数请求
@objc(DeleteHeaderRequestObject)
public class DeleteHeaderRequestObject:NSObject,Codable{
    /// 头参数名。当前支持的访问头参数取值范围：
      ///   Content-Disposition
      ///   Content-Language
      ///   Expires
      ///   Access-Control-Allow-Origin
      ///   Access-Control-Allow-Methods
      ///   Access-Control-Max-Age
      ///   Access-Control-Expose-Headers
      /// 
    /// Required:true
    var headerName:String
    /// 头参数类型，取值范围：req、resp
    /// Required:true
    var headerType:String



    public  init(headerName:String,headerType:String){
             self.headerName = headerName
             self.headerType = headerType
    }

    enum DeleteHeaderRequestObjectCodingKeys: String, CodingKey {
        case headerName
        case headerType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeleteHeaderRequestObjectCodingKeys.self)
        self.headerName = try decoderContainer.decode(String.self, forKey: .headerName)
        self.headerType = try decoderContainer.decode(String.self, forKey: .headerType)
    }
}
public extension DeleteHeaderRequestObject{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteHeaderRequestObjectCodingKeys.self)
         try encoderContainer.encode(headerName, forKey: .headerName)
         try encoderContainer.encode(headerType, forKey: .headerType)
    }
}
