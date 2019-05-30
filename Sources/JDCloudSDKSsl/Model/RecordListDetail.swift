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

///  recordListDetail
@objc(RecordListDetail)
public class RecordListDetail:NSObject,Codable{
    /// 证书申购记录Id
    var recordId:String?
    /// 交易系统订单Id
    var orderId:String?
    /// 证书绑定域名
    var commonName:String?
    /// 证书供应商
    var supplier:String?
    /// 证书品牌
    var brand:String?
    /// 证书类型
    var certType:String?
    /// 证书年限
    var certValidity:Int?
    /// 证书状态,1:未支付,2:待补全信息,3:待下单,4:待域名验证,5:已完成,6:审核不通过,7:已取消
    var state:Int?
    /// 厂商订单ID
    var partnerOrderId:String?
    /// 购买域名数量
    var domainCount:Int?
    /// 备用域名
    var dnsNames:[String?]?



    public override init(){
            super.init()
    }

    enum RecordListDetailCodingKeys: String, CodingKey {
        case recordId
        case orderId
        case commonName
        case supplier
        case brand
        case certType
        case certValidity
        case state
        case partnerOrderId
        case domainCount
        case dnsNames
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RecordListDetailCodingKeys.self)
        if decoderContainer.contains(.recordId)
        {
            self.recordId = try decoderContainer.decode(String?.self, forKey: .recordId)
        }
        if decoderContainer.contains(.orderId)
        {
            self.orderId = try decoderContainer.decode(String?.self, forKey: .orderId)
        }
        if decoderContainer.contains(.commonName)
        {
            self.commonName = try decoderContainer.decode(String?.self, forKey: .commonName)
        }
        if decoderContainer.contains(.supplier)
        {
            self.supplier = try decoderContainer.decode(String?.self, forKey: .supplier)
        }
        if decoderContainer.contains(.brand)
        {
            self.brand = try decoderContainer.decode(String?.self, forKey: .brand)
        }
        if decoderContainer.contains(.certType)
        {
            self.certType = try decoderContainer.decode(String?.self, forKey: .certType)
        }
        if decoderContainer.contains(.certValidity)
        {
            self.certValidity = try decoderContainer.decode(Int?.self, forKey: .certValidity)
        }
        if decoderContainer.contains(.state)
        {
            self.state = try decoderContainer.decode(Int?.self, forKey: .state)
        }
        if decoderContainer.contains(.partnerOrderId)
        {
            self.partnerOrderId = try decoderContainer.decode(String?.self, forKey: .partnerOrderId)
        }
        if decoderContainer.contains(.domainCount)
        {
            self.domainCount = try decoderContainer.decode(Int?.self, forKey: .domainCount)
        }
        if decoderContainer.contains(.dnsNames)
        {
            self.dnsNames = try decoderContainer.decode([String?]?.self, forKey: .dnsNames)
        }
    }
}
public extension RecordListDetail{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RecordListDetailCodingKeys.self)
         try encoderContainer.encode(recordId, forKey: .recordId)
         try encoderContainer.encode(orderId, forKey: .orderId)
         try encoderContainer.encode(commonName, forKey: .commonName)
         try encoderContainer.encode(supplier, forKey: .supplier)
         try encoderContainer.encode(brand, forKey: .brand)
         try encoderContainer.encode(certType, forKey: .certType)
         try encoderContainer.encode(certValidity, forKey: .certValidity)
         try encoderContainer.encode(state, forKey: .state)
         try encoderContainer.encode(partnerOrderId, forKey: .partnerOrderId)
         try encoderContainer.encode(domainCount, forKey: .domainCount)
         try encoderContainer.encode(dnsNames, forKey: .dnsNames)
    }
}