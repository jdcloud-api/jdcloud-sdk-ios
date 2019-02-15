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

   云硬盘相关接口
   云硬盘相关接口，提供批量创建云硬盘，查询云硬盘，删除云硬盘，对云硬盘进行扩容，修改云硬盘信息以及使用快照恢复云硬盘等功能。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// -   查询您已经创建的云硬盘。
      ///       /// -   filters多个过滤条件之间是逻辑与(AND)，每个条件内部的多个取值是逻辑或(OR)
      ///       /// 
@objc(DescribeDisksResult)
public class DescribeDisksResult:NSObject,JdCloudResult
{
    /// 查询的云硬盘信息详情列表
    var disks:[Disk?]?

    /// 查询的云硬盘数目
    var totalCount:Int?



    public override init(){
        super.init()
    }

    enum DescribeDisksResultCodingKeys: String, CodingKey {
        case disks
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeDisksResultCodingKeys.self)
        if decoderContainer.contains(.disks)
        {
            self.disks = try decoderContainer.decode([Disk?]?.self, forKey: .disks)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeDisksResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDisksResultCodingKeys.self)
        try encoderContainer.encode(disks, forKey: .disks)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
