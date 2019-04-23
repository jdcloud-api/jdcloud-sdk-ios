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

///  code
@objc(Code)
public class Code:NSObject,Codable{
    /// 码率ID
    var cid:Double?
    /// 码率名称
    var name:String?
    /// 媒体类型
    var mediaType:Int?
    /// 封装格式
    var format:String?
    /// 画质
    var quality:String?
    /// 状态
    var status:Int?
    /// 进度
    var progress:String?
    /// 成品地址
    var url:String?
    /// CDN播放地址
    var cdnUrl:String?
    /// 文件大小
    var size:Double?
    /// 码率模板ID
    var coderateId:Int?
    /// 码率
    var coderate:Double?
    /// 编码格式
    var codec:String?
    /// 宽
    var width:Int?
    /// 高
    var height:Int?
    /// 帧率
    var frameRate:String?
    /// 创建时间
    var createTime:String?
    /// 更新时间
    var updateTime:String?



    public override init(){
            super.init()
    }

    enum CodeCodingKeys: String, CodingKey {
        case cid
        case name
        case mediaType
        case format
        case quality
        case status
        case progress
        case url
        case cdnUrl
        case size
        case coderateId
        case coderate
        case codec
        case width
        case height
        case frameRate
        case createTime
        case updateTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CodeCodingKeys.self)
        if decoderContainer.contains(.cid)
        {
            self.cid = try decoderContainer.decode(Double?.self, forKey: .cid)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.mediaType)
        {
            self.mediaType = try decoderContainer.decode(Int?.self, forKey: .mediaType)
        }
        if decoderContainer.contains(.format)
        {
            self.format = try decoderContainer.decode(String?.self, forKey: .format)
        }
        if decoderContainer.contains(.quality)
        {
            self.quality = try decoderContainer.decode(String?.self, forKey: .quality)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Int?.self, forKey: .status)
        }
        if decoderContainer.contains(.progress)
        {
            self.progress = try decoderContainer.decode(String?.self, forKey: .progress)
        }
        if decoderContainer.contains(.url)
        {
            self.url = try decoderContainer.decode(String?.self, forKey: .url)
        }
        if decoderContainer.contains(.cdnUrl)
        {
            self.cdnUrl = try decoderContainer.decode(String?.self, forKey: .cdnUrl)
        }
        if decoderContainer.contains(.size)
        {
            self.size = try decoderContainer.decode(Double?.self, forKey: .size)
        }
        if decoderContainer.contains(.coderateId)
        {
            self.coderateId = try decoderContainer.decode(Int?.self, forKey: .coderateId)
        }
        if decoderContainer.contains(.coderate)
        {
            self.coderate = try decoderContainer.decode(Double?.self, forKey: .coderate)
        }
        if decoderContainer.contains(.codec)
        {
            self.codec = try decoderContainer.decode(String?.self, forKey: .codec)
        }
        if decoderContainer.contains(.width)
        {
            self.width = try decoderContainer.decode(Int?.self, forKey: .width)
        }
        if decoderContainer.contains(.height)
        {
            self.height = try decoderContainer.decode(Int?.self, forKey: .height)
        }
        if decoderContainer.contains(.frameRate)
        {
            self.frameRate = try decoderContainer.decode(String?.self, forKey: .frameRate)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
    }
}
public extension Code{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodeCodingKeys.self)
         try encoderContainer.encode(cid, forKey: .cid)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(mediaType, forKey: .mediaType)
         try encoderContainer.encode(format, forKey: .format)
         try encoderContainer.encode(quality, forKey: .quality)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(progress, forKey: .progress)
         try encoderContainer.encode(url, forKey: .url)
         try encoderContainer.encode(cdnUrl, forKey: .cdnUrl)
         try encoderContainer.encode(size, forKey: .size)
         try encoderContainer.encode(coderateId, forKey: .coderateId)
         try encoderContainer.encode(coderate, forKey: .coderate)
         try encoderContainer.encode(codec, forKey: .codec)
         try encoderContainer.encode(width, forKey: .width)
         try encoderContainer.encode(height, forKey: .height)
         try encoderContainer.encode(frameRate, forKey: .frameRate)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}
