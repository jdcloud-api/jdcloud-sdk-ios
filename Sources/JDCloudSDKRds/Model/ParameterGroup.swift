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

///  parameterGroup
@objc(ParameterGroup)
public class ParameterGroup:NSObject,Codable{
    /// 参数组ID
    var parameterGroupId:String?
    /// 参数组名称
    var parameterGroupName:String?
    /// 参数组状态
    var parameterGroupStatus:String?
    /// 参数组描述
    var descriptionValue:String?
    /// 实例引擎类型
    var engine:String?
    /// 数据库版本
    var engineVersion:String?
    /// 地域代码，取值范围参见[《各地域及可用区对照表》](../Enum-Definitions/Regions-AZ.md)
    var regionId:String?
    /// 参数组创建时间
    var createTime:String?



    public override init(){
            super.init()
    }

    enum ParameterGroupCodingKeys: String, CodingKey {
        case parameterGroupId
        case parameterGroupName
        case parameterGroupStatus
        case descriptionValue = "description"
        case engine
        case engineVersion
        case regionId
        case createTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ParameterGroupCodingKeys.self)
        if decoderContainer.contains(.parameterGroupId)
        {
            self.parameterGroupId = try decoderContainer.decode(String?.self, forKey: .parameterGroupId)
        }
        if decoderContainer.contains(.parameterGroupName)
        {
            self.parameterGroupName = try decoderContainer.decode(String?.self, forKey: .parameterGroupName)
        }
        if decoderContainer.contains(.parameterGroupStatus)
        {
            self.parameterGroupStatus = try decoderContainer.decode(String?.self, forKey: .parameterGroupStatus)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.engine)
        {
            self.engine = try decoderContainer.decode(String?.self, forKey: .engine)
        }
        if decoderContainer.contains(.engineVersion)
        {
            self.engineVersion = try decoderContainer.decode(String?.self, forKey: .engineVersion)
        }
        if decoderContainer.contains(.regionId)
        {
            self.regionId = try decoderContainer.decode(String?.self, forKey: .regionId)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
    }
}
public extension ParameterGroup{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ParameterGroupCodingKeys.self)
         try encoderContainer.encode(parameterGroupId, forKey: .parameterGroupId)
         try encoderContainer.encode(parameterGroupName, forKey: .parameterGroupName)
         try encoderContainer.encode(parameterGroupStatus, forKey: .parameterGroupStatus)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(engine, forKey: .engine)
         try encoderContainer.encode(engineVersion, forKey: .engineVersion)
         try encoderContainer.encode(regionId, forKey: .regionId)
         try encoderContainer.encode(createTime, forKey: .createTime)
    }
}
