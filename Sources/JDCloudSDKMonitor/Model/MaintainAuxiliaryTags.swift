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

///  maintainAuxiliaryTags
@objc(MaintainAuxiliaryTags)
public class MaintainAuxiliaryTags:NSObject,Codable{
    /// 应用码。调用此API前需找云监控提供
    /// Required:true
    var appCode:String
    /// 详细的过滤条件。
    var filter:[DataTag?]?
    /// 组id。须确保在一个APP范围内全局唯一
    /// Required:true
    var groupCode:String
    /// 资源列表。
    /// Required:true
    var resourceIds:[String?]
    /// 资源的产品线
    /// Required:true
    var serviceCode:String
    /// Tags
    /// Required:true
    var tags:HandleTags



    public  init(appCode:String,groupCode:String,resourceIds:[String?],serviceCode:String,tags:HandleTags){
             self.appCode = appCode
             self.groupCode = groupCode
             self.resourceIds = resourceIds
             self.serviceCode = serviceCode
             self.tags = tags
    }

    enum MaintainAuxiliaryTagsCodingKeys: String, CodingKey {
        case appCode
        case filter
        case groupCode
        case resourceIds
        case serviceCode
        case tags
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: MaintainAuxiliaryTagsCodingKeys.self)
        self.appCode = try decoderContainer.decode(String.self, forKey: .appCode)
        if decoderContainer.contains(.filter)
        {
            self.filter = try decoderContainer.decode([DataTag?]?.self, forKey: .filter)
        }
        self.groupCode = try decoderContainer.decode(String.self, forKey: .groupCode)
        self.resourceIds = try decoderContainer.decode([String?].self, forKey: .resourceIds)
        self.serviceCode = try decoderContainer.decode(String.self, forKey: .serviceCode)
        self.tags = try decoderContainer.decode(HandleTags.self, forKey: .tags)
    }
}
public extension MaintainAuxiliaryTags{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: MaintainAuxiliaryTagsCodingKeys.self)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(filter, forKey: .filter)
         try encoderContainer.encode(groupCode, forKey: .groupCode)
         try encoderContainer.encode(resourceIds, forKey: .resourceIds)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(tags, forKey: .tags)
    }
}
