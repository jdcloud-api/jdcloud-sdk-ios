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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  ipCleanThresholdSpec
@objc(IpCleanThresholdSpec)
public class IpCleanThresholdSpec:NSObject,Codable{
    /// 基础防护已防护公网 IP, 支持 ipv4 和 ipv6.
      /// - 使用 &lt;a href&#x3D;&quot;http://docs.jdcloud.com/anti-ddos-basic/api/describeelasticipresources&quot;&gt;describeElasticIpResources&lt;/a&gt; 接口查询基础防护已防护的私有网络弹性公网 IP
      /// - 使用 &lt;a href&#x3D;&quot;http://docs.jdcloud.com/anti-ddos-basic/api/describecpsipresources&quot;&gt;describeCpsIpResources&lt;/a&gt; 接口查询基础防护已防护的云物理服务器公网IP 和 弹性公网 IP
      /// 
    /// Required:true
    var ip:String
    /// 触发清洗的流量速率, 单位 bps. 取值范围由 &lt;a href&#x3D;&quot;http://docs.jdcloud.com/anti-ddos-basic/api/describeipcleanthresholdrange&quot;&gt;describeIpCleanThresholdRange&lt;/a&gt; 接口查询可知
      /// 
    /// Required:true
    var cleanThresholdBps:Int64
    /// 触发清洗的报文流量速率, 单位 pps. 取值范围由 &lt;a href&#x3D;&quot;http://docs.jdcloud.com/anti-ddos-basic/api/describeipcleanthresholdrange&quot;&gt;describeIpCleanThresholdRange&lt;/a&gt; 接口查询可知
      /// 
    /// Required:true
    var cleanThresholdPps:Int64



    public  init(ip:String,cleanThresholdBps:Int64,cleanThresholdPps:Int64){
             self.ip = ip
             self.cleanThresholdBps = cleanThresholdBps
             self.cleanThresholdPps = cleanThresholdPps
    }

    enum IpCleanThresholdSpecCodingKeys: String, CodingKey {
        case ip
        case cleanThresholdBps
        case cleanThresholdPps
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: IpCleanThresholdSpecCodingKeys.self)
        self.ip = try decoderContainer.decode(String.self, forKey: .ip)
        self.cleanThresholdBps = try decoderContainer.decode(Int64.self, forKey: .cleanThresholdBps)
        self.cleanThresholdPps = try decoderContainer.decode(Int64.self, forKey: .cleanThresholdPps)
    }
}
public extension IpCleanThresholdSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: IpCleanThresholdSpecCodingKeys.self)
         try encoderContainer.encode(ip, forKey: .ip)
         try encoderContainer.encode(cleanThresholdBps, forKey: .cleanThresholdBps)
         try encoderContainer.encode(cleanThresholdPps, forKey: .cleanThresholdPps)
    }
}