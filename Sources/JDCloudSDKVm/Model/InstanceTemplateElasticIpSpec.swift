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

///  instanceTemplateElasticIpSpec
@objc(InstanceTemplateElasticIpSpec)
public class InstanceTemplateElasticIpSpec:NSObject,Codable{
    /// 弹性公网IP的限速（单位：MB）
    /// Required:true
    var bandwidthMbps:Int
    /// IP服务商，取值为BGP,nonBGP
    var provider:String?
    /// 计费类型，支持按带宽计费(bandwith)，按流量计费(flow)
    /// Required:true
    var chargeMode:String



    public  init(bandwidthMbps:Int,chargeMode:String){
             self.bandwidthMbps = bandwidthMbps
             self.chargeMode = chargeMode
    }

    enum InstanceTemplateElasticIpSpecCodingKeys: String, CodingKey {
        case bandwidthMbps
        case provider
        case chargeMode
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceTemplateElasticIpSpecCodingKeys.self)
        self.bandwidthMbps = try decoderContainer.decode(Int.self, forKey: .bandwidthMbps)
        if decoderContainer.contains(.provider)
        {
            self.provider = try decoderContainer.decode(String?.self, forKey: .provider)
        }
        self.chargeMode = try decoderContainer.decode(String.self, forKey: .chargeMode)
    }
}
public extension InstanceTemplateElasticIpSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceTemplateElasticIpSpecCodingKeys.self)
         try encoderContainer.encode(bandwidthMbps, forKey: .bandwidthMbps)
         try encoderContainer.encode(provider, forKey: .provider)
         try encoderContainer.encode(chargeMode, forKey: .chargeMode)
    }
}
