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

///  describeTranscode
@objc(DescribeTranscode)
public class DescribeTranscode:NSObject,Codable{
    /// 模板ID
    var coderateId:Double?
    /// 模板名称
    var name:String?
    /// 封装格式
    var format:String?
    /// 宽
    var width:Int?
    /// 高
    var height:Int?
    /// 视频编码
    var videoCodec:String?
    /// 视频码率
    var videoCoderate:Int?
    /// 视频帧率
    var videoFramerate:String?
    /// 音频ID
    var audioId:Double?
    /// 音频编码
    var audioCodec:String?
    /// 音频码率
    var audioCoderate:Int?
    /// 音频采样率
    var sampleRate:Int?
    /// 音频声道数
    var channel:Int?
    /// 修改时间
    var updateTime:String?
    /// 创建时间
    var createTime:String?



    public override init(){
            super.init()
    }

    enum DescribeTranscodeCodingKeys: String, CodingKey {
        case coderateId
        case name
        case format
        case width
        case height
        case videoCodec
        case videoCoderate
        case videoFramerate
        case audioId
        case audioCodec
        case audioCoderate
        case sampleRate
        case channel
        case updateTime
        case createTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeTranscodeCodingKeys.self)
        if decoderContainer.contains(.coderateId)
        {
            self.coderateId = try decoderContainer.decode(Double?.self, forKey: .coderateId)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.format)
        {
            self.format = try decoderContainer.decode(String?.self, forKey: .format)
        }
        if decoderContainer.contains(.width)
        {
            self.width = try decoderContainer.decode(Int?.self, forKey: .width)
        }
        if decoderContainer.contains(.height)
        {
            self.height = try decoderContainer.decode(Int?.self, forKey: .height)
        }
        if decoderContainer.contains(.videoCodec)
        {
            self.videoCodec = try decoderContainer.decode(String?.self, forKey: .videoCodec)
        }
        if decoderContainer.contains(.videoCoderate)
        {
            self.videoCoderate = try decoderContainer.decode(Int?.self, forKey: .videoCoderate)
        }
        if decoderContainer.contains(.videoFramerate)
        {
            self.videoFramerate = try decoderContainer.decode(String?.self, forKey: .videoFramerate)
        }
        if decoderContainer.contains(.audioId)
        {
            self.audioId = try decoderContainer.decode(Double?.self, forKey: .audioId)
        }
        if decoderContainer.contains(.audioCodec)
        {
            self.audioCodec = try decoderContainer.decode(String?.self, forKey: .audioCodec)
        }
        if decoderContainer.contains(.audioCoderate)
        {
            self.audioCoderate = try decoderContainer.decode(Int?.self, forKey: .audioCoderate)
        }
        if decoderContainer.contains(.sampleRate)
        {
            self.sampleRate = try decoderContainer.decode(Int?.self, forKey: .sampleRate)
        }
        if decoderContainer.contains(.channel)
        {
            self.channel = try decoderContainer.decode(Int?.self, forKey: .channel)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
    }
}
public extension DescribeTranscode{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeTranscodeCodingKeys.self)
         try encoderContainer.encode(coderateId, forKey: .coderateId)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(format, forKey: .format)
         try encoderContainer.encode(width, forKey: .width)
         try encoderContainer.encode(height, forKey: .height)
         try encoderContainer.encode(videoCodec, forKey: .videoCodec)
         try encoderContainer.encode(videoCoderate, forKey: .videoCoderate)
         try encoderContainer.encode(videoFramerate, forKey: .videoFramerate)
         try encoderContainer.encode(audioId, forKey: .audioId)
         try encoderContainer.encode(audioCodec, forKey: .audioCodec)
         try encoderContainer.encode(audioCoderate, forKey: .audioCoderate)
         try encoderContainer.encode(sampleRate, forKey: .sampleRate)
         try encoderContainer.encode(channel, forKey: .channel)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(createTime, forKey: .createTime)
    }
}