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

///  customerVo
@objc(CustomerVo)
public class CustomerVo:NSObject,Codable{
    /// 客户pin
    var pin:String?
    /// 一级渠道商名称
    var distributorLevel1Name:String?
    /// 二级渠道商名称
    var distributorLevel2Name:String?
    /// 关联时间
    var relTime:String?
    /// 来源(0渠道商自身,1京东云客户)
    var source:Int?
    /// 客户昵称
    var aliasName:String?
    /// 客户联系人
    var contracter:String?
    /// 客户电话
    var tel:String?
    /// 客户邮箱
    var email:String?
    /// 客户备注
    var remark:String?
    /// 所属部门(0企业线、1政府线)
    var dept:Int?
    /// 部门名称
    var deptName:String?
    /// 创建时间
    var createTime:String?
    /// 创建人
    var createUser:String?
    /// 修改时间
    var updateTime:String?
    /// 账户类型
    var accountTypeName:String?
    /// 实名标识名称
    var realName:String?
    /// 名称
    var name:String?
    /// 修改人
    var updateUser:String?



    public override init(){
            super.init()
    }

    enum CustomerVoCodingKeys: String, CodingKey {
        case pin
        case distributorLevel1Name
        case distributorLevel2Name
        case relTime
        case source
        case aliasName
        case contracter
        case tel
        case email
        case remark
        case dept
        case deptName
        case createTime
        case createUser
        case updateTime
        case accountTypeName
        case realName
        case name
        case updateUser
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CustomerVoCodingKeys.self)
        if decoderContainer.contains(.pin)
        {
            self.pin = try decoderContainer.decode(String?.self, forKey: .pin)
        }
        if decoderContainer.contains(.distributorLevel1Name)
        {
            self.distributorLevel1Name = try decoderContainer.decode(String?.self, forKey: .distributorLevel1Name)
        }
        if decoderContainer.contains(.distributorLevel2Name)
        {
            self.distributorLevel2Name = try decoderContainer.decode(String?.self, forKey: .distributorLevel2Name)
        }
        if decoderContainer.contains(.relTime)
        {
            self.relTime = try decoderContainer.decode(String?.self, forKey: .relTime)
        }
        if decoderContainer.contains(.source)
        {
            self.source = try decoderContainer.decode(Int?.self, forKey: .source)
        }
        if decoderContainer.contains(.aliasName)
        {
            self.aliasName = try decoderContainer.decode(String?.self, forKey: .aliasName)
        }
        if decoderContainer.contains(.contracter)
        {
            self.contracter = try decoderContainer.decode(String?.self, forKey: .contracter)
        }
        if decoderContainer.contains(.tel)
        {
            self.tel = try decoderContainer.decode(String?.self, forKey: .tel)
        }
        if decoderContainer.contains(.email)
        {
            self.email = try decoderContainer.decode(String?.self, forKey: .email)
        }
        if decoderContainer.contains(.remark)
        {
            self.remark = try decoderContainer.decode(String?.self, forKey: .remark)
        }
        if decoderContainer.contains(.dept)
        {
            self.dept = try decoderContainer.decode(Int?.self, forKey: .dept)
        }
        if decoderContainer.contains(.deptName)
        {
            self.deptName = try decoderContainer.decode(String?.self, forKey: .deptName)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.createUser)
        {
            self.createUser = try decoderContainer.decode(String?.self, forKey: .createUser)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.accountTypeName)
        {
            self.accountTypeName = try decoderContainer.decode(String?.self, forKey: .accountTypeName)
        }
        if decoderContainer.contains(.realName)
        {
            self.realName = try decoderContainer.decode(String?.self, forKey: .realName)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.updateUser)
        {
            self.updateUser = try decoderContainer.decode(String?.self, forKey: .updateUser)
        }
    }
}
public extension CustomerVo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CustomerVoCodingKeys.self)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(distributorLevel1Name, forKey: .distributorLevel1Name)
         try encoderContainer.encode(distributorLevel2Name, forKey: .distributorLevel2Name)
         try encoderContainer.encode(relTime, forKey: .relTime)
         try encoderContainer.encode(source, forKey: .source)
         try encoderContainer.encode(aliasName, forKey: .aliasName)
         try encoderContainer.encode(contracter, forKey: .contracter)
         try encoderContainer.encode(tel, forKey: .tel)
         try encoderContainer.encode(email, forKey: .email)
         try encoderContainer.encode(remark, forKey: .remark)
         try encoderContainer.encode(dept, forKey: .dept)
         try encoderContainer.encode(deptName, forKey: .deptName)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(createUser, forKey: .createUser)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(accountTypeName, forKey: .accountTypeName)
         try encoderContainer.encode(realName, forKey: .realName)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(updateUser, forKey: .updateUser)
    }
}