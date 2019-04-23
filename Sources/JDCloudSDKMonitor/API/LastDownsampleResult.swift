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

   Monitoring Items APIs
   监控项相关接口，提供可用监控项列表查询和监控数据查询等功能

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查看某资源的最后一个点,metric介绍：&lt;a href&#x3D;&quot;https://docs.jdcloud.com/cn/monitoring/metrics&quot;&gt;Metrics&lt;/a&gt;
@objc(LastDownsampleResult)
public class LastDownsampleResult:NSObject,JdCloudResult
{
    /// Items
    var items:[LastDownsampleRespItem?]?



    public override init(){
        super.init()
    }

    enum LastDownsampleResultCodingKeys: String, CodingKey {
        case items
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: LastDownsampleResultCodingKeys.self)
        if decoderContainer.contains(.items)
        {
            self.items = try decoderContainer.decode([LastDownsampleRespItem?]?.self, forKey: .items)
        }
    }
}
public extension LastDownsampleResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: LastDownsampleResultCodingKeys.self)
        try encoderContainer.encode(items, forKey: .items)
    }
}
