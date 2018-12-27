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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  getSecurityTokenInfo
@objc(GetSecurityTokenInfo)
public class GetSecurityTokenInfo:NSObject,Codable{
    /// 操作保护验证方式：1-短信,2-邮箱,3-MFA
    /// Required:true
    var type:Int
    /// 验证码
    /// Required:true
    var code:String
    /// 操作action serviceName:actionName
    /// Required:true
    var action:String
    /// 令牌有效期，单位秒，OpenAPI第三方MFA方式验证有效，默认短信、邮箱token有效期300秒，MFA有效期30秒
    var durationSeconds:Int?



    public  init(type:Int,code:String,action:String){
             self.type = type
             self.code = code
             self.action = action
    }

    enum GetSecurityTokenInfoCodingKeys: String, CodingKey {
        case type
        case code
        case action
        case durationSeconds
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetSecurityTokenInfoCodingKeys.self)
        self.type = try decoderContainer.decode(Int.self, forKey: .type)
        self.code = try decoderContainer.decode(String.self, forKey: .code)
        self.action = try decoderContainer.decode(String.self, forKey: .action)
        self.durationSeconds = try decoderContainer.decode(Int?.self, forKey: .durationSeconds)
    }
}
public extension GetSecurityTokenInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetSecurityTokenInfoCodingKeys.self)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(code, forKey: .code)
         try encoderContainer.encode(action, forKey: .action)
         try encoderContainer.encode(durationSeconds, forKey: .durationSeconds)
    }
}