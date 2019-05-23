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

///  recordFile
@objc(RecordFile)
public class RecordFile:NSObject,Codable{
    /// 录制文件ID
      /// 
    var fileId:String?
    /// 文件格式
      /// 
    var format:String?
    /// 视频宽度
      /// - 单位: 像素
      /// 
    var width:Int?
    /// 视频高度
      /// - 单位: 像素
      /// 
    var height:Int?
    /// 录制开始时间
      /// 
    var startTime:String?
    /// 录制结束时间
      /// 
    var endTime:String?
    /// 视频时长，单位：毫秒
      /// 
    var duration:Int?
    /// 文件大小，单位：B
      /// 
    var size:Int?
    /// 码率
      /// 
    var bitrate:Int?
    /// 帧率
      /// 
    var fps:Int?
    /// 文件地址
      /// 
    var fileUrl:String?
    /// 创建时间
      /// 
    var createTime:String?



    public override init(){
            super.init()
    }

    enum RecordFileCodingKeys: String, CodingKey {
        case fileId
        case format
        case width
        case height
        case startTime
        case endTime
        case duration
        case size
        case bitrate
        case fps
        case fileUrl
        case createTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RecordFileCodingKeys.self)
        if decoderContainer.contains(.fileId)
        {
            self.fileId = try decoderContainer.decode(String?.self, forKey: .fileId)
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
        if decoderContainer.contains(.startTime)
        {
            self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        }
        if decoderContainer.contains(.endTime)
        {
            self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        }
        if decoderContainer.contains(.duration)
        {
            self.duration = try decoderContainer.decode(Int?.self, forKey: .duration)
        }
        if decoderContainer.contains(.size)
        {
            self.size = try decoderContainer.decode(Int?.self, forKey: .size)
        }
        if decoderContainer.contains(.bitrate)
        {
            self.bitrate = try decoderContainer.decode(Int?.self, forKey: .bitrate)
        }
        if decoderContainer.contains(.fps)
        {
            self.fps = try decoderContainer.decode(Int?.self, forKey: .fps)
        }
        if decoderContainer.contains(.fileUrl)
        {
            self.fileUrl = try decoderContainer.decode(String?.self, forKey: .fileUrl)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
    }
}
public extension RecordFile{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RecordFileCodingKeys.self)
         try encoderContainer.encode(fileId, forKey: .fileId)
         try encoderContainer.encode(format, forKey: .format)
         try encoderContainer.encode(width, forKey: .width)
         try encoderContainer.encode(height, forKey: .height)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(duration, forKey: .duration)
         try encoderContainer.encode(size, forKey: .size)
         try encoderContainer.encode(bitrate, forKey: .bitrate)
         try encoderContainer.encode(fps, forKey: .fps)
         try encoderContainer.encode(fileUrl, forKey: .fileUrl)
         try encoderContainer.encode(createTime, forKey: .createTime)
    }
}
