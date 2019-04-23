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

///  tagsSpec
@objc(TagsSpec)
public class TagsSpec:NSObject,Codable{
    /// 校验码。调用此API前需找云监控提供
    /// Required:true
    var appCode:String
    /// 服务码
    /// Required:true
    var serviceCode:String
    /// 组id,全局唯一，建议用那个UUID
    /// Required:true
    var groupCode:String
    /// 资源列表
    /// Required:true
    var resourceIds:[String?]
    /// 进行打tag的数据以及操作
    /// Required:true
    var tags:HandleTag
    /// 更详细过滤条件
    var filter:[DataTag?]?



    public  init(appCode:String,serviceCode:String,groupCode:String,resourceIds:[String?],tags:HandleTag){
             self.appCode = appCode
             self.serviceCode = serviceCode
             self.groupCode = groupCode
             self.resourceIds = resourceIds
             self.tags = tags
    }

    enum TagsSpecCodingKeys: String, CodingKey {
        case appCode
        case serviceCode
        case groupCode
        case resourceIds
        case tags
        case filter
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TagsSpecCodingKeys.self)
        self.appCode = try decoderContainer.decode(String.self, forKey: .appCode)
        self.serviceCode = try decoderContainer.decode(String.self, forKey: .serviceCode)
        self.groupCode = try decoderContainer.decode(String.self, forKey: .groupCode)
        self.resourceIds = try decoderContainer.decode([String?].self, forKey: .resourceIds)
        self.tags = try decoderContainer.decode(HandleTag.self, forKey: .tags)
        if decoderContainer.contains(.filter)
        {
            self.filter = try decoderContainer.decode([DataTag?]?.self, forKey: .filter)
        }
    }
}
public extension TagsSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TagsSpecCodingKeys.self)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(groupCode, forKey: .groupCode)
         try encoderContainer.encode(resourceIds, forKey: .resourceIds)
         try encoderContainer.encode(tags, forKey: .tags)
         try encoderContainer.encode(filter, forKey: .filter)
    }
}
