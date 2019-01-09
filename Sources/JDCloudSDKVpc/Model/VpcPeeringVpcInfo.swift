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

///  vpcPeeringVpcInfo
@objc(VpcPeeringVpcInfo)
public class VpcPeeringVpcInfo:NSObject,Codable{
    /// 子网所属VPC的Id
    var vpcId:String?
    /// 私有网络名称，取值范围：1-60个中文、英文大小写的字母、数字和下划线分隔符
    var vpcName:String?
    /// 如果为空，则不限制网段，如果不为空，10.0.0.0/8、172.16.0.0/12和192.168.0.0/16及它们包含的子网，且子网掩码长度为16-28之间
    var addressPrefix:[String?]?



    public override init(){
            super.init()
    }

    enum VpcPeeringVpcInfoCodingKeys: String, CodingKey {
        case vpcId
        case vpcName
        case addressPrefix
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: VpcPeeringVpcInfoCodingKeys.self)
        if decoderContainer.contains(.vpcId)
        {
            self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        }
        if decoderContainer.contains(.vpcName)
        {
            self.vpcName = try decoderContainer.decode(String?.self, forKey: .vpcName)
        }
        if decoderContainer.contains(.addressPrefix)
        {
            self.addressPrefix = try decoderContainer.decode([String?]?.self, forKey: .addressPrefix)
        }
    }
}
public extension VpcPeeringVpcInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: VpcPeeringVpcInfoCodingKeys.self)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(vpcName, forKey: .vpcName)
         try encoderContainer.encode(addressPrefix, forKey: .addressPrefix)
    }
}
