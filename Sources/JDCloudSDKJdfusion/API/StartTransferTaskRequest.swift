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


///  根据指定ID启动任务
@objc(StartTransferTaskRequest)
public class StartTransferTaskRequest:JdCloudRequest
{
    /// 用户ID
    var id:String


    public init(regionId: String,id:String){
        self.id = id
        super.init(regionId: regionId)
    }


    enum StartTransferTaskRequestRequestCodingKeys: String, CodingKey {
        case id
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StartTransferTaskRequestRequestCodingKeys.self)
        try encoderContainer.encode(id, forKey: .id)

    }
}
