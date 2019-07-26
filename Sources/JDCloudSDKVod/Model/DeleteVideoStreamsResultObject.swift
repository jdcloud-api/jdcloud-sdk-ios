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

   Video Management
   视频资源管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  删除视频转码流结果
@objc(DeleteVideoStreamsResultObject)
public class DeleteVideoStreamsResultObject:NSObject,Codable{
    /// 删除成功的转码任务ID列表
    var okTaskIds:[Double?]?
    /// 未找到的转码任务ID列表
    var notFoundTaskIds:[Double?]?
    /// 删除失败的转码任务ID列表
    var failedTaskIds:[Double?]?



    public override init(){
            super.init()
    }

    enum DeleteVideoStreamsResultObjectCodingKeys: String, CodingKey {
        case okTaskIds
        case notFoundTaskIds
        case failedTaskIds
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeleteVideoStreamsResultObjectCodingKeys.self)
        if decoderContainer.contains(.okTaskIds)
        {
            self.okTaskIds = try decoderContainer.decode([Double?]?.self, forKey: .okTaskIds)
        }
        if decoderContainer.contains(.notFoundTaskIds)
        {
            self.notFoundTaskIds = try decoderContainer.decode([Double?]?.self, forKey: .notFoundTaskIds)
        }
        if decoderContainer.contains(.failedTaskIds)
        {
            self.failedTaskIds = try decoderContainer.decode([Double?]?.self, forKey: .failedTaskIds)
        }
    }
}
public extension DeleteVideoStreamsResultObject{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteVideoStreamsResultObjectCodingKeys.self)
         try encoderContainer.encode(okTaskIds, forKey: .okTaskIds)
         try encoderContainer.encode(notFoundTaskIds, forKey: .notFoundTaskIds)
         try encoderContainer.encode(failedTaskIds, forKey: .failedTaskIds)
    }
}
