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

///  domainLog
@objc(DomainLog)
public class DomainLog:NSObject,Codable{
    /// 下载链接
    var url:String?
    /// md5值
    var md5:String?
    /// 文件名
    var fileName:String?
    /// 文件大小
    var size:Int64?
    /// 日志开始时间，UTC时间
    var startTime:String?
    /// 日志结束时间，UTC时间
    var endTime:String?



    public override init(){
            super.init()
    }

    enum DomainLogCodingKeys: String, CodingKey {
        case url
        case md5
        case fileName
        case size
        case startTime
        case endTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DomainLogCodingKeys.self)
        if decoderContainer.contains(.url)
        {
            self.url = try decoderContainer.decode(String?.self, forKey: .url)
        }
        if decoderContainer.contains(.md5)
        {
            self.md5 = try decoderContainer.decode(String?.self, forKey: .md5)
        }
        if decoderContainer.contains(.fileName)
        {
            self.fileName = try decoderContainer.decode(String?.self, forKey: .fileName)
        }
        if decoderContainer.contains(.size)
        {
            self.size = try decoderContainer.decode(Int64?.self, forKey: .size)
        }
        if decoderContainer.contains(.startTime)
        {
            self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        }
        if decoderContainer.contains(.endTime)
        {
            self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        }
    }
}
public extension DomainLog{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DomainLogCodingKeys.self)
         try encoderContainer.encode(url, forKey: .url)
         try encoderContainer.encode(md5, forKey: .md5)
         try encoderContainer.encode(fileName, forKey: .fileName)
         try encoderContainer.encode(size, forKey: .size)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
    }
}