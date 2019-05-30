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

   job api
   API COMPILE CODE TO PACKAGE

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 根据id启动一个编译任务
@objc(StartJobResult)
public class StartJobResult:NSObject,JdCloudResult
{
    /// 提交任务是否成功
    var commitresult:Bool?

    /// 提交运行的构建任务的uuid
    var buildUuid:String?



    public override init(){
        super.init()
    }

    enum StartJobResultCodingKeys: String, CodingKey {
        case commitresult
        case buildUuid
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StartJobResultCodingKeys.self)
        if decoderContainer.contains(.commitresult)
        {
            self.commitresult = try decoderContainer.decode(Bool?.self, forKey: .commitresult)
        }
        if decoderContainer.contains(.buildUuid)
        {
            self.buildUuid = try decoderContainer.decode(String?.self, forKey: .buildUuid)
        }
    }
}
public extension StartJobResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StartJobResultCodingKeys.self)
        try encoderContainer.encode(commitresult, forKey: .commitresult)
        try encoderContainer.encode(buildUuid, forKey: .buildUuid)
    }
}