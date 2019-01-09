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

///  镜像详情数据结构
@objc(ImageDetail)
public class ImageDetail:NSObject,Codable{
    /// image registry 表示镜像的注册表归属
    var registryName:String?
    /// image repository表示镜像的仓库归属
    var repositoryName:String?
    /// image manifest的sha256摘要
    var imageDigest:String?
    /// 镜像的Manifest
    var imageManifest:String?
    /// 当前image被push到repository的时间
    var imagePushedAt:String?
    /// image在repository中的大小。从Docker 1.9之后的版本, Docker client会压缩镜像层数据再push到V2版本的Docker registry。
      /// docker image命令显示的是解压后的镜像大小，因此会比DescribeImages接口返回的镜像大小会大很多。      
      /// 
    var imageSizeMB:Double?
    /// 镜像关联的所有Tag
    var imageTags:[String?]?
    /// 最近pull的时间
    var lastPullAt:String?
    /// 镜像被拉取次数
    var totalPullTimes:Int?



    public override init(){
            super.init()
    }

    enum ImageDetailCodingKeys: String, CodingKey {
        case registryName
        case repositoryName
        case imageDigest
        case imageManifest
        case imagePushedAt
        case imageSizeMB
        case imageTags
        case lastPullAt
        case totalPullTimes
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ImageDetailCodingKeys.self)
        if decoderContainer.contains(.registryName)
        {
            self.registryName = try decoderContainer.decode(String?.self, forKey: .registryName)
        }
        if decoderContainer.contains(.repositoryName)
        {
            self.repositoryName = try decoderContainer.decode(String?.self, forKey: .repositoryName)
        }
        if decoderContainer.contains(.imageDigest)
        {
            self.imageDigest = try decoderContainer.decode(String?.self, forKey: .imageDigest)
        }
        if decoderContainer.contains(.imageManifest)
        {
            self.imageManifest = try decoderContainer.decode(String?.self, forKey: .imageManifest)
        }
        if decoderContainer.contains(.imagePushedAt)
        {
            self.imagePushedAt = try decoderContainer.decode(String?.self, forKey: .imagePushedAt)
        }
        if decoderContainer.contains(.imageSizeMB)
        {
            self.imageSizeMB = try decoderContainer.decode(Double?.self, forKey: .imageSizeMB)
        }
        if decoderContainer.contains(.imageTags)
        {
            self.imageTags = try decoderContainer.decode([String?]?.self, forKey: .imageTags)
        }
        if decoderContainer.contains(.lastPullAt)
        {
            self.lastPullAt = try decoderContainer.decode(String?.self, forKey: .lastPullAt)
        }
        if decoderContainer.contains(.totalPullTimes)
        {
            self.totalPullTimes = try decoderContainer.decode(Int?.self, forKey: .totalPullTimes)
        }
    }
}
public extension ImageDetail{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ImageDetailCodingKeys.self)
         try encoderContainer.encode(registryName, forKey: .registryName)
         try encoderContainer.encode(repositoryName, forKey: .repositoryName)
         try encoderContainer.encode(imageDigest, forKey: .imageDigest)
         try encoderContainer.encode(imageManifest, forKey: .imageManifest)
         try encoderContainer.encode(imagePushedAt, forKey: .imagePushedAt)
         try encoderContainer.encode(imageSizeMB, forKey: .imageSizeMB)
         try encoderContainer.encode(imageTags, forKey: .imageTags)
         try encoderContainer.encode(lastPullAt, forKey: .lastPullAt)
         try encoderContainer.encode(totalPullTimes, forKey: .totalPullTimes)
    }
}
