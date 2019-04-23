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

///  video
@objc(Video)
public class Video:NSObject,Codable{
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
    /// 标签
    var tags:String?
    /// 转码模板ID
    var coderateId:String?
    /// 水印模板ID
    var logoId:String?
    /// MD5值
    var md5:String?
    /// 上传客户
    var clientIp:String?
    /// 上传业务ID
    var clientId:Int?
    /// 存储节点域名
    var endpoint:String?
    /// 存储桶名称
    var bucket:String?
    /// 创建时间
    var createTime:String?
    /// 更新时间
    var updateTime:String?
    /// 码率信息
    var codeList:[Code?]?
    /// 分类父级信息信息
    var categorys:AnyObject?



    public override init(){
            super.init()
    }

    enum VideoCodingKeys: String, CodingKey {
        case mid
        case videoName
        case url
        case imgUrl
        case categoryId
        case category
        case status
        case size
        case duration
        case tags
        case coderateId
        case logoId
        case md5
        case clientIp
        case clientId
        case endpoint
        case bucket
        case createTime
        case updateTime
        case codeList
        case categorys
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: VideoCodingKeys.self)
        if decoderContainer.contains(.mid)
        {
            self.mid = try decoderContainer.decode(String?.self, forKey: .mid)
        }
        if decoderContainer.contains(.videoName)
        {
            self.videoName = try decoderContainer.decode(String?.self, forKey: .videoName)
        }
        if decoderContainer.contains(.url)
        {
            self.url = try decoderContainer.decode(String?.self, forKey: .url)
        }
        if decoderContainer.contains(.imgUrl)
        {
            self.imgUrl = try decoderContainer.decode(String?.self, forKey: .imgUrl)
        }
        if decoderContainer.contains(.categoryId)
        {
            self.categoryId = try decoderContainer.decode(Double?.self, forKey: .categoryId)
        }
        if decoderContainer.contains(.category)
        {
            self.category = try decoderContainer.decode(String?.self, forKey: .category)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Int?.self, forKey: .status)
        }
        if decoderContainer.contains(.size)
        {
            self.size = try decoderContainer.decode(Double?.self, forKey: .size)
        }
        if decoderContainer.contains(.duration)
        {
            self.duration = try decoderContainer.decode(Double?.self, forKey: .duration)
        }
        if decoderContainer.contains(.tags)
        {
            self.tags = try decoderContainer.decode(String?.self, forKey: .tags)
        }
        if decoderContainer.contains(.coderateId)
        {
            self.coderateId = try decoderContainer.decode(String?.self, forKey: .coderateId)
        }
        if decoderContainer.contains(.logoId)
        {
            self.logoId = try decoderContainer.decode(String?.self, forKey: .logoId)
        }
        if decoderContainer.contains(.md5)
        {
            self.md5 = try decoderContainer.decode(String?.self, forKey: .md5)
        }
        if decoderContainer.contains(.clientIp)
        {
            self.clientIp = try decoderContainer.decode(String?.self, forKey: .clientIp)
        }
        if decoderContainer.contains(.clientId)
        {
            self.clientId = try decoderContainer.decode(Int?.self, forKey: .clientId)
        }
        if decoderContainer.contains(.endpoint)
        {
            self.endpoint = try decoderContainer.decode(String?.self, forKey: .endpoint)
        }
        if decoderContainer.contains(.bucket)
        {
            self.bucket = try decoderContainer.decode(String?.self, forKey: .bucket)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.codeList)
        {
            self.codeList = try decoderContainer.decode([Code?]?.self, forKey: .codeList)
        }
    }
}
public extension Video{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: VideoCodingKeys.self)
         try encoderContainer.encode(mid, forKey: .mid)
         try encoderContainer.encode(videoName, forKey: .videoName)
         try encoderContainer.encode(url, forKey: .url)
         try encoderContainer.encode(imgUrl, forKey: .imgUrl)
         try encoderContainer.encode(categoryId, forKey: .categoryId)
         try encoderContainer.encode(category, forKey: .category)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(size, forKey: .size)
         try encoderContainer.encode(duration, forKey: .duration)
         try encoderContainer.encode(tags, forKey: .tags)
         try encoderContainer.encode(coderateId, forKey: .coderateId)
         try encoderContainer.encode(logoId, forKey: .logoId)
         try encoderContainer.encode(md5, forKey: .md5)
         try encoderContainer.encode(clientIp, forKey: .clientIp)
         try encoderContainer.encode(clientId, forKey: .clientId)
         try encoderContainer.encode(endpoint, forKey: .endpoint)
         try encoderContainer.encode(bucket, forKey: .bucket)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(codeList, forKey: .codeList)
    }
}
