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

/// 添加域名的解析记录
@objc(AddRRResult)
public class AddRRResult:NSObject,JdCloudResult
{
    /// 添加成功后的解析记录结果
    var dataList:RR?



    public override init(){
        super.init()
    }

    enum AddRRResultCodingKeys: String, CodingKey {
        case dataList
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AddRRResultCodingKeys.self)
        if decoderContainer.contains(.dataList)
        {
            self.dataList = try decoderContainer.decode(RR?.self, forKey: .dataList)
        }
    }
}
public extension AddRRResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddRRResultCodingKeys.self)
        try encoderContainer.encode(dataList, forKey: .dataList)
    }
}
