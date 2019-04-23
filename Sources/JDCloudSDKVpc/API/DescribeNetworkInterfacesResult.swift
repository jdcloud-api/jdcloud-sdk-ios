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

   弹性网卡
   弹性网卡相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询弹性网卡列表
@objc(DescribeNetworkInterfacesResult)
public class DescribeNetworkInterfacesResult:NSObject,JdCloudResult
{
    /// networkInterface资源信息列表
    var networkInterfaces:[NetworkInterface?]?

    /// 总数量
    var totalCount:Double?



    public override init(){
        super.init()
    }

    enum DescribeNetworkInterfacesResultCodingKeys: String, CodingKey {
        case networkInterfaces
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeNetworkInterfacesResultCodingKeys.self)
        if decoderContainer.contains(.networkInterfaces)
        {
            self.networkInterfaces = try decoderContainer.decode([NetworkInterface?]?.self, forKey: .networkInterfaces)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Double?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeNetworkInterfacesResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeNetworkInterfacesResultCodingKeys.self)
        try encoderContainer.encode(networkInterfaces, forKey: .networkInterfaces)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
