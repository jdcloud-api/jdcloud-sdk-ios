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

   点播管理API
   点播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询视频列表
public class FindlistRequest:JdCloudRequest
{
    /// 视频名称
    var videoName:String?

    /// 媒资ID
    var mid:Double?




    enum FindlistRequestRequestCodingKeys: String, CodingKey {
        case videoName
        case mid
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: FindlistRequestRequestCodingKeys.self)
        try container.encode(videoName, forKey: .videoName)
        try container.encode(mid, forKey: .mid)

    }
}
