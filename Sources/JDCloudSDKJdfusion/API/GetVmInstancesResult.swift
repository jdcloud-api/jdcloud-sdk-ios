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

   Vm-Instance
   与虚机实例相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 根据云提供商查询对应的虚拟机资源信息
@objc(GetVmInstancesResult)
public class GetVmInstancesResult:NSObject,JdCloudResult
{
    /// Vms
    var vms:[VmInfo?]?



    public override init(){
        super.init()
    }

    enum GetVmInstancesResultCodingKeys: String, CodingKey {
        case vms
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetVmInstancesResultCodingKeys.self)
        if decoderContainer.contains(.vms)
        {
            self.vms = try decoderContainer.decode([VmInfo?]?.self, forKey: .vms)
        }
    }
}
public extension GetVmInstancesResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetVmInstancesResultCodingKeys.self)
        try encoderContainer.encode(vms, forKey: .vms)
    }
}
