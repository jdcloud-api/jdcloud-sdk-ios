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

/// 查询物理服务器可预装的软件列表&lt;br/&gt;
      ///       /// 可调用接口（describeOS）获取云物理服务器支持的操作系统列表，根据不同的操作系统类型得到支持的可预装的软件列表&lt;br/&gt;
      ///       /// 
@objc(DescribeSoftwareResult)
public class DescribeSoftwareResult:NSObject,JdCloudResult
{
    /// Softwares
    var softwares:[Software?]?



    public override init(){
        super.init()
    }

    enum DescribeSoftwareResultCodingKeys: String, CodingKey {
        case softwares
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeSoftwareResultCodingKeys.self)
        if decoderContainer.contains(.softwares)
        {
            self.softwares = try decoderContainer.decode([Software?]?.self, forKey: .softwares)
        }
    }
}
public extension DescribeSoftwareResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeSoftwareResultCodingKeys.self)
        try encoderContainer.encode(softwares, forKey: .softwares)
    }
}
