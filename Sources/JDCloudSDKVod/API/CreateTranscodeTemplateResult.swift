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

   Transcode Template
   模板管理 - 视频转码模板

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 创建转码模板
@objc(CreateTranscodeTemplateResult)
public class CreateTranscodeTemplateResult:NSObject,JdCloudResult
{
    /// 模板ID
    var id:Int64?

    /// 模板名称
    var name:String?

    /// 视频参数
    var video:Video?

    /// 音频参数
    var audio:Audio?

    /// 封装配置
    var encapsulation:Encapsulation?

    /// 清晰度规格
    var definition:String?

    /// 模板来源
    var source:String?

    /// CreateTime
    var createTime:String?

    /// UpdateTime
    var updateTime:String?



    public override init(){
        super.init()
    }

    enum CreateTranscodeTemplateResultCodingKeys: String, CodingKey {
        case id
        case name
        case video
        case audio
        case encapsulation
        case definition
        case source
        case createTime
        case updateTime
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateTranscodeTemplateResultCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int64?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.video)
        {
            self.video = try decoderContainer.decode(Video?.self, forKey: .video)
        }
        if decoderContainer.contains(.audio)
        {
            self.audio = try decoderContainer.decode(Audio?.self, forKey: .audio)
        }
        if decoderContainer.contains(.encapsulation)
        {
            self.encapsulation = try decoderContainer.decode(Encapsulation?.self, forKey: .encapsulation)
        }
        if decoderContainer.contains(.definition)
        {
            self.definition = try decoderContainer.decode(String?.self, forKey: .definition)
        }
        if decoderContainer.contains(.source)
        {
            self.source = try decoderContainer.decode(String?.self, forKey: .source)
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
public extension CreateTranscodeTemplateResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateTranscodeTemplateResultCodingKeys.self)
        try encoderContainer.encode(id, forKey: .id)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(video, forKey: .video)
        try encoderContainer.encode(audio, forKey: .audio)
        try encoderContainer.encode(encapsulation, forKey: .encapsulation)
        try encoderContainer.encode(definition, forKey: .definition)
        try encoderContainer.encode(source, forKey: .source)
        try encoderContainer.encode(createTime, forKey: .createTime)
        try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}