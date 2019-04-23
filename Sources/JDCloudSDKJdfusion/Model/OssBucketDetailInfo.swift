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

///  OSS存储桶详细信息
@objc(OssBucketDetailInfo)
public class OssBucketDetailInfo:NSObject,Codable{
    /// 存储桶名称
    var name:String?
    /// 存储桶权限
    var acl:String?
    /// 内网endpoint
    var intranetEndpoint:String?
    /// 外网endpoint
    var extranetEndpoint:String?
    /// 创建时间
    var creationDate:String?
    /// 云信息
    var cloudID:String?



    public override init(){
            super.init()
    }

    enum OssBucketDetailInfoCodingKeys: String, CodingKey {
        case name
        case acl
        case intranetEndpoint
        case extranetEndpoint
        case creationDate
        case cloudID
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OssBucketDetailInfoCodingKeys.self)
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.acl)
        {
            self.acl = try decoderContainer.decode(String?.self, forKey: .acl)
        }
        if decoderContainer.contains(.intranetEndpoint)
        {
            self.intranetEndpoint = try decoderContainer.decode(String?.self, forKey: .intranetEndpoint)
        }
        if decoderContainer.contains(.extranetEndpoint)
        {
            self.extranetEndpoint = try decoderContainer.decode(String?.self, forKey: .extranetEndpoint)
        }
        if decoderContainer.contains(.creationDate)
        {
            self.creationDate = try decoderContainer.decode(String?.self, forKey: .creationDate)
        }
        if decoderContainer.contains(.cloudID)
        {
            self.cloudID = try decoderContainer.decode(String?.self, forKey: .cloudID)
        }
    }
}
public extension OssBucketDetailInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OssBucketDetailInfoCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(acl, forKey: .acl)
         try encoderContainer.encode(intranetEndpoint, forKey: .intranetEndpoint)
         try encoderContainer.encode(extranetEndpoint, forKey: .extranetEndpoint)
         try encoderContainer.encode(creationDate, forKey: .creationDate)
         try encoderContainer.encode(cloudID, forKey: .cloudID)
    }
}
