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

/// 查询域名下的APP列表
@objc(DescribeLiveAppResult)
public class DescribeLiveAppResult:NSObject,JdCloudResult
{
    /// 当前页码
    var pageNumber:Int?

    /// 每页数量
    var pageSize:Int?

    /// 查询总数
    var totalCount:Double?

    /// AppList
    var appList:AppList?



    public override init(){
        super.init()
    }

    enum DescribeLiveAppResultCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case totalCount
        case appList
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeLiveAppResultCodingKeys.self)
        self.pageNumber = try decoderContainer.decode(Int?.self, forKey: .pageNumber)
        self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        self.totalCount = try decoderContainer.decode(Double?.self, forKey: .totalCount)
        self.appList = try decoderContainer.decode(AppList?.self, forKey: .appList)
    }
}
public extension DescribeLiveAppResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeLiveAppResultCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
        try encoderContainer.encode(appList, forKey: .appList)
    }
}
