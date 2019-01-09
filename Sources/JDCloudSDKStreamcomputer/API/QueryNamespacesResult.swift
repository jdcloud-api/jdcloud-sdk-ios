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

   NameSpace相关 API
   流计算NameSpace相关信息接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询租户下的应用列表
@objc(QueryNamespacesResult)
public class QueryNamespacesResult:NSObject,JdCloudResult
{
    /// namespaces信息
    var namespaces:[Namespace?]?



    public override init(){
        super.init()
    }

    enum QueryNamespacesResultCodingKeys: String, CodingKey {
        case namespaces
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueryNamespacesResultCodingKeys.self)
        if decoderContainer.contains(.namespaces)
        {
            self.namespaces = try decoderContainer.decode([Namespace?]?.self, forKey: .namespaces)
        }
    }
}
public extension QueryNamespacesResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryNamespacesResultCodingKeys.self)
        try encoderContainer.encode(namespaces, forKey: .namespaces)
    }
}
