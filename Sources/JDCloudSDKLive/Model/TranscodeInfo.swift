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

///  transcodeInfo
@objc(TranscodeInfo)
public class TranscodeInfo:NSObject,Codable{
    /// 转码输出的码率值:
      ///   - 取值: [200,3000]
      ///   - 单位: kpbs
      /// 
    var videoCodeRate:Int?
    /// 转码输出的帧率值:
      ///   - 取值: 15/1、25/1、30/1、60/1
      /// 
    var videoFrameRate:String?
    /// 转码输出视频宽度:
      ///   - 取值: [100,1920]
      ///   - 等比: 如果只填写一个参数,则按参数比例调节输出转码视频
      ///   - 随源: 如果两个参数都不填写，则按照源比例输出转码视频
      /// 
    var width:Int?
    /// 转码输出视频宽度:
      ///   - 取值: [100,1920]
      ///   - 等比: 如果只填写一个参数,则按参数比例调节输出转码视频
      ///   - 随源: 如果两个参数都不填写，则按照源比例输出转码视频
      /// 
    var height:Int?
    /// 转码模板自定义名称:
      ///   - 自定义模板: 枚举类型校验，忽略大小写，自动删除空格,
      ///               取值要求：数字、大小写字母或短横线(&quot;-&quot;),
      ///               首尾不能有特殊字符(&quot;-&quot;)
      ///   - 注意: 不能与标准的转码模板和已定义命名重复
      /// 
    var template:String?
    /// 转码模板名称
      /// 
    var templateName:String?
    /// 转码输出音频编码格式:
      ///   - 取值: aac、mp3
      ///   - 不区分大小写
      /// 
    var audioCodec:String?
    /// 转码输出音频格式:
      ///   - 取值: aac_lc，aac_low，aac_he，aac_he_v2
      ///   - 不区分大小写
      /// 
    var audioFormat:String?
    /// 转码输出音频采样率:
      ///   - 取值: [44100,48000]
      /// 
    var audioSampleRate:Int?
    /// 转码输出音频通道数:
      ///   - 1  单声道
      ///   - 2  双声道
      /// 
    var audioChannel:Int?
    /// 转码输出音频码率:
      ///   - 取值: [16,128]
      ///   - 单位: kbps
      /// 
    var audioCodeRate:Int?



    public override init(){
            super.init()
    }

    enum TranscodeInfoCodingKeys: String, CodingKey {
        case videoCodeRate
        case videoFrameRate
        case width
        case height
        case template
        case templateName
        case audioCodec
        case audioFormat
        case audioSampleRate
        case audioChannel
        case audioCodeRate
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TranscodeInfoCodingKeys.self)
        if decoderContainer.contains(.videoCodeRate)
        {
            self.videoCodeRate = try decoderContainer.decode(Int?.self, forKey: .videoCodeRate)
        }
        if decoderContainer.contains(.videoFrameRate)
        {
            self.videoFrameRate = try decoderContainer.decode(String?.self, forKey: .videoFrameRate)
        }
        if decoderContainer.contains(.width)
        {
            self.width = try decoderContainer.decode(Int?.self, forKey: .width)
        }
        if decoderContainer.contains(.height)
        {
            self.height = try decoderContainer.decode(Int?.self, forKey: .height)
        }
        if decoderContainer.contains(.template)
        {
            self.template = try decoderContainer.decode(String?.self, forKey: .template)
        }
        if decoderContainer.contains(.templateName)
        {
            self.templateName = try decoderContainer.decode(String?.self, forKey: .templateName)
        }
        if decoderContainer.contains(.audioCodec)
        {
            self.audioCodec = try decoderContainer.decode(String?.self, forKey: .audioCodec)
        }
        if decoderContainer.contains(.audioFormat)
        {
            self.audioFormat = try decoderContainer.decode(String?.self, forKey: .audioFormat)
        }
        if decoderContainer.contains(.audioSampleRate)
        {
            self.audioSampleRate = try decoderContainer.decode(Int?.self, forKey: .audioSampleRate)
        }
        if decoderContainer.contains(.audioChannel)
        {
            self.audioChannel = try decoderContainer.decode(Int?.self, forKey: .audioChannel)
        }
        if decoderContainer.contains(.audioCodeRate)
        {
            self.audioCodeRate = try decoderContainer.decode(Int?.self, forKey: .audioCodeRate)
        }
    }
}
public extension TranscodeInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TranscodeInfoCodingKeys.self)
         try encoderContainer.encode(videoCodeRate, forKey: .videoCodeRate)
         try encoderContainer.encode(videoFrameRate, forKey: .videoFrameRate)
         try encoderContainer.encode(width, forKey: .width)
         try encoderContainer.encode(height, forKey: .height)
         try encoderContainer.encode(template, forKey: .template)
         try encoderContainer.encode(templateName, forKey: .templateName)
         try encoderContainer.encode(audioCodec, forKey: .audioCodec)
         try encoderContainer.encode(audioFormat, forKey: .audioFormat)
         try encoderContainer.encode(audioSampleRate, forKey: .audioSampleRate)
         try encoderContainer.encode(audioChannel, forKey: .audioChannel)
         try encoderContainer.encode(audioCodeRate, forKey: .audioCodeRate)
    }
}
