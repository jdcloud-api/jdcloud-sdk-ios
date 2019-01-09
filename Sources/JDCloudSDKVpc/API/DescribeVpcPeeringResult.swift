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

   对等连接
   对等连接相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询VpcPeering资源详情
@objc(DescribeVpcPeeringResult)
public class DescribeVpcPeeringResult:NSObject,JdCloudResult
{
    /// VpcPeering资源信息
    var vpcPeering:VpcPeering?



    public override init(){
        super.init()
    }

    enum DescribeVpcPeeringResultCodingKeys: String, CodingKey {
        case vpcPeering
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeVpcPeeringResultCodingKeys.self)
        if decoderContainer.contains(.vpcPeering)
        {
            self.vpcPeering = try decoderContainer.decode(VpcPeering?.self, forKey: .vpcPeering)
        }
    }
}
public extension DescribeVpcPeeringResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeVpcPeeringResultCodingKeys.self)
        try encoderContainer.encode(vpcPeering, forKey: .vpcPeering)
    }
}
