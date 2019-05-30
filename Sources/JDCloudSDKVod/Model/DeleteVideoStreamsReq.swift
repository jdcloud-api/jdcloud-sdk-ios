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

///  deleteVideoStreamsReq
@objc(DeleteVideoStreamsReq)
public class DeleteVideoStreamsReq:NSObject,Codable{
    /// TaskIds
    var taskIds:[Int64?]?



    public override init(){
            super.init()
    }

    enum DeleteVideoStreamsReqCodingKeys: String, CodingKey {
        case taskIds
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeleteVideoStreamsReqCodingKeys.self)
        if decoderContainer.contains(.taskIds)
        {
            self.taskIds = try decoderContainer.decode([Int64?]?.self, forKey: .taskIds)
        }
    }
}
public extension DeleteVideoStreamsReq{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteVideoStreamsReqCodingKeys.self)
         try encoderContainer.encode(taskIds, forKey: .taskIds)
    }
}