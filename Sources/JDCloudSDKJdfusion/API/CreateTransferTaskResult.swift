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

   Oss-TransferTasks
   与OSS迁移任务相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 创建任务
@objc(CreateTransferTaskResult)
public class CreateTransferTaskResult:NSObject,JdCloudResult
{
    /// Task
    var task:TransferTaskInfoWithID?



    public override init(){
        super.init()
    }

    enum CreateTransferTaskResultCodingKeys: String, CodingKey {
        case task
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateTransferTaskResultCodingKeys.self)
        if decoderContainer.contains(.task)
        {
            self.task = try decoderContainer.decode(TransferTaskInfoWithID?.self, forKey: .task)
        }
    }
}
public extension CreateTransferTaskResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateTransferTaskResultCodingKeys.self)
        try encoderContainer.encode(task, forKey: .task)
    }
}
