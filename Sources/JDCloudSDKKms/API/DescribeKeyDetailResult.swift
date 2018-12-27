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

   Key Management Service
   基于硬件保护密钥的安全数据托管服务

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 获取版本详情
@objc(DescribeKeyDetailResult)
public class DescribeKeyDetailResult:NSObject,JdCloudResult
{
    /// KeyDetail
    var keyDetail:KeyDetail?



    public override init(){
        super.init()
    }

    enum DescribeKeyDetailResultCodingKeys: String, CodingKey {
        case keyDetail
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeKeyDetailResultCodingKeys.self)
        self.keyDetail = try decoderContainer.decode(KeyDetail?.self, forKey: .keyDetail)
    }
}
public extension DescribeKeyDetailResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeKeyDetailResultCodingKeys.self)
        try encoderContainer.encode(keyDetail, forKey: .keyDetail)
    }
}