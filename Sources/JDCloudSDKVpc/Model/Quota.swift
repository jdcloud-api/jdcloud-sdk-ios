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

///  quota
@objc(Quota)
public class Quota:NSObject,Codable{
    /// 资源类型，取值范围：vpc、elastic_ip、subnet、security_group、vpcpeering、network_interface（配额只统计辅助网卡）
    var type:String?
    /// vpc、elastic_ip、network_interface为空, subnet、security_group、vpcpeering为vpcId
    var parentResourceId:String?
    /// 配额大小
    var maxLimit:Double?
    /// 已存在的资源数量
    var count:Double?



    public override init(){
            super.init()
    }

    enum QuotaCodingKeys: String, CodingKey {
        case type
        case parentResourceId
        case maxLimit
        case count
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QuotaCodingKeys.self)
        if decoderContainer.contains(.type)
        {
            self.type = try decoderContainer.decode(String?.self, forKey: .type)
        }
        if decoderContainer.contains(.parentResourceId)
        {
            self.parentResourceId = try decoderContainer.decode(String?.self, forKey: .parentResourceId)
        }
        if decoderContainer.contains(.maxLimit)
        {
            self.maxLimit = try decoderContainer.decode(Double?.self, forKey: .maxLimit)
        }
        if decoderContainer.contains(.count)
        {
            self.count = try decoderContainer.decode(Double?.self, forKey: .count)
        }
    }
}
public extension Quota{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QuotaCodingKeys.self)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(parentResourceId, forKey: .parentResourceId)
         try encoderContainer.encode(maxLimit, forKey: .maxLimit)
         try encoderContainer.encode(count, forKey: .count)
    }
}
