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

///  auditFile
@objc(AuditFile)
public class AuditFile:NSObject,Codable{
    /// 审计日志文件名称
    var name:String?
    /// 审计日志文件大小，单位Byte
    var sizeByte:Int64?
    /// 审计日志文件最后更新时间
    var lastUpdateTime:String?
    /// 审计日志文件上传时间
    var uploadTime:String?



    public override init(){
            super.init()
    }

    enum AuditFileCodingKeys: String, CodingKey {
        case name
        case sizeByte
        case lastUpdateTime
        case uploadTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AuditFileCodingKeys.self)
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.sizeByte)
        {
            self.sizeByte = try decoderContainer.decode(Int64?.self, forKey: .sizeByte)
        }
        if decoderContainer.contains(.lastUpdateTime)
        {
            self.lastUpdateTime = try decoderContainer.decode(String?.self, forKey: .lastUpdateTime)
        }
        if decoderContainer.contains(.uploadTime)
        {
            self.uploadTime = try decoderContainer.decode(String?.self, forKey: .uploadTime)
        }
    }
}
public extension AuditFile{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AuditFileCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(sizeByte, forKey: .sizeByte)
         try encoderContainer.encode(lastUpdateTime, forKey: .lastUpdateTime)
         try encoderContainer.encode(uploadTime, forKey: .uploadTime)
    }
}
