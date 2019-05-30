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

   云物理服务器
   云物理服务器私有网络操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建私有网络
@objc(CreateVpcRequest)
public class CreateVpcRequest:JdCloudRequest
{
    /// 由客户端生成，用于保证请求的幂等性，长度不能超过36个字符；&lt;br/&gt;
      /// 如果多个请求使用了相同的clientToken，只会执行第一个请求，之后的请求直接返回第一个请求的结果&lt;br/&gt;
      /// 
    var clientToken:String?

    /// 子网配置
    var vpcSpec:VpcSpec


    public init(regionId: String,vpcSpec:VpcSpec){
        self.vpcSpec = vpcSpec
        super.init(regionId: regionId)
    }


    enum CreateVpcRequestRequestCodingKeys: String, CodingKey {
        case clientToken
        case vpcSpec
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateVpcRequestRequestCodingKeys.self)
        try encoderContainer.encode(clientToken, forKey: .clientToken)
        try encoderContainer.encode(vpcSpec, forKey: .vpcSpec)

    }
}