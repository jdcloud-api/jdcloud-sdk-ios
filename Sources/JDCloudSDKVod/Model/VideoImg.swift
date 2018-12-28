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

///  videoImg
@objc(VideoImg)
public class VideoImg:NSObject,Codable{
    /// 视频ID
    var mid:String?
    /// 视频名称
    var videoName:String?
    /// 片源地址
    var url:String?
    /// 封面图地址
    var imgUrl:String?
    /// 视频分类ID
    var categoryId:Double?
    /// 视频分类名称
    var category:String?
    /// 状态
    var status:Int?
    /// 文件大小
    var size:Double?
    /// 视频时长
    var duration:Double?
    /// 创建时间
    var createTime:String?
    /// 更新时间
    var updateTime:String?
    /// 标签
    var tags:String?
    /// 视频介绍
    var notes:String?
    /// 截图成品
    var imgList:Img?



    public override init(){
            super.init()
    }

    enum VideoImgCodingKeys: String, CodingKey {
        case mid
        case videoName
        case url
        case imgUrl
        case categoryId
        case category
        case status
        case size
        case duration
        case createTime
        case updateTime
        case tags
        case notes
        case imgList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: VideoImgCodingKeys.self)
        self.mid = try decoderContainer.decode(String?.self, forKey: .mid)
        self.videoName = try decoderContainer.decode(String?.self, forKey: .videoName)
        self.url = try decoderContainer.decode(String?.self, forKey: .url)
        self.imgUrl = try decoderContainer.decode(String?.self, forKey: .imgUrl)
        self.categoryId = try decoderContainer.decode(Double?.self, forKey: .categoryId)
        self.category = try decoderContainer.decode(String?.self, forKey: .category)
        self.status = try decoderContainer.decode(Int?.self, forKey: .status)
        self.size = try decoderContainer.decode(Double?.self, forKey: .size)
        self.duration = try decoderContainer.decode(Double?.self, forKey: .duration)
        self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        self.tags = try decoderContainer.decode(String?.self, forKey: .tags)
        self.notes = try decoderContainer.decode(String?.self, forKey: .notes)
        self.imgList = try decoderContainer.decode(Img?.self, forKey: .imgList)
    }
}
public extension VideoImg{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: VideoImgCodingKeys.self)
         try encoderContainer.encode(mid, forKey: .mid)
         try encoderContainer.encode(videoName, forKey: .videoName)
         try encoderContainer.encode(url, forKey: .url)
         try encoderContainer.encode(imgUrl, forKey: .imgUrl)
         try encoderContainer.encode(categoryId, forKey: .categoryId)
         try encoderContainer.encode(category, forKey: .category)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(size, forKey: .size)
         try encoderContainer.encode(duration, forKey: .duration)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(tags, forKey: .tags)
         try encoderContainer.encode(notes, forKey: .notes)
         try encoderContainer.encode(imgList, forKey: .imgList)
    }
}
