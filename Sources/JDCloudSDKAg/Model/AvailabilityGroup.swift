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

///  可用组详情
@objc(AvailabilityGroup)
public class AvailabilityGroup:NSObject,Codable{
    /// 可用组id
    var id:String?
    /// 可用组name
    var name:String?
    /// 描述，length:0-256
    var descriptionValue:String?
    /// 实例模板的Id
    var instanceTemplateId:String?
    /// 可用区域
    var azs:[String?]?
    /// 可用组类型，支持vm
    var agType:String?
    /// 创建时间
    var createTime:String?
    /// 可用组中实例的数量
    var count:Double?
    /// 是否开启自动伸缩
    var autoScaling:Bool?



    public override init(){
            super.init()
    }

    enum AvailabilityGroupCodingKeys: String, CodingKey {
        case id
        case name
        case descriptionValue = "description"
        case instanceTemplateId
        case azs
        case agType
        case createTime
        case count
        case autoScaling
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AvailabilityGroupCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.instanceTemplateId)
        {
            self.instanceTemplateId = try decoderContainer.decode(String?.self, forKey: .instanceTemplateId)
        }
        if decoderContainer.contains(.azs)
        {
            self.azs = try decoderContainer.decode([String?]?.self, forKey: .azs)
        }
        if decoderContainer.contains(.agType)
        {
            self.agType = try decoderContainer.decode(String?.self, forKey: .agType)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.count)
        {
            self.count = try decoderContainer.decode(Double?.self, forKey: .count)
        }
        if decoderContainer.contains(.autoScaling)
        {
            self.autoScaling = try decoderContainer.decode(Bool?.self, forKey: .autoScaling)
        }
    }
}
public extension AvailabilityGroup{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AvailabilityGroupCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(instanceTemplateId, forKey: .instanceTemplateId)
         try encoderContainer.encode(azs, forKey: .azs)
         try encoderContainer.encode(agType, forKey: .agType)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(count, forKey: .count)
         try encoderContainer.encode(autoScaling, forKey: .autoScaling)
    }
}
