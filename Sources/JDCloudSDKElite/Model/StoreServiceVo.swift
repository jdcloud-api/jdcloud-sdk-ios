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

///  storeServiceVo
@objc(StoreServiceVo)
public class StoreServiceVo:NSObject,Codable{
    /// 购买用户pin
    var buyerPin:String?
    /// 业务数据，下单时传入的
    var businessData:String?
    /// 云存服务明细列表
    var storeServiceDetails:[StoreServiceDetailVo?]?
    /// 订单数量
    var orderNum:Int?
    /// 更新时间，格式：yyyy-MM-dd HH:mm:ss
    var updateTime:String?



    public override init(){
            super.init()
    }

    enum StoreServiceVoCodingKeys: String, CodingKey {
        case buyerPin
        case businessData
        case storeServiceDetails
        case orderNum
        case updateTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StoreServiceVoCodingKeys.self)
        if decoderContainer.contains(.buyerPin)
        {
            self.buyerPin = try decoderContainer.decode(String?.self, forKey: .buyerPin)
        }
        if decoderContainer.contains(.businessData)
        {
            self.businessData = try decoderContainer.decode(String?.self, forKey: .businessData)
        }
        if decoderContainer.contains(.storeServiceDetails)
        {
            self.storeServiceDetails = try decoderContainer.decode([StoreServiceDetailVo?]?.self, forKey: .storeServiceDetails)
        }
        if decoderContainer.contains(.orderNum)
        {
            self.orderNum = try decoderContainer.decode(Int?.self, forKey: .orderNum)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
    }
}
public extension StoreServiceVo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StoreServiceVoCodingKeys.self)
         try encoderContainer.encode(buyerPin, forKey: .buyerPin)
         try encoderContainer.encode(businessData, forKey: .businessData)
         try encoderContainer.encode(storeServiceDetails, forKey: .storeServiceDetails)
         try encoderContainer.encode(orderNum, forKey: .orderNum)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}
