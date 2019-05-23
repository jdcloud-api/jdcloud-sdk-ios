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

   Live-Video
   直播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  添加用户自定义水印模板
      ///       /// 
@objc(AddCustomLiveStreamWatermarkTemplateRequest)
public class AddCustomLiveStreamWatermarkTemplateRequest:JdCloudRequest
{
    /// x轴偏移量
      /// - 单位: 像素
      /// 
    var offsetX:Int

    /// y轴偏移量:
      /// - 单位: 像素
      /// 
    var offsetY:Int

    /// 水印宽度:
      /// - 取值: [0,1920]
      /// - 单位: 像素
      /// 
    var width:Int

    /// 水印高度:
      /// - 取值: [0,1920]
      /// - 单位: 像素
      /// 
    var height:Int

    /// 自定义水印模板名称
      /// -&amp;ensp;取值要求: 数字、大小写字母、短横线(&quot;-&quot;)、下划线(&quot;_&quot;),
      /// &amp;ensp;&amp;ensp;首尾不能有特殊字符(&quot;-&quot;),
      /// &amp;ensp;&amp;ensp;不超过50字符,utf-8格式
      /// -&amp;ensp;&lt;b&gt;注意: 不能与已定义命名重复&lt;/b&gt;
      /// 
    var template:String

    /// 创建上传任务时返回的uploadId参数，当通过接口上传水印图片时，uploadId必填
      /// 
    var uploadId:String?

    /// 水印地址&lt;br&gt;-&amp;ensp;以&amp;ensp;http:// 开头,可公开访问地址&lt;br&gt;
    var url:String


    public init(regionId: String,offsetX:Int,offsetY:Int,width:Int,height:Int,template:String,url:String){
        self.offsetX = offsetX
        self.offsetY = offsetY
        self.width = width
        self.height = height
        self.template = template
        self.url = url
        super.init(regionId: regionId)
    }


    enum AddCustomLiveStreamWatermarkTemplateRequestRequestCodingKeys: String, CodingKey {
        case offsetX
        case offsetY
        case width
        case height
        case template
        case uploadId
        case url
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddCustomLiveStreamWatermarkTemplateRequestRequestCodingKeys.self)
        try encoderContainer.encode(offsetX, forKey: .offsetX)
        try encoderContainer.encode(offsetY, forKey: .offsetY)
        try encoderContainer.encode(width, forKey: .width)
        try encoderContainer.encode(height, forKey: .height)
        try encoderContainer.encode(template, forKey: .template)
        try encoderContainer.encode(uploadId, forKey: .uploadId)
        try encoderContainer.encode(url, forKey: .url)

    }
}
