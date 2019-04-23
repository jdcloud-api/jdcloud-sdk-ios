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

///  aPIInfo
@objc(APIInfo)
public class APIInfo:NSObject,Codable{
    /// 访问级别
    var accessLevel:Int?
    /// action name
    var actionName:String?
    /// action type
    var actionType:String?
    /// 资源
    var resource:String?
    /// 资源类型
    var resourceType:String?
    /// 子资源类型
    var subResourceType:String?
    /// 三级资源类型
    var terResourceType:String?



    public override init(){
            super.init()
    }

    enum APIInfoCodingKeys: String, CodingKey {
        case accessLevel
        case actionName
        case actionType
        case resource
        case resourceType
        case subResourceType
        case terResourceType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: APIInfoCodingKeys.self)
        if decoderContainer.contains(.accessLevel)
        {
            self.accessLevel = try decoderContainer.decode(Int?.self, forKey: .accessLevel)
        }
        if decoderContainer.contains(.actionName)
        {
            self.actionName = try decoderContainer.decode(String?.self, forKey: .actionName)
        }
        if decoderContainer.contains(.actionType)
        {
            self.actionType = try decoderContainer.decode(String?.self, forKey: .actionType)
        }
        if decoderContainer.contains(.resource)
        {
            self.resource = try decoderContainer.decode(String?.self, forKey: .resource)
        }
        if decoderContainer.contains(.resourceType)
        {
            self.resourceType = try decoderContainer.decode(String?.self, forKey: .resourceType)
        }
        if decoderContainer.contains(.subResourceType)
        {
            self.subResourceType = try decoderContainer.decode(String?.self, forKey: .subResourceType)
        }
        if decoderContainer.contains(.terResourceType)
        {
            self.terResourceType = try decoderContainer.decode(String?.self, forKey: .terResourceType)
        }
    }
}
public extension APIInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: APIInfoCodingKeys.self)
         try encoderContainer.encode(accessLevel, forKey: .accessLevel)
         try encoderContainer.encode(actionName, forKey: .actionName)
         try encoderContainer.encode(actionType, forKey: .actionType)
         try encoderContainer.encode(resource, forKey: .resource)
         try encoderContainer.encode(resourceType, forKey: .resourceType)
         try encoderContainer.encode(subResourceType, forKey: .subResourceType)
         try encoderContainer.encode(terResourceType, forKey: .terResourceType)
    }
}