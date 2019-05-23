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

   IP Resource APIs
   Anti DDoS Basic IP Resource APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询公网 IP 安全信息, 仅支持 ipv4. (已废弃, 建议使用 &lt;a href&#x3D;&quot;http://docs.jdcloud.com/anti-ddos-basic/api/describeipsafetyinfo&quot;&gt;describeIpSafetyInfo&lt;/a&gt; 接口)
      ///       /// 
@objc(DescribeIpResourceInfoRequest)
public class DescribeIpResourceInfoRequest:JdCloudRequest
{
    /// 基础防护已防护的公网 IP, 仅支持 ipv4 格式
      /// - 使用 &lt;a href&#x3D;&quot;http://docs.jdcloud.com/anti-ddos-basic/api/describeelasticipresources&quot;&gt;describeElasticIpResources&lt;/a&gt; 接口查询基础防护已防护的私有网络弹性公网 IP
      /// - 使用 &lt;a href&#x3D;&quot;http://docs.jdcloud.com/anti-ddos-basic/api/describecpsipresources&quot;&gt;describeCpsIpResources&lt;/a&gt; 接口查询基础防护已防护的云物理服务器公网IP 和 弹性公网 IP
      /// 
    var ip:String


    public init(regionId: String,ip:String){
        self.ip = ip
        super.init(regionId: regionId)
    }


    enum DescribeIpResourceInfoRequestRequestCodingKeys: String, CodingKey {
        case ip
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeIpResourceInfoRequestRequestCodingKeys.self)
        try encoderContainer.encode(ip, forKey: .ip)

    }
}
