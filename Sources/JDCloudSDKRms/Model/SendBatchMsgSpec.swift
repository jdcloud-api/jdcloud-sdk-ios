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

///  sendBatchMsgSpec
@objc(SendBatchMsgSpec)
public class SendBatchMsgSpec:NSObject,Codable{
    /// 应用Id
    /// Required:true
    var appId:String
    /// 短信Id
    /// Required:true
    var messageId:String
    /// 群发的国内电话号码,群发时一次最多不要超过100个手机号
    /// Required:true
    var phone:[String?]
    /// 短信模板变量对应的数据值,Array格式
    var params:[String?]?



    public  init(appId:String,messageId:String,phone:[String?]){
             self.appId = appId
             self.messageId = messageId
             self.phone = phone
    }

    enum SendBatchMsgSpecCodingKeys: String, CodingKey {
        case appId
        case messageId
        case phone
        case params
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SendBatchMsgSpecCodingKeys.self)
        self.appId = try decoderContainer.decode(String.self, forKey: .appId)
        self.messageId = try decoderContainer.decode(String.self, forKey: .messageId)
        self.phone = try decoderContainer.decode([String?].self, forKey: .phone)
        if decoderContainer.contains(.params)
        {
            self.params = try decoderContainer.decode([String?]?.self, forKey: .params)
        }
    }
}
public extension SendBatchMsgSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SendBatchMsgSpecCodingKeys.self)
         try encoderContainer.encode(appId, forKey: .appId)
         try encoderContainer.encode(messageId, forKey: .messageId)
         try encoderContainer.encode(phone, forKey: .phone)
         try encoderContainer.encode(params, forKey: .params)
    }
}