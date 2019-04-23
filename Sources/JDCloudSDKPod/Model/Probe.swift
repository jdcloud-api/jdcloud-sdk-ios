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

///  容器探活方式。
@objc(Probe)
public class Probe:NSObject,Codable{
    /// 容器启动多长时\间后，触发探针。默认10秒；范围:[0-300]
    var initialDelaySeconds:Int?
    /// 探测的时间间隔。默认值 10秒，范围:[1-300]
    var periodSeconds:Int?
    /// 探测的超时时间。默认值 1秒；范围:[1-300]
    var timeoutSeconds:Int?
    /// 在成功状态后，连续探活失败的次数，认为探活失败。默认值 3次；范围 1-10
    var failureThreshold:Int?
    /// 在失败状态后，连续探活成功的次数，认为探活成功。默认值 1次；范围 1-10
    var successThreshold:Int?
    /// 在容器内执行指定命令；如果命令退出时返回码为 0 则认为诊断成功。
    var exec:Exec?
    /// 对指定的端口和路径上的容器的 IP 地址执行 HTTP Get 请求。如果响应的状态码大于等于200 且小于 400，则诊断被认为是成功的。
    var httpGet:Hg?
    /// 对指定端口上的容器的 IP 地址进行 TCP 检查；如果端口打开，则诊断被认为是成功的。
    var tcpSocket:TcpSocket?



    public override init(){
            super.init()
    }

    enum ProbeCodingKeys: String, CodingKey {
        case initialDelaySeconds
        case periodSeconds
        case timeoutSeconds
        case failureThreshold
        case successThreshold
        case exec
        case httpGet
        case tcpSocket
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ProbeCodingKeys.self)
        if decoderContainer.contains(.initialDelaySeconds)
        {
            self.initialDelaySeconds = try decoderContainer.decode(Int?.self, forKey: .initialDelaySeconds)
        }
        if decoderContainer.contains(.periodSeconds)
        {
            self.periodSeconds = try decoderContainer.decode(Int?.self, forKey: .periodSeconds)
        }
        if decoderContainer.contains(.timeoutSeconds)
        {
            self.timeoutSeconds = try decoderContainer.decode(Int?.self, forKey: .timeoutSeconds)
        }
        if decoderContainer.contains(.failureThreshold)
        {
            self.failureThreshold = try decoderContainer.decode(Int?.self, forKey: .failureThreshold)
        }
        if decoderContainer.contains(.successThreshold)
        {
            self.successThreshold = try decoderContainer.decode(Int?.self, forKey: .successThreshold)
        }
        if decoderContainer.contains(.exec)
        {
            self.exec = try decoderContainer.decode(Exec?.self, forKey: .exec)
        }
        if decoderContainer.contains(.httpGet)
        {
            self.httpGet = try decoderContainer.decode(Hg?.self, forKey: .httpGet)
        }
        if decoderContainer.contains(.tcpSocket)
        {
            self.tcpSocket = try decoderContainer.decode(TcpSocket?.self, forKey: .tcpSocket)
        }
    }
}
public extension Probe{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ProbeCodingKeys.self)
         try encoderContainer.encode(initialDelaySeconds, forKey: .initialDelaySeconds)
         try encoderContainer.encode(periodSeconds, forKey: .periodSeconds)
         try encoderContainer.encode(timeoutSeconds, forKey: .timeoutSeconds)
         try encoderContainer.encode(failureThreshold, forKey: .failureThreshold)
         try encoderContainer.encode(successThreshold, forKey: .successThreshold)
         try encoderContainer.encode(exec, forKey: .exec)
         try encoderContainer.encode(httpGet, forKey: .httpGet)
         try encoderContainer.encode(tcpSocket, forKey: .tcpSocket)
    }
}
