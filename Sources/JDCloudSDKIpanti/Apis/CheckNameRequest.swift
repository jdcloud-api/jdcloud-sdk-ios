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

   IP 高防实例相关接口
   IP 高防实例相关接口, 以及转发配置中实例级别的接口等

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  检测实例名称是否合法
public class CheckNameRequest:JdCloudRequest
{
    /// 待检测实例名称
    var name:String


    public init(regionId: String,name:String){
        self.name = name
        super.init(regionId: regionId)
    }


    enum CheckNameRequestRequestCodingKeys: String, CodingKey {
        case name
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CheckNameRequestRequestCodingKeys.self)
        try container.encode(name, forKey: .name)

    }
}
