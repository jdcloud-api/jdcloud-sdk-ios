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

   Stack
   Interface of Stack

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询资源栈事件列表
@objc(DescribeStackEventsResult)
public class DescribeStackEventsResult:NSObject,JdCloudResult
{
    /// List
    var list:[EventOut?]?

    /// TotalCount
    var totalCount:Int64?



    public override init(){
        super.init()
    }

    enum DescribeStackEventsResultCodingKeys: String, CodingKey {
        case list
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeStackEventsResultCodingKeys.self)
        if decoderContainer.contains(.list)
        {
            self.list = try decoderContainer.decode([EventOut?]?.self, forKey: .list)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int64?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeStackEventsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeStackEventsResultCodingKeys.self)
        try encoderContainer.encode(list, forKey: .list)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}