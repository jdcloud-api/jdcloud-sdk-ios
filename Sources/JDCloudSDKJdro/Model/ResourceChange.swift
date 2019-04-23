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

///  resourceChange
@objc(ResourceChange)
public class ResourceChange:NSObject,Codable{
    /// Action
    var action:String?
    /// 更新操作中将对资源做的改变详情
    var details:[ResourceChangeDetail?]?
    /// 资源在模板中的逻辑id
    var logicalResourceId:String?
    /// 资源物理id
    var physicalResourceId:String?
    /// Replacement
    var replacement:String?
    /// 资源类型
    var resourceType:String?
    /// 更新操作中修改发生的位置
    var scope:[String?]?



    public override init(){
            super.init()
    }

    enum ResourceChangeCodingKeys: String, CodingKey {
        case action
        case details
        case logicalResourceId
        case physicalResourceId
        case replacement
        case resourceType
        case scope
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ResourceChangeCodingKeys.self)
        if decoderContainer.contains(.action)
        {
            self.action = try decoderContainer.decode(String?.self, forKey: .action)
        }
        if decoderContainer.contains(.details)
        {
            self.details = try decoderContainer.decode([ResourceChangeDetail?]?.self, forKey: .details)
        }
        if decoderContainer.contains(.logicalResourceId)
        {
            self.logicalResourceId = try decoderContainer.decode(String?.self, forKey: .logicalResourceId)
        }
        if decoderContainer.contains(.physicalResourceId)
        {
            self.physicalResourceId = try decoderContainer.decode(String?.self, forKey: .physicalResourceId)
        }
        if decoderContainer.contains(.replacement)
        {
            self.replacement = try decoderContainer.decode(String?.self, forKey: .replacement)
        }
        if decoderContainer.contains(.resourceType)
        {
            self.resourceType = try decoderContainer.decode(String?.self, forKey: .resourceType)
        }
        if decoderContainer.contains(.scope)
        {
            self.scope = try decoderContainer.decode([String?]?.self, forKey: .scope)
        }
    }
}
public extension ResourceChange{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResourceChangeCodingKeys.self)
         try encoderContainer.encode(action, forKey: .action)
         try encoderContainer.encode(details, forKey: .details)
         try encoderContainer.encode(logicalResourceId, forKey: .logicalResourceId)
         try encoderContainer.encode(physicalResourceId, forKey: .physicalResourceId)
         try encoderContainer.encode(replacement, forKey: .replacement)
         try encoderContainer.encode(resourceType, forKey: .resourceType)
         try encoderContainer.encode(scope, forKey: .scope)
    }
}
