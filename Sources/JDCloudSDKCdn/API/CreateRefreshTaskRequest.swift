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

   JCloud Openapi For CDN
   Openapi For JCLOUD cdn

   OpenAPI spec version: v1
   Contact: pid-cdn@jd.com

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建刷新预热任务
@objc(CreateRefreshTaskRequest)
public class CreateRefreshTaskRequest:JdCloudRequest
{
    /// 刷新预热类型,(url:url刷新,dir:目录刷新,prefetch:预热)
    var taskType:String?

    /// Urls
    var urls:[String?]?




    enum CreateRefreshTaskRequestRequestCodingKeys: String, CodingKey {
        case taskType
        case urls
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateRefreshTaskRequestRequestCodingKeys.self)
        try encoderContainer.encode(taskType, forKey: .taskType)
        try encoderContainer.encode(urls, forKey: .urls)

    }
}
