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

///  transcodeTask
@objc(TranscodeTask)
public class TranscodeTask:NSObject,Codable{
    /// 任务ID
    var taskId:Int64?
    /// 视频ID
    var videoId:String?
    /// 转码模板ID
    var templateId:Int64?
    /// 水印ID列表
    var watermarkIds:[Int64?]?



    public override init(){
            super.init()
    }

    enum TranscodeTaskCodingKeys: String, CodingKey {
        case taskId
        case videoId
        case templateId
        case watermarkIds
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TranscodeTaskCodingKeys.self)
        if decoderContainer.contains(.taskId)
        {
            self.taskId = try decoderContainer.decode(Int64?.self, forKey: .taskId)
        }
        if decoderContainer.contains(.videoId)
        {
            self.videoId = try decoderContainer.decode(String?.self, forKey: .videoId)
        }
        if decoderContainer.contains(.templateId)
        {
            self.templateId = try decoderContainer.decode(Int64?.self, forKey: .templateId)
        }
        if decoderContainer.contains(.watermarkIds)
        {
            self.watermarkIds = try decoderContainer.decode([Int64?]?.self, forKey: .watermarkIds)
        }
    }
}
public extension TranscodeTask{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TranscodeTaskCodingKeys.self)
         try encoderContainer.encode(taskId, forKey: .taskId)
         try encoderContainer.encode(videoId, forKey: .videoId)
         try encoderContainer.encode(templateId, forKey: .templateId)
         try encoderContainer.encode(watermarkIds, forKey: .watermarkIds)
    }
}
