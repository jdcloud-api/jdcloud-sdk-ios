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

   Function OpenAPI
   

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询别名列表
@objc(ListAliasResult)
public class ListAliasResult:NSObject,JdCloudResult
{
    /// Data
    var data:Alias?



    public override init(){
        super.init()
    }

    enum ListAliasResultCodingKeys: String, CodingKey {
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ListAliasResultCodingKeys.self)
        self.data = try decoderContainer.decode(Alias?.self, forKey: .data)
    }
}
public extension ListAliasResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ListAliasResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
    }
}
