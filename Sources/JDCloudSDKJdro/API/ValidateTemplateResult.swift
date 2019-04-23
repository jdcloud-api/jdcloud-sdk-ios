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

   Template
   Interface of Template

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 模板校验
@objc(ValidateTemplateResult)
public class ValidateTemplateResult:NSObject,JdCloudResult
{
    /// Describe
    var describe:String?

    /// 验证模板结果信息，JSON格式
    var result:AnyObject?



    public override init(){
        super.init()
    }

    enum ValidateTemplateResultCodingKeys: String, CodingKey {
        case describe
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ValidateTemplateResultCodingKeys.self)
        if decoderContainer.contains(.describe)
        {
            self.describe = try decoderContainer.decode(String?.self, forKey: .describe)
        }
    }
}
public extension ValidateTemplateResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ValidateTemplateResultCodingKeys.self)
        try encoderContainer.encode(describe, forKey: .describe)
    }
}
