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

   审计管理
   审计管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 获取某个审计文件的下载链接，同时支持内链和外链，链接的有效时间为24小时&lt;br&gt;- 仅支持SQL Server
@objc(DescribeAuditDownloadURLResult)
public class DescribeAuditDownloadURLResult:NSObject,JdCloudResult
{
    /// 公网下载链接，若当前不可下载，则为空串
    var publicURL:String?

    /// 内网下载链接，若当前不可下载，则为空串
    var internalURL:String?



    public override init(){
        super.init()
    }

    enum DescribeAuditDownloadURLResultCodingKeys: String, CodingKey {
        case publicURL
        case internalURL
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeAuditDownloadURLResultCodingKeys.self)
        if decoderContainer.contains(.publicURL)
        {
            self.publicURL = try decoderContainer.decode(String?.self, forKey: .publicURL)
        }
        if decoderContainer.contains(.internalURL)
        {
            self.internalURL = try decoderContainer.decode(String?.self, forKey: .internalURL)
        }
    }
}
public extension DescribeAuditDownloadURLResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAuditDownloadURLResultCodingKeys.self)
        try encoderContainer.encode(publicURL, forKey: .publicURL)
        try encoderContainer.encode(internalURL, forKey: .internalURL)
    }
}
