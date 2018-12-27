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

   原生容器
   原生容器相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询一台原生容器的详细信息
      ///       /// 
@objc(DescribeContainerResult)
public class DescribeContainerResult:NSObject,JdCloudResult
{
    /// Container
    var container:Container?



    public override init(){
        super.init()
    }

    enum DescribeContainerResultCodingKeys: String, CodingKey {
        case container
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeContainerResultCodingKeys.self)
        self.container = try decoderContainer.decode(Container?.self, forKey: .container)
    }
}
public extension DescribeContainerResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeContainerResultCodingKeys.self)
        try encoderContainer.encode(container, forKey: .container)
    }
}