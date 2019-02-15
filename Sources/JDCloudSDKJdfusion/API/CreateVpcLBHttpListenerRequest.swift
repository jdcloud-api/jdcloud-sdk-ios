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


///  创建HTTP监听器
@objc(CreateVpcLBHttpListenerRequest)
public class CreateVpcLBHttpListenerRequest:JdCloudRequest
{
    /// 创建HTTP监听器
    var httpListener:CreateLoadBalancerHTTPListener


    public init(regionId: String,httpListener:CreateLoadBalancerHTTPListener){
        self.httpListener = httpListener
        super.init(regionId: regionId)
    }


    enum CreateVpcLBHttpListenerRequestRequestCodingKeys: String, CodingKey {
        case httpListener
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateVpcLBHttpListenerRequestRequestCodingKeys.self)
        try encoderContainer.encode(httpListener, forKey: .httpListener)

    }
}
