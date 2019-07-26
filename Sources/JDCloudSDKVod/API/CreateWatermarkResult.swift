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

   Watermark
   水印管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 添加水印
@objc(CreateWatermarkResult)
public class CreateWatermarkResult:NSObject,JdCloudResult
{
    /// 水印ID
    var id:Int64?

    /// 水印名称
    var name:String?

    /// 图片地址
    var imgUrl:String?

    /// 水印宽度
    var width:Int?

    /// 水印高度
    var height:Int?

    /// 水印位置。取值范围：
      ///   LT - 左上
      ///   RT - 右上
      ///   LB - 左下
      ///   RB - 右下
      /// 
    var position:String?

    /// 偏移单位，目前仅支持像素
    var unit:String?

    /// 水平偏移
    var offsetX:Int?

    /// 竖直偏移
    var offsetY:Int?

    /// 创建时间
    var createTime:String?

    /// 修改时间
    var updateTime:String?



    public override init(){
        super.init()
    }

    enum CreateWatermarkResultCodingKeys: String, CodingKey {
        case id
        case name
        case imgUrl
        case width
        case height
        case position
        case unit
        case offsetX
        case offsetY
        case createTime
        case updateTime
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateWatermarkResultCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int64?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.imgUrl)
        {
            self.imgUrl = try decoderContainer.decode(String?.self, forKey: .imgUrl)
        }
        if decoderContainer.contains(.width)
        {
            self.width = try decoderContainer.decode(Int?.self, forKey: .width)
        }
        if decoderContainer.contains(.height)
        {
            self.height = try decoderContainer.decode(Int?.self, forKey: .height)
        }
        if decoderContainer.contains(.position)
        {
            self.position = try decoderContainer.decode(String?.self, forKey: .position)
        }
        if decoderContainer.contains(.unit)
        {
            self.unit = try decoderContainer.decode(String?.self, forKey: .unit)
        }
        if decoderContainer.contains(.offsetX)
        {
            self.offsetX = try decoderContainer.decode(Int?.self, forKey: .offsetX)
        }
        if decoderContainer.contains(.offsetY)
        {
            self.offsetY = try decoderContainer.decode(Int?.self, forKey: .offsetY)
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
public extension CreateWatermarkResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateWatermarkResultCodingKeys.self)
        try encoderContainer.encode(id, forKey: .id)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(imgUrl, forKey: .imgUrl)
        try encoderContainer.encode(width, forKey: .width)
        try encoderContainer.encode(height, forKey: .height)
        try encoderContainer.encode(position, forKey: .position)
        try encoderContainer.encode(unit, forKey: .unit)
        try encoderContainer.encode(offsetX, forKey: .offsetX)
        try encoderContainer.encode(offsetY, forKey: .offsetY)
        try encoderContainer.encode(createTime, forKey: .createTime)
        try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}
