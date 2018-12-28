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

///  创建资源tf信息
@objc(ResourceTFInfo)
public class ResourceTFInfo:NSObject,Codable{
    /// uuid
    var uuid:String?
    /// 请求体
    var body:String?
    /// 状态
    var status:String?
    /// 执行结果
    var result:String?
    /// 创建时间
    var createdTime:String?
    /// 更新时间
    var updateTime:String?
    /// cloud provider
    var provider:String?
    /// cloud ID
    var cloudId:String?
    /// user ID
    var userId:String?



    public override init(){
            super.init()
    }

    enum ResourceTFInfoCodingKeys: String, CodingKey {
        case uuid
        case body
        case status
        case result
        case createdTime
        case updateTime
        case provider
        case cloudId
        case userId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ResourceTFInfoCodingKeys.self)
        self.uuid = try decoderContainer.decode(String?.self, forKey: .uuid)
        self.body = try decoderContainer.decode(String?.self, forKey: .body)
        self.status = try decoderContainer.decode(String?.self, forKey: .status)
        self.result = try decoderContainer.decode(String?.self, forKey: .result)
        self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        self.provider = try decoderContainer.decode(String?.self, forKey: .provider)
        self.cloudId = try decoderContainer.decode(String?.self, forKey: .cloudId)
        self.userId = try decoderContainer.decode(String?.self, forKey: .userId)
    }
}
public extension ResourceTFInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResourceTFInfoCodingKeys.self)
         try encoderContainer.encode(uuid, forKey: .uuid)
         try encoderContainer.encode(body, forKey: .body)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(result, forKey: .result)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(provider, forKey: .provider)
         try encoderContainer.encode(cloudId, forKey: .cloudId)
         try encoderContainer.encode(userId, forKey: .userId)
    }
}
