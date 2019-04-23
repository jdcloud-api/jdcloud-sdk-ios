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


///  添加用户自定义直播录制模板
      ///       /// 
@objc(AddCustomLiveStreamRecordTemplateRequest)
public class AddCustomLiveStreamRecordTemplateRequest:JdCloudRequest
{
    /// 自动录制周期
      /// - 取值: [15,360]
      /// - 单位: 分钟
      /// 
    var recordPeriod:Int

    /// 存储桶
      /// 
    var saveBucket:String

    /// endpoint
      /// 
    var saveEndpoint:String

    /// 录制文件格式:
      /// - 取值: ts,flv,mp4 (多种类型之间用;隔开)
      /// - 不区分大小写
      /// 
    var recordFileType:String

    /// 录制模板自定义名称:
      ///  - 取值要求：数字、大小写字母或短横线(&quot;-&quot;)
      ///  - &lt;b&gt;注意: 不能与已定义命名重复&lt;/b&gt;
      /// 
    var template:String


    public init(regionId: String,recordPeriod:Int,saveBucket:String,saveEndpoint:String,recordFileType:String,template:String){
        self.recordPeriod = recordPeriod
        self.saveBucket = saveBucket
        self.saveEndpoint = saveEndpoint
        self.recordFileType = recordFileType
        self.template = template
        super.init(regionId: regionId)
    }


    enum AddCustomLiveStreamRecordTemplateRequestRequestCodingKeys: String, CodingKey {
        case recordPeriod
        case saveBucket
        case saveEndpoint
        case recordFileType
        case template
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddCustomLiveStreamRecordTemplateRequestRequestCodingKeys.self)
        try encoderContainer.encode(recordPeriod, forKey: .recordPeriod)
        try encoderContainer.encode(saveBucket, forKey: .saveBucket)
        try encoderContainer.encode(saveEndpoint, forKey: .saveEndpoint)
        try encoderContainer.encode(recordFileType, forKey: .recordFileType)
        try encoderContainer.encode(template, forKey: .template)

    }
}
