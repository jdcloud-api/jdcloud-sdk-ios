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

   解析记录
   云解析OpenAPI解析记录接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询云解析所有的基础解析线路。&lt;br&gt;
      ///       /// 在使用解析线路的参数之前，请调用此接口获取解析线路的ID。
      ///       /// 
@objc(GetViewTreeResult)
public class GetViewTreeResult:NSObject,JdCloudResult
{
    /// 解析线路的树
    var data:[ViewTree?]?



    public override init(){
        super.init()
    }

    enum GetViewTreeResultCodingKeys: String, CodingKey {
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetViewTreeResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode([ViewTree?]?.self, forKey: .data)
        }
    }
}
public extension GetViewTreeResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetViewTreeResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
    }
}
