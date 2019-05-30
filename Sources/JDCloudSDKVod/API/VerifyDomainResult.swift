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

   Domain
   域名管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 校验域名
@objc(VerifyDomainResult)
public class VerifyDomainResult:NSObject,JdCloudResult
{
    /// 校验域名
    var domainName:String?

    /// 校验是否通过
    var verified:Bool?

    /// ICP信息
    var icpInfo:String?



    public override init(){
        super.init()
    }

    enum VerifyDomainResultCodingKeys: String, CodingKey {
        case domainName
        case verified
        case icpInfo
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: VerifyDomainResultCodingKeys.self)
        if decoderContainer.contains(.domainName)
        {
            self.domainName = try decoderContainer.decode(String?.self, forKey: .domainName)
        }
        if decoderContainer.contains(.verified)
        {
            self.verified = try decoderContainer.decode(Bool?.self, forKey: .verified)
        }
        if decoderContainer.contains(.icpInfo)
        {
            self.icpInfo = try decoderContainer.decode(String?.self, forKey: .icpInfo)
        }
    }
}
public extension VerifyDomainResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: VerifyDomainResultCodingKeys.self)
        try encoderContainer.encode(domainName, forKey: .domainName)
        try encoderContainer.encode(verified, forKey: .verified)
        try encoderContainer.encode(icpInfo, forKey: .icpInfo)
    }
}
