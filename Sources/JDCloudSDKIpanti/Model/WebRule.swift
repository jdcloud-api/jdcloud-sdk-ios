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
    /// 规则 Id
    var id:String?
    /// 实例 Id
    var instanceId:String?
    /// 子域名
    var domain:String?
    /// 规则的 CNAME
    var cname:String?
    /// CNAME 解析状态, 0: 解析异常, 1: 解析正常
    var cnameStatus:Int?
    /// Protocol
    var protocolValue:WebRuleProtocol?
    /// 是否为自定义端口号, 0: 为默认, 1: 为自定义
    var customPortStatus:Int?
    /// HTTP 协议的端口号, 如 80,81
    var port:[Int?]?
    /// HTTPS 协议的端口号, 如 443,8443
    var httpsPort:[Int?]?
    /// 是否开启 http 回源, 0: 为不开启, 1: 为开启, 当勾选 HTTPS 时可以配置该属性
    var httpOrigin:Int?
    /// 0: 防御状态, 1: 回源状态
    var status:Int?
    /// 回源类型: A 或者 CNAME
    var originType:String?
    /// OriginAddr
    var originAddr:[OriginAddrItem?]?
    /// 回源域名, originType 为 CNAME 时返回该字段
    var originDomain:String?
    /// OnlineAddr
    var onlineAddr:[String?]?
    /// 证书状态, 0: 异常, 1: 正常, 2: 证书未上传
    var httpCertStatus:Int?
    /// 证书 Id
    var certId:String?
    /// 证书名称
    var certName:String?
    /// 证书内容
    var httpsCertContent:String?
    /// 证书私钥
    var httpsRsaKey:String?
    /// 是否开启https强制跳转, 当 protocol 为 HTTP_HTTPS 时可以配置该属性
      ///   - 0 不强跳
      ///   - 1 开启强跳
      /// 
    var forceJump:Int?
    /// 转发规则,  wrr: 带权重的轮询, rr: 不带权重的轮询
    var algorithm:String?
    /// CC 状态, 0: CC 关闭, 1: CC 开启
    var ccStatus:Int?
    /// webSocket 状态, 0: 关闭, 1: 开启
    var webSocketStatus:Int?
    /// 黑名单状态, 0: 关闭, 1: 开启
    var blackListEnable:Int?
    /// 白名单状态, 0: 关闭, 1: 开启
    var whiteListEnable:Int?



    public override init(){
            super.init()
    }

    enum WebRuleCodingKeys: String, CodingKey {
        case id
        case instanceId
        case domain
        case cname
        case cnameStatus
        case protocolValue = "protocol"
        case customPortStatus
        case port
        case httpsPort
        case httpOrigin
        case status
        case originType
        case originAddr
        case originDomain
        case onlineAddr
        case httpCertStatus
        case certId
        case certName
        case httpsCertContent
        case httpsRsaKey
        case forceJump
        case algorithm
        case ccStatus
        case webSocketStatus
        case blackListEnable
        case whiteListEnable
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: WebRuleCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
        if decoderContainer.contains(.instanceId)
        {
            self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        }
        if decoderContainer.contains(.domain)
        {
            self.domain = try decoderContainer.decode(String?.self, forKey: .domain)
        }
        if decoderContainer.contains(.cname)
        {
            self.cname = try decoderContainer.decode(String?.self, forKey: .cname)
        }
        if decoderContainer.contains(.cnameStatus)
        {
            self.cnameStatus = try decoderContainer.decode(Int?.self, forKey: .cnameStatus)
        }
        if decoderContainer.contains(.protocolValue)
        {
            self.protocolValue = try decoderContainer.decode(WebRuleProtocol?.self, forKey: .protocolValue)
        }
        if decoderContainer.contains(.customPortStatus)
        {
            self.customPortStatus = try decoderContainer.decode(Int?.self, forKey: .customPortStatus)
        }
        if decoderContainer.contains(.port)
        {
            self.port = try decoderContainer.decode([Int?]?.self, forKey: .port)
        }
        if decoderContainer.contains(.httpsPort)
        {
            self.httpsPort = try decoderContainer.decode([Int?]?.self, forKey: .httpsPort)
        }
        if decoderContainer.contains(.httpOrigin)
        {
            self.httpOrigin = try decoderContainer.decode(Int?.self, forKey: .httpOrigin)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Int?.self, forKey: .status)
        }
        if decoderContainer.contains(.originType)
        {
            self.originType = try decoderContainer.decode(String?.self, forKey: .originType)
        }
        if decoderContainer.contains(.originAddr)
        {
            self.originAddr = try decoderContainer.decode([OriginAddrItem?]?.self, forKey: .originAddr)
        }
        if decoderContainer.contains(.originDomain)
        {
            self.originDomain = try decoderContainer.decode(String?.self, forKey: .originDomain)
        }
        if decoderContainer.contains(.onlineAddr)
        {
            self.onlineAddr = try decoderContainer.decode([String?]?.self, forKey: .onlineAddr)
        }
        if decoderContainer.contains(.httpCertStatus)
        {
            self.httpCertStatus = try decoderContainer.decode(Int?.self, forKey: .httpCertStatus)
        }
        if decoderContainer.contains(.certId)
        {
            self.certId = try decoderContainer.decode(String?.self, forKey: .certId)
        }
        if decoderContainer.contains(.certName)
        {
            self.certName = try decoderContainer.decode(String?.self, forKey: .certName)
        }
        if decoderContainer.contains(.httpsCertContent)
        {
            self.httpsCertContent = try decoderContainer.decode(String?.self, forKey: .httpsCertContent)
        }
        if decoderContainer.contains(.httpsRsaKey)
        {
            self.httpsRsaKey = try decoderContainer.decode(String?.self, forKey: .httpsRsaKey)
        }
        if decoderContainer.contains(.forceJump)
        {
            self.forceJump = try decoderContainer.decode(Int?.self, forKey: .forceJump)
        }
        if decoderContainer.contains(.algorithm)
        {
            self.algorithm = try decoderContainer.decode(String?.self, forKey: .algorithm)
        }
        if decoderContainer.contains(.ccStatus)
        {
            self.ccStatus = try decoderContainer.decode(Int?.self, forKey: .ccStatus)
        }
        if decoderContainer.contains(.webSocketStatus)
        {
            self.webSocketStatus = try decoderContainer.decode(Int?.self, forKey: .webSocketStatus)
        }
        if decoderContainer.contains(.blackListEnable)
        {
            self.blackListEnable = try decoderContainer.decode(Int?.self, forKey: .blackListEnable)
        }
        if decoderContainer.contains(.whiteListEnable)
        {
            self.whiteListEnable = try decoderContainer.decode(Int?.self, forKey: .whiteListEnable)
        }
    }
}
public extension WebRule{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: WebRuleCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(domain, forKey: .domain)
         try encoderContainer.encode(cname, forKey: .cname)
         try encoderContainer.encode(cnameStatus, forKey: .cnameStatus)
         try encoderContainer.encode(protocolValue, forKey: .protocolValue)
         try encoderContainer.encode(customPortStatus, forKey: .customPortStatus)
         try encoderContainer.encode(port, forKey: .port)
         try encoderContainer.encode(httpsPort, forKey: .httpsPort)
         try encoderContainer.encode(httpOrigin, forKey: .httpOrigin)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(originType, forKey: .originType)
         try encoderContainer.encode(originAddr, forKey: .originAddr)
         try encoderContainer.encode(originDomain, forKey: .originDomain)
         try encoderContainer.encode(onlineAddr, forKey: .onlineAddr)
         try encoderContainer.encode(httpCertStatus, forKey: .httpCertStatus)
         try encoderContainer.encode(certId, forKey: .certId)
         try encoderContainer.encode(certName, forKey: .certName)
         try encoderContainer.encode(httpsCertContent, forKey: .httpsCertContent)
         try encoderContainer.encode(httpsRsaKey, forKey: .httpsRsaKey)
         try encoderContainer.encode(forceJump, forKey: .forceJump)
         try encoderContainer.encode(algorithm, forKey: .algorithm)
         try encoderContainer.encode(ccStatus, forKey: .ccStatus)
         try encoderContainer.encode(webSocketStatus, forKey: .webSocketStatus)
         try encoderContainer.encode(blackListEnable, forKey: .blackListEnable)
         try encoderContainer.encode(whiteListEnable, forKey: .whiteListEnable)
    }
}
