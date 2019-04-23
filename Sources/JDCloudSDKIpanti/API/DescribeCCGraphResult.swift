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

   Anti DDoS Pro Flow APIs
   Anti DDoS Pro Flow APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// CC 防护流量报表
@objc(DescribeCCGraphResult)
public class DescribeCCGraphResult:NSObject,JdCloudResult
{
    /// 防护后 CC 次数
    var postProtect:[Int64?]?

    /// 防护前 CC 次数
    var preProtect:[Int64?]?

    /// 时间, 格式: yyyy-MM-dd&#39;T&#39;HH:mm:ssZ
    var time:[String?]?

    /// 流量单位
    var unit:String?



    public override init(){
        super.init()
    }

    enum DescribeCCGraphResultCodingKeys: String, CodingKey {
        case postProtect
        case preProtect
        case time
        case unit
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeCCGraphResultCodingKeys.self)
        if decoderContainer.contains(.postProtect)
        {
            self.postProtect = try decoderContainer.decode([Int64?]?.self, forKey: .postProtect)
        }
        if decoderContainer.contains(.preProtect)
        {
            self.preProtect = try decoderContainer.decode([Int64?]?.self, forKey: .preProtect)
        }
        if decoderContainer.contains(.time)
        {
            self.time = try decoderContainer.decode([String?]?.self, forKey: .time)
        }
        if decoderContainer.contains(.unit)
        {
            self.unit = try decoderContainer.decode(String?.self, forKey: .unit)
        }
    }
}
public extension DescribeCCGraphResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeCCGraphResultCodingKeys.self)
        try encoderContainer.encode(postProtect, forKey: .postProtect)
        try encoderContainer.encode(preProtect, forKey: .preProtect)
        try encoderContainer.encode(time, forKey: .time)
        try encoderContainer.encode(unit, forKey: .unit)
    }
}
