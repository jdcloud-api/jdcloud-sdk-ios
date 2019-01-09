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

///  webRule
@objc(WebRule)
public class WebRule:NSObject,Codable{
    /// 规则id
    var id:Int64?
    /// 实例id
    var instanceId:Int64?
    /// 子域名
    var domain:String?
    /// 规则的cname
    var cname:String?
    /// 协议：HTTP、HTTPS、HTTP_HTTPS
    var protocolValue:String?
    /// HTTP协议的端口号，如80,81，多个端口号使用逗号分隔
    var port:String?
    /// HTTPS协议的端口号，如443,8443，多个端口号使用逗号分隔
    var httpsPort:String?
    /// 回源类型：A或者CNAME
    var originType:String?
    /// OriginAddr
    var originAddr:[OriginAddrItem?]?
    /// OnlineAddr
    var onlineAddr:[String?]?
    /// 回源域名,originType为CNAME时返回该字段
    var originDomain:String?
    /// 证书内容
    var httpsCertContent:String?
    /// 证书私钥
    var httpsRsaKey:String?
    /// 证书状态：0异常，1正常
    var httpCertStatus:Int?
    /// 0防御状态，1回源状态
    var status:Int?
    /// 0 CC关闭 1 CC开启
    var ccStatus:Int?
    /// 转发规则：wrr-&gt;带权重的轮询，rr-&gt;不带权重的轮询
    var algorithm:String?
    /// 是否开启https强制跳转，当protocol为HTTP_HTTPS时可以配置该属性 0为不强跳 1为开启强跳
    var forceJump:Int?
    /// 是否为自定义端口号，0为默认 1为自定义
    var customPortStatus:Int?
    /// 是否开启http回源，0为不开启 1为开启，当勾选HTTPS时可以配置该属性
    var httpOrigin:Int?



    public override init(){
            super.init()
    }

    enum WebRuleCodingKeys: String, CodingKey {
        case id
        case instanceId
        case domain
        case cname
        case protocolValue = "protocol"
        case port
        case httpsPort
        case originType
        case originAddr
        case onlineAddr
        case originDomain
        case httpsCertContent
        case httpsRsaKey
        case httpCertStatus
        case status
        case ccStatus
        case algorithm
        case forceJump
        case customPortStatus
        case httpOrigin
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: WebRuleCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int64?.self, forKey: .id)
        }
        if decoderContainer.contains(.instanceId)
        {
            self.instanceId = try decoderContainer.decode(Int64?.self, forKey: .instanceId)
        }
        if decoderContainer.contains(.domain)
        {
            self.domain = try decoderContainer.decode(String?.self, forKey: .domain)
        }
        if decoderContainer.contains(.cname)
        {
            self.cname = try decoderContainer.decode(String?.self, forKey: .cname)
        }
        if decoderContainer.contains(.protocolValue)
        {
            self.protocolValue = try decoderContainer.decode(String?.self, forKey: .protocolValue)
        }
        if decoderContainer.contains(.port)
        {
            self.port = try decoderContainer.decode(String?.self, forKey: .port)
        }
        if decoderContainer.contains(.httpsPort)
        {
            self.httpsPort = try decoderContainer.decode(String?.self, forKey: .httpsPort)
        }
        if decoderContainer.contains(.originType)
        {
            self.originType = try decoderContainer.decode(String?.self, forKey: .originType)
        }
        if decoderContainer.contains(.originAddr)
        {
            self.originAddr = try decoderContainer.decode([OriginAddrItem?]?.self, forKey: .originAddr)
        }
        if decoderContainer.contains(.onlineAddr)
        {
            self.onlineAddr = try decoderContainer.decode([String?]?.self, forKey: .onlineAddr)
        }
        if decoderContainer.contains(.originDomain)
        {
            self.originDomain = try decoderContainer.decode(String?.self, forKey: .originDomain)
        }
        if decoderContainer.contains(.httpsCertContent)
        {
            self.httpsCertContent = try decoderContainer.decode(String?.self, forKey: .httpsCertContent)
        }
        if decoderContainer.contains(.httpsRsaKey)
        {
            self.httpsRsaKey = try decoderContainer.decode(String?.self, forKey: .httpsRsaKey)
        }
        if decoderContainer.contains(.httpCertStatus)
        {
            self.httpCertStatus = try decoderContainer.decode(Int?.self, forKey: .httpCertStatus)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Int?.self, forKey: .status)
        }
        if decoderContainer.contains(.ccStatus)
        {
            self.ccStatus = try decoderContainer.decode(Int?.self, forKey: .ccStatus)
        }
        if decoderContainer.contains(.algorithm)
        {
            self.algorithm = try decoderContainer.decode(String?.self, forKey: .algorithm)
        }
        if decoderContainer.contains(.forceJump)
        {
            self.forceJump = try decoderContainer.decode(Int?.self, forKey: .forceJump)
        }
        if decoderContainer.contains(.customPortStatus)
        {
            self.customPortStatus = try decoderContainer.decode(Int?.self, forKey: .customPortStatus)
        }
        if decoderContainer.contains(.httpOrigin)
        {
            self.httpOrigin = try decoderContainer.decode(Int?.self, forKey: .httpOrigin)
        }
    }
}
public extension WebRule{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: WebRuleCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(domain, forKey: .domain)
         try encoderContainer.encode(cname, forKey: .cname)
         try encoderContainer.encode(protocolValue, forKey: .protocolValue)
         try encoderContainer.encode(port, forKey: .port)
         try encoderContainer.encode(httpsPort, forKey: .httpsPort)
         try encoderContainer.encode(originType, forKey: .originType)
         try encoderContainer.encode(originAddr, forKey: .originAddr)
         try encoderContainer.encode(onlineAddr, forKey: .onlineAddr)
         try encoderContainer.encode(originDomain, forKey: .originDomain)
         try encoderContainer.encode(httpsCertContent, forKey: .httpsCertContent)
         try encoderContainer.encode(httpsRsaKey, forKey: .httpsRsaKey)
         try encoderContainer.encode(httpCertStatus, forKey: .httpCertStatus)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(ccStatus, forKey: .ccStatus)
         try encoderContainer.encode(algorithm, forKey: .algorithm)
         try encoderContainer.encode(forceJump, forKey: .forceJump)
         try encoderContainer.encode(customPortStatus, forKey: .customPortStatus)
         try encoderContainer.encode(httpOrigin, forKey: .httpOrigin)
    }
}
