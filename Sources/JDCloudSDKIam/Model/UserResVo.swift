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

///  userResVo
@objc(UserResVo)
public class UserResVo:NSObject,Codable{
    /// 用户pin
    var pin:String?
    /// 用户手机号
    var cscPhone:String?
    /// 用户邮箱
    var cscEmail:String?
    /// 创建时间
    var createTime:String?
    /// 用户类型
    var userType:Int?
    /// 公司名
    var companyName:String?
    /// 姓名
    var name:String?
    /// 欠费时间
    var arrearageTime:String?
    /// 用户标签：
    var userTagObject:Flags?
    /// 用户标签：
    var attachment:UserAttachment?



    public override init(){
            super.init()
    }

    enum UserResVoCodingKeys: String, CodingKey {
        case pin
        case cscPhone
        case cscEmail
        case createTime
        case userType
        case companyName
        case name
        case arrearageTime
        case userTagObject
        case attachment
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: UserResVoCodingKeys.self)
        if decoderContainer.contains(.pin)
        {
            self.pin = try decoderContainer.decode(String?.self, forKey: .pin)
        }
        if decoderContainer.contains(.cscPhone)
        {
            self.cscPhone = try decoderContainer.decode(String?.self, forKey: .cscPhone)
        }
        if decoderContainer.contains(.cscEmail)
        {
            self.cscEmail = try decoderContainer.decode(String?.self, forKey: .cscEmail)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.userType)
        {
            self.userType = try decoderContainer.decode(Int?.self, forKey: .userType)
        }
        if decoderContainer.contains(.companyName)
        {
            self.companyName = try decoderContainer.decode(String?.self, forKey: .companyName)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.arrearageTime)
        {
            self.arrearageTime = try decoderContainer.decode(String?.self, forKey: .arrearageTime)
        }
        if decoderContainer.contains(.userTagObject)
        {
            self.userTagObject = try decoderContainer.decode(Flags?.self, forKey: .userTagObject)
        }
        if decoderContainer.contains(.attachment)
        {
            self.attachment = try decoderContainer.decode(UserAttachment?.self, forKey: .attachment)
        }
    }
}
public extension UserResVo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UserResVoCodingKeys.self)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(cscPhone, forKey: .cscPhone)
         try encoderContainer.encode(cscEmail, forKey: .cscEmail)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(userType, forKey: .userType)
         try encoderContainer.encode(companyName, forKey: .companyName)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(arrearageTime, forKey: .arrearageTime)
         try encoderContainer.encode(userTagObject, forKey: .userTagObject)
         try encoderContainer.encode(attachment, forKey: .attachment)
    }
}
