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

   pipeline
   API OF Pipeline Create|Update|Read|Delete|Execute

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 根据uuid获取流水线任务的配置信息
@objc(GetPipelineResult)
public class GetPipelineResult:NSObject,JdCloudResult
{
    /// Pipeline
    var pipeline:Pipeline?



    public override init(){
        super.init()
    }

    enum GetPipelineResultCodingKeys: String, CodingKey {
        case pipeline
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetPipelineResultCodingKeys.self)
        if decoderContainer.contains(.pipeline)
        {
            self.pipeline = try decoderContainer.decode(Pipeline?.self, forKey: .pipeline)
        }
    }
}
public extension GetPipelineResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetPipelineResultCodingKeys.self)
        try encoderContainer.encode(pipeline, forKey: .pipeline)
    }
}
