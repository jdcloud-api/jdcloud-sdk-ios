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

   Category
   媒资分类相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 修改分类
@objc(UpdateCategoryResult)
public class UpdateCategoryResult:NSObject,JdCloudResult
{
    /// 分类ID
    var id:Int64?

    /// 分类名称
    var name:String?

    /// 分类级别。取值范围为 [0, 3]，取值为 0 时为虚拟根节点
      /// 
    var level:Int?

    /// 父分类ID，取值为 0 或 null 时，表示该分类为一级分类
      /// 
    var parentId:Int64?

    /// 分类描述信息
    var descriptionValue:String?

    /// 创建时间
    var createTime:String?

    /// 修改时间
    var updateTime:String?



    public override init(){
        super.init()
    }

    enum UpdateCategoryResultCodingKeys: String, CodingKey {
        case id
        case name
        case level
        case parentId
        case descriptionValue = "description"
        case createTime
        case updateTime
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: UpdateCategoryResultCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int64?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.level)
        {
            self.level = try decoderContainer.decode(Int?.self, forKey: .level)
        }
        if decoderContainer.contains(.parentId)
        {
            self.parentId = try decoderContainer.decode(Int64?.self, forKey: .parentId)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
    }
}
public extension UpdateCategoryResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdateCategoryResultCodingKeys.self)
        try encoderContainer.encode(id, forKey: .id)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(level, forKey: .level)
        try encoderContainer.encode(parentId, forKey: .parentId)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
        try encoderContainer.encode(createTime, forKey: .createTime)
        try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}
