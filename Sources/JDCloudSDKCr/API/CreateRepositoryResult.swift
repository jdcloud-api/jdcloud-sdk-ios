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

   Repository
   容器镜像仓库相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 通过参数创建镜像仓库。
      ///       /// 仓库名称可以分解为多个路径名，每个名称必须至少包含一个小写字母数字，考虑URL规范。
      ///       /// 支持包含段划线或者下划线进行分割，但不允许点&#39;.&#39;，多个路径名之间通过(&quot;/&quot;)连接，总长度不超过256个字符，当前只支持二级目录。
      ///       /// 
@objc(CreateRepositoryResult)
public class CreateRepositoryResult:NSObject,JdCloudResult
{
    /// Repository
    var repository:RepositoryShort?



    public override init(){
        super.init()
    }

    enum CreateRepositoryResultCodingKeys: String, CodingKey {
        case repository
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateRepositoryResultCodingKeys.self)
        if decoderContainer.contains(.repository)
        {
            self.repository = try decoderContainer.decode(RepositoryShort?.self, forKey: .repository)
        }
    }
}
public extension CreateRepositoryResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateRepositoryResultCodingKeys.self)
        try encoderContainer.encode(repository, forKey: .repository)
    }
}
