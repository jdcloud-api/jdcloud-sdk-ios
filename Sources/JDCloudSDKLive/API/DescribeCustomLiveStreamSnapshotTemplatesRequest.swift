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
import JDCloudSDKCommon


///  查询直播截图模板列表
@objc(DescribeCustomLiveStreamSnapshotTemplatesRequest)
public class DescribeCustomLiveStreamSnapshotTemplatesRequest:JdCloudRequest
{
    /// 页码
      /// - 取值范围 [1, 100000]
      /// 
    var pageNum:Int?

    /// 分页大小
      /// - 取值范围 [10, 100]
      /// 
    var pageSize:Int?

    /// 截图模板查询过滤条件
      /// - name:   template 录制模板自定义名称
      /// - value:  如果参数为空，则查询全部
      /// 
    var filters:[Filter?]?




    enum DescribeCustomLiveStreamSnapshotTemplatesRequestRequestCodingKeys: String, CodingKey {
        case pageNum
        case pageSize
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeCustomLiveStreamSnapshotTemplatesRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNum, forKey: .pageNum)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(filters, forKey: .filters)

    }
}
