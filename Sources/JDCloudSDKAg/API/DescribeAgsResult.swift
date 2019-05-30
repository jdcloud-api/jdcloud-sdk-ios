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

   Availability-Group
   高可用组的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 使用过滤条件查询一个或多个高可用组
@objc(DescribeAgsResult)
public class DescribeAgsResult:NSObject,JdCloudResult
{
    /// Ags
    var ags:[AvailabilityGroup?]?

    /// TotalCount
    var totalCount:Int?



    public override init(){
        super.init()
    }

    enum DescribeAgsResultCodingKeys: String, CodingKey {
        case ags
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeAgsResultCodingKeys.self)
        if decoderContainer.contains(.ags)
        {
            self.ags = try decoderContainer.decode([AvailabilityGroup?]?.self, forKey: .ags)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeAgsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAgsResultCodingKeys.self)
        try encoderContainer.encode(ags, forKey: .ags)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
