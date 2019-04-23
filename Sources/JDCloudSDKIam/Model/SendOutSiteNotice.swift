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

///  sendOutSiteNotice
@objc(SendOutSiteNotice)
public class SendOutSiteNotice:NSObject,Codable{
    /// 用户pin
    /// Required:true
    var pin:String
    /// 邮件标题
    var emailSubject:String?
    /// 邮件内容
    var emailContent:String?
    /// 消息类型
    /// Required:true
    var notifyBusinessTypeEnum:String
    /// 模版code
    /// Required:true
    var templateId:Int
    /// 模版参数
    /// Required:true
    var templateParam:[String?]
    /// 业务编码(和产品申请)
    /// Required:true
    var smsMessageSource:String



    public  init(pin:String,notifyBusinessTypeEnum:String,templateId:Int,templateParam:[String?],smsMessageSource:String){
             self.pin = pin
             self.notifyBusinessTypeEnum = notifyBusinessTypeEnum
             self.templateId = templateId
             self.templateParam = templateParam
             self.smsMessageSource = smsMessageSource
    }

    enum SendOutSiteNoticeCodingKeys: String, CodingKey {
        case pin
        case emailSubject
        case emailContent
        case notifyBusinessTypeEnum
        case templateId
        case templateParam
        case smsMessageSource
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SendOutSiteNoticeCodingKeys.self)
        self.pin = try decoderContainer.decode(String.self, forKey: .pin)
        if decoderContainer.contains(.emailSubject)
        {
            self.emailSubject = try decoderContainer.decode(String?.self, forKey: .emailSubject)
        }
        if decoderContainer.contains(.emailContent)
        {
            self.emailContent = try decoderContainer.decode(String?.self, forKey: .emailContent)
        }
        self.notifyBusinessTypeEnum = try decoderContainer.decode(String.self, forKey: .notifyBusinessTypeEnum)
        self.templateId = try decoderContainer.decode(Int.self, forKey: .templateId)
        self.templateParam = try decoderContainer.decode([String?].self, forKey: .templateParam)
        self.smsMessageSource = try decoderContainer.decode(String.self, forKey: .smsMessageSource)
    }
}
public extension SendOutSiteNotice{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SendOutSiteNoticeCodingKeys.self)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(emailSubject, forKey: .emailSubject)
         try encoderContainer.encode(emailContent, forKey: .emailContent)
         try encoderContainer.encode(notifyBusinessTypeEnum, forKey: .notifyBusinessTypeEnum)
         try encoderContainer.encode(templateId, forKey: .templateId)
         try encoderContainer.encode(templateParam, forKey: .templateParam)
         try encoderContainer.encode(smsMessageSource, forKey: .smsMessageSource)
    }
}
