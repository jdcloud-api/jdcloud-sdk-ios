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

///  priceSpec
@objc(PriceSpec)
public class PriceSpec:NSObject,Codable{
    /// 操作类型 1: 新购高防实例, 3: 升级高防实例
    /// Required:true
    var buyType:Int
    /// 计费类型 1: 按配置 2: 按用量 3: 包年包月
    /// Required:true
    var billingType:Int
    /// 链路类型, 1: 电信, 2: 电信、联通, 3: 电信、联通和移动
    /// Required:true
    var carrier:Int
    /// 业务带宽: 100, 150, 200, 250, ..., 2000, 单位: M
    /// Required:true
    var bw:Int
    /// 保底带宽: 0, 10, 20, 30, 40, 50, 60, 80, 100, 单位: Gbps
    /// Required:true
    var bp:Int
    /// 弹性带宽: 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 120, 150, 200, 单位: Gbps
    /// Required:true
    var ep:Int
    /// 实例 Id, 升级高防实例查询价格时必传
    var id:Int64?
    /// 购买防护包时长, 新购高防实例时必传
      /// - timeUnit 为 3 时, 可取值 1-9
      /// - timeUnit 为 4 时, 可取值 1-3
      /// 
    var timeSpan:Int?
    /// 购买时长类型, 新购高防实例时必传
      /// - 3: 月
      /// - 4: 年
    var timeUnit:Int?



    public  init(buyType:Int,billingType:Int,carrier:Int,bw:Int,bp:Int,ep:Int){
             self.buyType = buyType
             self.billingType = billingType
             self.carrier = carrier
             self.bw = bw
             self.bp = bp
             self.ep = ep
    }

    enum PriceSpecCodingKeys: String, CodingKey {
        case buyType
        case billingType
        case carrier
        case bw
        case bp
        case ep
        case id
        case timeSpan
        case timeUnit
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PriceSpecCodingKeys.self)
        self.buyType = try decoderContainer.decode(Int.self, forKey: .buyType)
        self.billingType = try decoderContainer.decode(Int.self, forKey: .billingType)
        self.carrier = try decoderContainer.decode(Int.self, forKey: .carrier)
        self.bw = try decoderContainer.decode(Int.self, forKey: .bw)
        self.bp = try decoderContainer.decode(Int.self, forKey: .bp)
        self.ep = try decoderContainer.decode(Int.self, forKey: .ep)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int64?.self, forKey: .id)
        }
        if decoderContainer.contains(.timeSpan)
        {
            self.timeSpan = try decoderContainer.decode(Int?.self, forKey: .timeSpan)
        }
        if decoderContainer.contains(.timeUnit)
        {
            self.timeUnit = try decoderContainer.decode(Int?.self, forKey: .timeUnit)
        }
    }
}
public extension PriceSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PriceSpecCodingKeys.self)
         try encoderContainer.encode(buyType, forKey: .buyType)
         try encoderContainer.encode(billingType, forKey: .billingType)
         try encoderContainer.encode(carrier, forKey: .carrier)
         try encoderContainer.encode(bw, forKey: .bw)
         try encoderContainer.encode(bp, forKey: .bp)
         try encoderContainer.encode(ep, forKey: .ep)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(timeSpan, forKey: .timeSpan)
         try encoderContainer.encode(timeUnit, forKey: .timeUnit)
    }
}
