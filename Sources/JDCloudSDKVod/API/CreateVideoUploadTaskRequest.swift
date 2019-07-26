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

   Media Upload
   文件上传

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  获取视频上传地址和凭证
@objc(CreateVideoUploadTaskRequest)
public class CreateVideoUploadTaskRequest:JdCloudRequest
{
    /// HTTP 请求方法，取值范围：GET、POST、PUT、DELETE、HEAD、PATCH，默认值为 PUT
    var httpMethod:String?

    /// 视频标题
    var title:String?

    /// 文件名称
    var fileName:String?

    /// 文件大小
    var fileSize:Int64?

    /// 封面地址
    var coverUrl:String?

    /// 视频描述
    var descriptionValue:String?

    /// 分类ID
    var categoryId:Int64?

    /// 视频标签集合
    var tags:[String?]?

    /// 转码模板ID集合
    var transcodeTemplateIds:[Int64?]?

    /// 水印ID集合
    var watermarkIds:[Int64?]?




    enum CreateVideoUploadTaskRequestRequestCodingKeys: String, CodingKey {
        case httpMethod
        case title
        case fileName
        case fileSize
        case coverUrl
        case descriptionValue = "description"
        case categoryId
        case tags
        case transcodeTemplateIds
        case watermarkIds
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateVideoUploadTaskRequestRequestCodingKeys.self)
        try encoderContainer.encode(httpMethod, forKey: .httpMethod)
        try encoderContainer.encode(title, forKey: .title)
        try encoderContainer.encode(fileName, forKey: .fileName)
        try encoderContainer.encode(fileSize, forKey: .fileSize)
        try encoderContainer.encode(coverUrl, forKey: .coverUrl)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
        try encoderContainer.encode(categoryId, forKey: .categoryId)
        try encoderContainer.encode(tags, forKey: .tags)
        try encoderContainer.encode(transcodeTemplateIds, forKey: .transcodeTemplateIds)
        try encoderContainer.encode(watermarkIds, forKey: .watermarkIds)

    }
}
