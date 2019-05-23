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

/// 批量删除编译任务
@objc(DeleteJobsResult)
public class DeleteJobsResult:NSObject,JdCloudResult
{
    /// true表示删除成功，false表示删除失败
    var result:Bool?

    /// Ids
    var ids:[String?]?



    public override init(){
        super.init()
    }

    enum DeleteJobsResultCodingKeys: String, CodingKey {
        case result
        case ids
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeleteJobsResultCodingKeys.self)
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode(Bool?.self, forKey: .result)
        }
        if decoderContainer.contains(.ids)
        {
            self.ids = try decoderContainer.decode([String?]?.self, forKey: .ids)
        }
    }
}
public extension DeleteJobsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteJobsResultCodingKeys.self)
        try encoderContainer.encode(result, forKey: .result)
        try encoderContainer.encode(ids, forKey: .ids)
    }
}
