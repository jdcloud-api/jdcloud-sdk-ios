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

   Live-Video
   直播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  添加自定义转码模板
      ///       /// - 系统为您预设了标准转码模板,如果不能满足您的转码需求,可以通过此接口添加自定义转码模板
      ///       /// - 系统标准转码模板
      ///       ///     ld (h.264/640*360/15f)
      ///       ///     sd (h.264/854*480/24f)
      ///       ///     hd (h.264/1280*720/25f)
      ///       ///     shd (h.264/1920*1080/30f)
      ///       /// 
@objc(AddCustomLiveStreamTranscodeTemplateRequest)
public class AddCustomLiveStreamTranscodeTemplateRequest:JdCloudRequest
{
    /// 转码输出的码率值
      /// - 取值范围: [200,3000]
      /// - 单位: kpbs
      /// 
    var videoCodeRate:Int

    /// 转码输出的帧率值
      /// - 取值：15、25、30、60
      /// 
    var videoFrameRate:String

    /// 转码输出视频宽度
      /// - 取值: [100,1920]
      /// - 如果(width,height)只设置其中之一,则按所设置参数项等比缩放另一项输出转码
      /// - 如果(width,height)都不设置，则按源流大小输出转码
      /// 
    var width:Int?

    /// 转码输出视频宽度
      /// - 取值: [100,1920]
      /// - 如果(width,height)只设置其中之一,则按所设置参数项等比缩放另一项输出转码
      /// - 如果(width,height)都不设置，则按源流大小输出转码
      /// 
    var height:Int?

    /// 转码模板(转码流输出后缀)
      /// - 取值要求：数字、大小写字母或短横线(&quot;-&quot;),必须以数字或字母作为开头和结尾,长度不超过50字符
      /// - &lt;b&gt;注意: 不能与系统的标准的转码模板和当前用户已自定义命名重复&lt;/b&gt;
      /// - 系统标准转码模板
      ///   ld (h.264/640*360/15f)
      ///   sd (h.264/854*480/24f)
      ///   hd (h.264/1280*720/25f)
      ///   shd (h.264/1920*1080/30f)
      /// 
    var template:String

    /// 转码输出音频编码格式
      /// - 取值: aac、mp3
      /// - 不区分大小写
      /// 
    var audioCodec:String

    /// 转码输出音频格式
      /// - 取值: aac_lc，aac_low，aac_he，aac_he_v2
      /// - 不区分大小写
      /// 
    var audioFormat:String

    /// 转码输出音频采样率
      /// - 取值: [44100,48000]
      /// 
    var audioSampleRate:Int

    /// 转码输出音频通道数
      ///   1: 单声道
      ///   2: 双声道
      /// 
    var audioChannel:Int

    /// 转码输出音频码率
      /// - 取值: [16,128]
      /// - 单位: kbps
      /// 
    var audioCodeRate:Int


    public init(regionId: String,videoCodeRate:Int,videoFrameRate:String,template:String,audioCodec:String,audioFormat:String,audioSampleRate:Int,audioChannel:Int,audioCodeRate:Int){
        self.videoCodeRate = videoCodeRate
        self.videoFrameRate = videoFrameRate
        self.template = template
        self.audioCodec = audioCodec
        self.audioFormat = audioFormat
        self.audioSampleRate = audioSampleRate
        self.audioChannel = audioChannel
        self.audioCodeRate = audioCodeRate
        super.init(regionId: regionId)
    }


    enum AddCustomLiveStreamTranscodeTemplateRequestRequestCodingKeys: String, CodingKey {
        case videoCodeRate
        case videoFrameRate
        case width
        case height
        case template
        case audioCodec
        case audioFormat
        case audioSampleRate
        case audioChannel
        case audioCodeRate
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddCustomLiveStreamTranscodeTemplateRequestRequestCodingKeys.self)
        try encoderContainer.encode(videoCodeRate, forKey: .videoCodeRate)
        try encoderContainer.encode(videoFrameRate, forKey: .videoFrameRate)
        try encoderContainer.encode(width, forKey: .width)
        try encoderContainer.encode(height, forKey: .height)
        try encoderContainer.encode(template, forKey: .template)
        try encoderContainer.encode(audioCodec, forKey: .audioCodec)
        try encoderContainer.encode(audioFormat, forKey: .audioFormat)
        try encoderContainer.encode(audioSampleRate, forKey: .audioSampleRate)
        try encoderContainer.encode(audioChannel, forKey: .audioChannel)
        try encoderContainer.encode(audioCodeRate, forKey: .audioCodeRate)

    }
}
