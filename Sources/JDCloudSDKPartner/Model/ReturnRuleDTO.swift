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

///  returnRuleDTO
@objc(ReturnRuleDTO)
public class ReturnRuleDTO:NSObject,Codable{
    /// ID
    var id:Double?
    /// 部门ID
    var deptId:Int?
    /// 部门名称
    var deptName:String?
    /// 渠道商类型
    var distributorType:Int?
    /// 是否返还标志
    var isReturn:Int?
    /// 周期类型
    var circleType:Int?
    /// 周期名称
    var circleName:String?
    /// 创建时间
    var createTime:String?
    /// 创建人
    var createUser:String?
    /// 修改时间
    var updateTime:String?
    /// 修改人
    var updateUser:String?
    /// 是否删除0未删除,1已删除
    var yn:Int?



    public override init(){
            super.init()
    }

    enum ReturnRuleDTOCodingKeys: String, CodingKey {
        case id
        case deptId
        case deptName
        case distributorType
        case isReturn
        case circleType
        case circleName
        case createTime
        case createUser
        case updateTime
        case updateUser
        case yn
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ReturnRuleDTOCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Double?.self, forKey: .id)
        }
        if decoderContainer.contains(.deptId)
        {
            self.deptId = try decoderContainer.decode(Int?.self, forKey: .deptId)
        }
        if decoderContainer.contains(.deptName)
        {
            self.deptName = try decoderContainer.decode(String?.self, forKey: .deptName)
        }
        if decoderContainer.contains(.distributorType)
        {
            self.distributorType = try decoderContainer.decode(Int?.self, forKey: .distributorType)
        }
        if decoderContainer.contains(.isReturn)
        {
            self.isReturn = try decoderContainer.decode(Int?.self, forKey: .isReturn)
        }
        if decoderContainer.contains(.circleType)
        {
            self.circleType = try decoderContainer.decode(Int?.self, forKey: .circleType)
        }
        if decoderContainer.contains(.circleName)
        {
            self.circleName = try decoderContainer.decode(String?.self, forKey: .circleName)
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
        if decoderContainer.contains(.updateUser)
        {
            self.updateUser = try decoderContainer.decode(String?.self, forKey: .updateUser)
        }
        if decoderContainer.contains(.yn)
        {
            self.yn = try decoderContainer.decode(Int?.self, forKey: .yn)
        }
    }
}
public extension ReturnRuleDTO{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ReturnRuleDTOCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(deptId, forKey: .deptId)
         try encoderContainer.encode(deptName, forKey: .deptName)
         try encoderContainer.encode(distributorType, forKey: .distributorType)
         try encoderContainer.encode(isReturn, forKey: .isReturn)
         try encoderContainer.encode(circleType, forKey: .circleType)
         try encoderContainer.encode(circleName, forKey: .circleName)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(createUser, forKey: .createUser)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(updateUser, forKey: .updateUser)
         try encoderContainer.encode(yn, forKey: .yn)
    }
}
