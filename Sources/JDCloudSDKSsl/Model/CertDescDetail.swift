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

///  certDescDetail
@objc(CertDescDetail)
public class CertDescDetail:NSObject,Codable{
    /// 证书Id
    var certId:String?
    /// 证书名称
    var certName:String?
    /// 绑定域名
    var commonName:String?
    /// 证书类型
    var certType:String?
    /// 签发者
    var issuer:String?
    /// 开始时间
    var startTime:String?
    /// 结束时间
    var endTime:String?
    /// 域名
    var dnsNames:[String?]?
    /// 对私钥文件使用sha256算法计算的摘要信息
    var digest:String?
    /// 证书关联信息
    var usedBy:[CertBindInfo?]?



    public override init(){
            super.init()
    }

    enum CertDescDetailCodingKeys: String, CodingKey {
        case certId
        case certName
        case commonName
        case certType
        case issuer
        case startTime
        case endTime
        case dnsNames
        case digest
        case usedBy
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CertDescDetailCodingKeys.self)
        if decoderContainer.contains(.certId)
        {
            self.certId = try decoderContainer.decode(String?.self, forKey: .certId)
        }
        if decoderContainer.contains(.certName)
        {
            self.certName = try decoderContainer.decode(String?.self, forKey: .certName)
        }
        if decoderContainer.contains(.commonName)
        {
            self.commonName = try decoderContainer.decode(String?.self, forKey: .commonName)
        }
        if decoderContainer.contains(.certType)
        {
            self.certType = try decoderContainer.decode(String?.self, forKey: .certType)
        }
        if decoderContainer.contains(.issuer)
        {
            self.issuer = try decoderContainer.decode(String?.self, forKey: .issuer)
        }
        if decoderContainer.contains(.startTime)
        {
            self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        }
        if decoderContainer.contains(.endTime)
        {
            self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        }
        if decoderContainer.contains(.dnsNames)
        {
            self.dnsNames = try decoderContainer.decode([String?]?.self, forKey: .dnsNames)
        }
        if decoderContainer.contains(.digest)
        {
            self.digest = try decoderContainer.decode(String?.self, forKey: .digest)
        }
        if decoderContainer.contains(.usedBy)
        {
            self.usedBy = try decoderContainer.decode([CertBindInfo?]?.self, forKey: .usedBy)
        }
    }
}
public extension CertDescDetail{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CertDescDetailCodingKeys.self)
         try encoderContainer.encode(certId, forKey: .certId)
         try encoderContainer.encode(certName, forKey: .certName)
         try encoderContainer.encode(commonName, forKey: .commonName)
         try encoderContainer.encode(certType, forKey: .certType)
         try encoderContainer.encode(issuer, forKey: .issuer)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(dnsNames, forKey: .dnsNames)
         try encoderContainer.encode(digest, forKey: .digest)
         try encoderContainer.encode(usedBy, forKey: .usedBy)
    }
}
