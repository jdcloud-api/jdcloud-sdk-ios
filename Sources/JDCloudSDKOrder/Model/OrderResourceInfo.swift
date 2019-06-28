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

   相关接口
   API related to order

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  orderResourceInfo
@objc(OrderResourceInfo)
public class OrderResourceInfo:NSObject,Codable{
    /// 订单号
    var orderNumber:String?
    /// 用户pin
    var pin:String?
    /// 资源id,下单没有传替，则预生成一个
    var resourceId:String?
    /// 创建资源唯一标识
    var sourceId:String?



    public override init(){
            super.init()
    }

    enum OrderResourceInfoCodingKeys: String, CodingKey {
        case orderNumber
        case pin
        case resourceId
        case sourceId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OrderResourceInfoCodingKeys.self)
        if decoderContainer.contains(.orderNumber)
        {
            self.orderNumber = try decoderContainer.decode(String?.self, forKey: .orderNumber)
        }
        if decoderContainer.contains(.pin)
        {
            self.pin = try decoderContainer.decode(String?.self, forKey: .pin)
        }
        if decoderContainer.contains(.resourceId)
        {
            self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
        }
        if decoderContainer.contains(.sourceId)
        {
            self.sourceId = try decoderContainer.decode(String?.self, forKey: .sourceId)
        }
    }
}
public extension OrderResourceInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OrderResourceInfoCodingKeys.self)
         try encoderContainer.encode(orderNumber, forKey: .orderNumber)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(sourceId, forKey: .sourceId)
    }
}
