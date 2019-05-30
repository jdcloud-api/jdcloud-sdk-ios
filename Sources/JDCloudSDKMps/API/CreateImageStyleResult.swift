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

   图片样式相关接口
   图片样式API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 添加图片样式
@objc(CreateImageStyleResult)
public class CreateImageStyleResult:NSObject,JdCloudResult
{
    /// 图片样式ID
    var id:Int64?



    public override init(){
        super.init()
    }

    enum CreateImageStyleResultCodingKeys: String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateImageStyleResultCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int64?.self, forKey: .id)
        }
    }
}
public extension CreateImageStyleResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateImageStyleResultCodingKeys.self)
        try encoderContainer.encode(id, forKey: .id)
    }
}