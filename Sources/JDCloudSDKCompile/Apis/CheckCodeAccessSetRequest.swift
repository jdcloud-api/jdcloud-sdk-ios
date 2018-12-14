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

   code api
   API related to build

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查看是否授权
public class CheckCodeAccessSetRequest:JdCloudRequest
{
    /// 代码存储类型，目前只支持github
    var type:String


    public init(regionId: String,type:String){
        self.type = type
        super.init(regionId: regionId)
    }


    enum CheckCodeAccessSetRequestRequestCodingKeys: String, CodingKey {
        case type
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CheckCodeAccessSetRequestRequestCodingKeys.self)
        try container.encode(type, forKey: .type)

    }
}
