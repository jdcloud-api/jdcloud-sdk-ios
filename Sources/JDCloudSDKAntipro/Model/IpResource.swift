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

///  ipResource
@objc(IpResource)
public class IpResource:NSObject,Codable{
    /// 公网 IP 所在区域, cn-north-1: 华北-北京, cn-east-1: 华东-宿迁, cn-east-2: 华东-上海, cn-south-1: 华南-广州
    var region:String?
    /// 公网 IP 类型或绑定资源类型:
      ///   0: 未知类型,
      ///   1: 弹性公网 IP(IP 为弹性公网 IP, 绑定资源类型未知),
      ///   10: 弹性公网 IP(IP 为弹性公网 IP, 但未绑定资源),
      ///   11: 云主机,
      ///   12: 负载均衡,
      ///   13: 原生容器实例,
      ///   14: 原生容器 Pod,
      ///   2: 云物理服务器,
      /// 
    var resourceType:Int?
    /// 公网 IP 地址
    var ip:String?
    /// 带宽上限, 单位 Mbps
    var bandwidth:Int?
    /// 请求流量清洗触发值, 单位 bps/s
    var cleanThresholdBps:Int64?
    /// 报文请求清洗触发值, 单位 pps/s
    var cleanThresholdPps:Int64?
    /// 黑洞阈值
    var balckHoleThreshold:Int64?
    /// 绑定防护包 ID, 为 0 时表示未绑定防护包
    var instanceId:String?
    /// 绑定防护包名称, 为空字符串时表示未绑定防护包
    var instanceName:String?
    /// 安全状态, 0: 安全, 1: 清洗, 2: 黑洞
    var safeStatus:Int?



    public override init(){
            super.init()
    }

    enum IpResourceCodingKeys: String, CodingKey {
        case region
        case resourceType
        case ip
        case bandwidth
        case cleanThresholdBps
        case cleanThresholdPps
        case balckHoleThreshold
        case instanceId
        case instanceName
        case safeStatus
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: IpResourceCodingKeys.self)
        if decoderContainer.contains(.region)
        {
            self.region = try decoderContainer.decode(String?.self, forKey: .region)
        }
        if decoderContainer.contains(.resourceType)
        {
            self.resourceType = try decoderContainer.decode(Int?.self, forKey: .resourceType)
        }
        if decoderContainer.contains(.ip)
        {
            self.ip = try decoderContainer.decode(String?.self, forKey: .ip)
        }
        if decoderContainer.contains(.bandwidth)
        {
            self.bandwidth = try decoderContainer.decode(Int?.self, forKey: .bandwidth)
        }
        if decoderContainer.contains(.cleanThresholdBps)
        {
            self.cleanThresholdBps = try decoderContainer.decode(Int64?.self, forKey: .cleanThresholdBps)
        }
        if decoderContainer.contains(.cleanThresholdPps)
        {
            self.cleanThresholdPps = try decoderContainer.decode(Int64?.self, forKey: .cleanThresholdPps)
        }
        if decoderContainer.contains(.balckHoleThreshold)
        {
            self.balckHoleThreshold = try decoderContainer.decode(Int64?.self, forKey: .balckHoleThreshold)
        }
        if decoderContainer.contains(.instanceId)
        {
            self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        }
        if decoderContainer.contains(.instanceName)
        {
            self.instanceName = try decoderContainer.decode(String?.self, forKey: .instanceName)
        }
        if decoderContainer.contains(.safeStatus)
        {
            self.safeStatus = try decoderContainer.decode(Int?.self, forKey: .safeStatus)
        }
    }
}
public extension IpResource{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: IpResourceCodingKeys.self)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(resourceType, forKey: .resourceType)
         try encoderContainer.encode(ip, forKey: .ip)
         try encoderContainer.encode(bandwidth, forKey: .bandwidth)
         try encoderContainer.encode(cleanThresholdBps, forKey: .cleanThresholdBps)
         try encoderContainer.encode(cleanThresholdPps, forKey: .cleanThresholdPps)
         try encoderContainer.encode(balckHoleThreshold, forKey: .balckHoleThreshold)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(instanceName, forKey: .instanceName)
         try encoderContainer.encode(safeStatus, forKey: .safeStatus)
    }
}