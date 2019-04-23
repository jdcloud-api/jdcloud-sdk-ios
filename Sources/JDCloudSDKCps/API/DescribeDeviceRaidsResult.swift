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

   云物理服务器
   云物理服务器操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询某种实例类型的云物理服务器支持的RAID类型，可查询系统盘RAID类型和数据盘RAID类型
@objc(DescribeDeviceRaidsResult)
public class DescribeDeviceRaidsResult:NSObject,JdCloudResult
{
    /// Raids
    var raids:[Raid?]?



    public override init(){
        super.init()
    }

    enum DescribeDeviceRaidsResultCodingKeys: String, CodingKey {
        case raids
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeDeviceRaidsResultCodingKeys.self)
        if decoderContainer.contains(.raids)
        {
            self.raids = try decoderContainer.decode([Raid?]?.self, forKey: .raids)
        }
    }
}
public extension DescribeDeviceRaidsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDeviceRaidsResultCodingKeys.self)
        try encoderContainer.encode(raids, forKey: .raids)
    }
}
