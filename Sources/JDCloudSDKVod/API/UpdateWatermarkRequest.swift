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


///  修改水印
@objc(UpdateWatermarkRequest)
public class UpdateWatermarkRequest:JdCloudRequest
{
    /// 水印ID
    var id:Int64?

    /// 水印名称
    var name:String?

    /// 图片地址
    var imgUrl:String?

    /// 宽度
    var width:Int?

    /// 高度
    var height:Int?

    /// 水印位置
    var position:String?

    /// 偏移单位
    var unit:String?

    /// 水平偏移
    var offsetX:Int?

    /// 竖直偏移
    var offsetY:Int?

    /// 水印ID
    var watermarkId:Int64


    public init(regionId: String,watermarkId:Int64){
        self.watermarkId = watermarkId
        super.init(regionId: regionId)
    }


    enum UpdateWatermarkRequestRequestCodingKeys: String, CodingKey {
        case id
        case name
        case imgUrl
        case width
        case height
        case position
        case unit
        case offsetX
        case offsetY
        case watermarkId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdateWatermarkRequestRequestCodingKeys.self)
        try encoderContainer.encode(id, forKey: .id)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(imgUrl, forKey: .imgUrl)
        try encoderContainer.encode(width, forKey: .width)
        try encoderContainer.encode(height, forKey: .height)
        try encoderContainer.encode(position, forKey: .position)
        try encoderContainer.encode(unit, forKey: .unit)
        try encoderContainer.encode(offsetX, forKey: .offsetX)
        try encoderContainer.encode(offsetY, forKey: .offsetY)
        try encoderContainer.encode(watermarkId, forKey: .watermarkId)

    }
}
