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

///  returnItemDTO
@objc(ReturnItemDTO)
public class ReturnItemDTO:NSObject,Codable{
    /// Id
    var id:Double?
    /// 项目编码
    var itemId:Int?
    /// 项目名称
    var itemName:String?
    /// 部门ID
    var deptId:Int?
    /// 部门名称
    var deptName:String?
    /// 渠道商类型
    var distributorType:Int?
    /// 返还类型
    var returnType:Int?
    /// 项目条件
    var conditionItem:String?
    /// 周期类型
    var circleType:Int?
    /// 周期名称
    var circleName:String?
    /// 说明
    var remark:String?
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
    /// 项目名称
    var itemNameLike:String?



    public override init(){
            super.init()
    }

    enum ReturnItemDTOCodingKeys: String, CodingKey {
        case id
        case itemId
        case itemName
        case deptId
        case deptName
        case distributorType
        case returnType
        case conditionItem
        case circleType
        case circleName
        case remark
        case createTime
        case createUser
        case updateTime
        case updateUser
        case yn
        case itemNameLike
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ReturnItemDTOCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Double?.self, forKey: .id)
        }
        if decoderContainer.contains(.itemId)
        {
            self.itemId = try decoderContainer.decode(Int?.self, forKey: .itemId)
        }
        if decoderContainer.contains(.itemName)
        {
            self.itemName = try decoderContainer.decode(String?.self, forKey: .itemName)
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
        if decoderContainer.contains(.returnType)
        {
            self.returnType = try decoderContainer.decode(Int?.self, forKey: .returnType)
        }
        if decoderContainer.contains(.conditionItem)
        {
            self.conditionItem = try decoderContainer.decode(String?.self, forKey: .conditionItem)
        }
        if decoderContainer.contains(.circleType)
        {
            self.circleType = try decoderContainer.decode(Int?.self, forKey: .circleType)
        }
        if decoderContainer.contains(.circleName)
        {
            self.circleName = try decoderContainer.decode(String?.self, forKey: .circleName)
        }
        if decoderContainer.contains(.remark)
        {
            self.remark = try decoderContainer.decode(String?.self, forKey: .remark)
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
        if decoderContainer.contains(.itemNameLike)
        {
            self.itemNameLike = try decoderContainer.decode(String?.self, forKey: .itemNameLike)
        }
    }
}
public extension ReturnItemDTO{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ReturnItemDTOCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(itemId, forKey: .itemId)
         try encoderContainer.encode(itemName, forKey: .itemName)
         try encoderContainer.encode(deptId, forKey: .deptId)
         try encoderContainer.encode(deptName, forKey: .deptName)
         try encoderContainer.encode(distributorType, forKey: .distributorType)
         try encoderContainer.encode(returnType, forKey: .returnType)
         try encoderContainer.encode(conditionItem, forKey: .conditionItem)
         try encoderContainer.encode(circleType, forKey: .circleType)
         try encoderContainer.encode(circleName, forKey: .circleName)
         try encoderContainer.encode(remark, forKey: .remark)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(createUser, forKey: .createUser)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(updateUser, forKey: .updateUser)
         try encoderContainer.encode(yn, forKey: .yn)
         try encoderContainer.encode(itemNameLike, forKey: .itemNameLike)
    }
}