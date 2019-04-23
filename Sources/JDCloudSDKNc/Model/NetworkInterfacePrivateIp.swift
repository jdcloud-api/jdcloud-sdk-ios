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

///  描述网卡私有Ip资源的信息
@objc(NetworkInterfacePrivateIp)
public class NetworkInterfacePrivateIp:NSObject,Codable{
    /// 私有IP的IPV4地址
    var privateIpAddress:String?
    /// 私有IP的IPV4地址
    var elasticIpId:String?
    /// 弹性IP实例地址
    var elasticIpAddress:String?



    public override init(){
            super.init()
    }

    enum NetworkInterfacePrivateIpCodingKeys: String, CodingKey {
        case privateIpAddress
        case elasticIpId
        case elasticIpAddress
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NetworkInterfacePrivateIpCodingKeys.self)
        if decoderContainer.contains(.privateIpAddress)
        {
            self.privateIpAddress = try decoderContainer.decode(String?.self, forKey: .privateIpAddress)
        }
        if decoderContainer.contains(.elasticIpId)
        {
            self.elasticIpId = try decoderContainer.decode(String?.self, forKey: .elasticIpId)
        }
        if decoderContainer.contains(.elasticIpAddress)
        {
            self.elasticIpAddress = try decoderContainer.decode(String?.self, forKey: .elasticIpAddress)
        }
    }
}
public extension NetworkInterfacePrivateIp{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NetworkInterfacePrivateIpCodingKeys.self)
         try encoderContainer.encode(privateIpAddress, forKey: .privateIpAddress)
         try encoderContainer.encode(elasticIpId, forKey: .elasticIpId)
         try encoderContainer.encode(elasticIpAddress, forKey: .elasticIpAddress)
    }
}
