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

   Live API
   直播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询录制模板列表
@objc(DescribeCustomLiveStreamWatermarkTemplatesResult)
public class DescribeCustomLiveStreamWatermarkTemplatesResult:NSObject,JdCloudResult
{
    /// 当前页码
    var pageNumber:Int?

    /// 每页数量
    var pageSize:Int?

    /// 查询总数
    var totalCount:Double?

    /// WatermarkTemplates
    var watermarkTemplates:WatermarkTemplate?



    public override init(){
        super.init()
    }

    enum DescribeCustomLiveStreamWatermarkTemplatesResultCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case totalCount
        case watermarkTemplates
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeCustomLiveStreamWatermarkTemplatesResultCodingKeys.self)
        self.pageNumber = try decoderContainer.decode(Int?.self, forKey: .pageNumber)
        self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        self.totalCount = try decoderContainer.decode(Double?.self, forKey: .totalCount)
        self.watermarkTemplates = try decoderContainer.decode(WatermarkTemplate?.self, forKey: .watermarkTemplates)
    }
}
public extension DescribeCustomLiveStreamWatermarkTemplatesResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeCustomLiveStreamWatermarkTemplatesResultCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
        try encoderContainer.encode(watermarkTemplates, forKey: .watermarkTemplates)
    }
}
