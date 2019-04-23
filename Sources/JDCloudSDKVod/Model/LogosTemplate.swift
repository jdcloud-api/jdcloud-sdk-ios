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

///  logosTemplate
@objc(LogosTemplate)
public class LogosTemplate:NSObject,Codable{
    /// 模板ID
    var logoId:Double?
    /// 模板名称
    var name:String?
    /// 图片地址
    var imgUrl:String?
    /// 水印位置
    var position:Int?
    /// 宽
    var width:Int?
    /// 高
    var height:Int?
    /// 偏移单位
    var unit:String?
    /// 水平偏移
    var offsetX:Int?
    /// 垂直偏移
    var offsetY:Int?
    /// 修改时间
    var updateTime:String?



    public override init(){
            super.init()
    }

    enum LogosTemplateCodingKeys: String, CodingKey {
        case logoId
        case name
        case imgUrl
        case position
        case width
        case height
        case unit
        case offsetX
        case offsetY
        case updateTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: LogosTemplateCodingKeys.self)
        if decoderContainer.contains(.logoId)
        {
            self.logoId = try decoderContainer.decode(Double?.self, forKey: .logoId)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.imgUrl)
        {
            self.imgUrl = try decoderContainer.decode(String?.self, forKey: .imgUrl)
        }
        if decoderContainer.contains(.position)
        {
            self.position = try decoderContainer.decode(Int?.self, forKey: .position)
        }
        if decoderContainer.contains(.width)
        {
            self.width = try decoderContainer.decode(Int?.self, forKey: .width)
        }
        if decoderContainer.contains(.height)
        {
            self.height = try decoderContainer.decode(Int?.self, forKey: .height)
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
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
    }
}
public extension LogosTemplate{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: LogosTemplateCodingKeys.self)
         try encoderContainer.encode(logoId, forKey: .logoId)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(imgUrl, forKey: .imgUrl)
         try encoderContainer.encode(position, forKey: .position)
         try encoderContainer.encode(width, forKey: .width)
         try encoderContainer.encode(height, forKey: .height)
         try encoderContainer.encode(unit, forKey: .unit)
         try encoderContainer.encode(offsetX, forKey: .offsetX)
         try encoderContainer.encode(offsetY, forKey: .offsetY)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}
