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

/// 查询截图列表
      ///       /// 
@objc(DescribeLiveSnapshotsResult)
public class DescribeLiveSnapshotsResult:NSObject,JdCloudResult
{
    /// 当前页码
    var pageNumber:Int?

    /// 每页数量
    var pageSize:Int?

    /// 查询总数
    var totalCount:Int?

    /// 截图信息集合
    var domainDetails:[Snapshot?]?



    public override init(){
        super.init()
    }

    enum DescribeLiveSnapshotsResultCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case totalCount
        case domainDetails
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeLiveSnapshotsResultCodingKeys.self)
        if decoderContainer.contains(.pageNumber)
        {
            self.pageNumber = try decoderContainer.decode(Int?.self, forKey: .pageNumber)
        }
        if decoderContainer.contains(.pageSize)
        {
            self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
        if decoderContainer.contains(.domainDetails)
        {
            self.domainDetails = try decoderContainer.decode([Snapshot?]?.self, forKey: .domainDetails)
        }
    }
}
public extension DescribeLiveSnapshotsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeLiveSnapshotsResultCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
        try encoderContainer.encode(domainDetails, forKey: .domainDetails)
    }
}
