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

   Vpc-LbHttpListener
   与HTTP监听器相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 创建HTTP监听器
@objc(CreateVpcLBHttpListenerResult)
public class CreateVpcLBHttpListenerResult:NSObject,JdCloudResult
{
    /// Task
    var task:ResourceTFInfo?



    public override init(){
        super.init()
    }

    enum CreateVpcLBHttpListenerResultCodingKeys: String, CodingKey {
        case task
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateVpcLBHttpListenerResultCodingKeys.self)
        if decoderContainer.contains(.task)
        {
            self.task = try decoderContainer.decode(ResourceTFInfo?.self, forKey: .task)
        }
    }
}
public extension CreateVpcLBHttpListenerResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateVpcLBHttpListenerResultCodingKeys.self)
        try encoderContainer.encode(task, forKey: .task)
    }
}