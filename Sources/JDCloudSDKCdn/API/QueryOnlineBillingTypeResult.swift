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

   JCloud Openapi For CDN
   Openapi For JCLOUD cdn

   OpenAPI spec version: v1
   Contact: pid-cdn@jd.com

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 设置线上计费方式
@objc(QueryOnlineBillingTypeResult)
public class QueryOnlineBillingTypeResult:NSObject,JdCloudResult
{
    /// 计费方式,取值[0,1],0:日流量计费,1:日峰值带宽计费.
    var allType:Int32?

    /// vip(1:vip客户,0:普通客户)
    var vip:Int32?



    public override init(){
        super.init()
    }

    enum QueryOnlineBillingTypeResultCodingKeys: String, CodingKey {
        case allType
        case vip
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueryOnlineBillingTypeResultCodingKeys.self)
        if decoderContainer.contains(.allType)
        {
            self.allType = try decoderContainer.decode(Int32?.self, forKey: .allType)
        }
        if decoderContainer.contains(.vip)
        {
            self.vip = try decoderContainer.decode(Int32?.self, forKey: .vip)
        }
    }
}
public extension QueryOnlineBillingTypeResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryOnlineBillingTypeResultCodingKeys.self)
        try encoderContainer.encode(allType, forKey: .allType)
        try encoderContainer.encode(vip, forKey: .vip)
    }
}
