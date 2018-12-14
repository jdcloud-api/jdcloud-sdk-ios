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

   Proxy visit others resources
   API OF visit others resource via Pipeline service

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  获取branch信息
public class GetBranchRequest:JdCloudRequest
{
    /// 代码存储类型，目前只支持github
    var type:String

    /// project名称
    var repoName:String

    /// 分支名称
    var branchName:String


    public init(regionId: String,type:String,repoName:String,branchName:String){
        self.type = type
        self.repoName = repoName
        self.branchName = branchName
        super.init(regionId: regionId)
    }


    enum GetBranchRequestRequestCodingKeys: String, CodingKey {
        case type
        case repoName
        case branchName
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: GetBranchRequestRequestCodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(repoName, forKey: .repoName)
        try container.encode(branchName, forKey: .branchName)

    }
}
