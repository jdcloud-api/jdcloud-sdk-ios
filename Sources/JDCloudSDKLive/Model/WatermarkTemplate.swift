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

///  watermarkTemplate
@objc(WatermarkTemplate)
public class WatermarkTemplate:NSObject,Codable{
    /// 水印位置
      /// - 取值范围：左上：1，右上：3， 左下：7，右下：9，默认：1
      /// 
    var position:Int?
    /// 偏移量单位
      /// - 取值: percent,pixel
      /// 
    var offsetUnit:String?
    /// x轴偏移量
      /// 
    var offSetX:Int?
    /// y轴偏移量
      /// 
    var offSetY:Int?
    /// 水印大小单位
      /// - 取值: percent,pixel
      /// 
    var sizeUnit:String?
    /// 水印宽度
      /// 
    var width:Int?
    /// 水印高度
      /// 
    var height:Int?
    /// 水印地址
      /// 
    var url:String?
    /// 水印模板自定义名称
      /// 
    var template:String?



    public override init(){
            super.init()
    }

    enum WatermarkTemplateCodingKeys: String, CodingKey {
        case position
        case offsetUnit
        case offSetX
        case offSetY
        case sizeUnit
        case width
        case height
        case url
        case template
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: WatermarkTemplateCodingKeys.self)
        if decoderContainer.contains(.position)
        {
            self.position = try decoderContainer.decode(Int?.self, forKey: .position)
        }
        if decoderContainer.contains(.offsetUnit)
        {
            self.offsetUnit = try decoderContainer.decode(String?.self, forKey: .offsetUnit)
        }
        if decoderContainer.contains(.offSetX)
        {
            self.offSetX = try decoderContainer.decode(Int?.self, forKey: .offSetX)
        }
        if decoderContainer.contains(.offSetY)
        {
            self.offSetY = try decoderContainer.decode(Int?.self, forKey: .offSetY)
        }
        if decoderContainer.contains(.sizeUnit)
        {
            self.sizeUnit = try decoderContainer.decode(String?.self, forKey: .sizeUnit)
        }
        if decoderContainer.contains(.width)
        {
            self.width = try decoderContainer.decode(Int?.self, forKey: .width)
        }
        if decoderContainer.contains(.height)
        {
            self.height = try decoderContainer.decode(Int?.self, forKey: .height)
        }
        if decoderContainer.contains(.url)
        {
            self.url = try decoderContainer.decode(String?.self, forKey: .url)
        }
        if decoderContainer.contains(.template)
        {
            self.template = try decoderContainer.decode(String?.self, forKey: .template)
        }
    }
}
public extension WatermarkTemplate{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: WatermarkTemplateCodingKeys.self)
         try encoderContainer.encode(position, forKey: .position)
         try encoderContainer.encode(offsetUnit, forKey: .offsetUnit)
         try encoderContainer.encode(offSetX, forKey: .offSetX)
         try encoderContainer.encode(offSetY, forKey: .offSetY)
         try encoderContainer.encode(sizeUnit, forKey: .sizeUnit)
         try encoderContainer.encode(width, forKey: .width)
         try encoderContainer.encode(height, forKey: .height)
         try encoderContainer.encode(url, forKey: .url)
         try encoderContainer.encode(template, forKey: .template)
    }
}
