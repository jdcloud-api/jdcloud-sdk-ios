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

   Video Transcode
   媒体处理 - 视频转码

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  获取视频转码任务信息
@objc(GetTranscodeTaskResp)
public class GetTranscodeTaskResp:NSObject,Codable{
    /// 任务ID
    var taskId:Int64?
    /// 码率名称
    var name:String?
    /// 媒体类型
    var mediaType:Int?
    /// 状态
    var status:Int?
    /// 进度
    var progress:String?
    /// 文件大小
    var size:Int64?
    /// 转码模板ID
    var transcodeTemplateId:Int?
    /// 码率
    var bitrate:Int64?
    /// 编码格式
    var codec:String?
    /// 封装格式
    var format:String?
    /// 宽度
    var width:Int?
    /// 高度
    var height:Int?
    /// 帧率
    var fps:String?
    /// 创建时间
    var createTime:String?
    /// 更新时间
    var updateTime:String?



    public override init(){
            super.init()
    }

    enum GetTranscodeTaskRespCodingKeys: String, CodingKey {
        case taskId
        case name
        case mediaType
        case status
        case progress
        case size
        case transcodeTemplateId
        case bitrate
        case codec
        case format
        case width
        case height
        case fps
        case createTime
        case updateTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetTranscodeTaskRespCodingKeys.self)
        if decoderContainer.contains(.taskId)
        {
            self.taskId = try decoderContainer.decode(Int64?.self, forKey: .taskId)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.mediaType)
        {
            self.mediaType = try decoderContainer.decode(Int?.self, forKey: .mediaType)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Int?.self, forKey: .status)
        }
        if decoderContainer.contains(.progress)
        {
            self.progress = try decoderContainer.decode(String?.self, forKey: .progress)
        }
        if decoderContainer.contains(.size)
        {
            self.size = try decoderContainer.decode(Int64?.self, forKey: .size)
        }
        if decoderContainer.contains(.transcodeTemplateId)
        {
            self.transcodeTemplateId = try decoderContainer.decode(Int?.self, forKey: .transcodeTemplateId)
        }
        if decoderContainer.contains(.bitrate)
        {
            self.bitrate = try decoderContainer.decode(Int64?.self, forKey: .bitrate)
        }
        if decoderContainer.contains(.codec)
        {
            self.codec = try decoderContainer.decode(String?.self, forKey: .codec)
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
        if decoderContainer.contains(.fps)
        {
            self.fps = try decoderContainer.decode(String?.self, forKey: .fps)
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
public extension GetTranscodeTaskResp{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetTranscodeTaskRespCodingKeys.self)
         try encoderContainer.encode(taskId, forKey: .taskId)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(mediaType, forKey: .mediaType)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(progress, forKey: .progress)
         try encoderContainer.encode(size, forKey: .size)
         try encoderContainer.encode(transcodeTemplateId, forKey: .transcodeTemplateId)
         try encoderContainer.encode(bitrate, forKey: .bitrate)
         try encoderContainer.encode(codec, forKey: .codec)
         try encoderContainer.encode(format, forKey: .format)
         try encoderContainer.encode(width, forKey: .width)
         try encoderContainer.encode(height, forKey: .height)
         try encoderContainer.encode(fps, forKey: .fps)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}