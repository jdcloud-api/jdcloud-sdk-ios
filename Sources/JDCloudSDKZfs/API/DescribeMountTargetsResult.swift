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

   Mount-Target
   挂载目标相关接口。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// -   查询挂载目标列表。
      ///       /// 
@objc(DescribeMountTargetsResult)
public class DescribeMountTargetsResult:NSObject,JdCloudResult
{
    /// 挂载目标信息列表
    var mountTargets:[MountTarget?]?

    /// 查询的挂载目标数目
    var totalCount:Int?



    public override init(){
        super.init()
    }

    enum DescribeMountTargetsResultCodingKeys: String, CodingKey {
        case mountTargets
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeMountTargetsResultCodingKeys.self)
        if decoderContainer.contains(.mountTargets)
        {
            self.mountTargets = try decoderContainer.decode([MountTarget?]?.self, forKey: .mountTargets)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeMountTargetsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeMountTargetsResultCodingKeys.self)
        try encoderContainer.encode(mountTargets, forKey: .mountTargets)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}