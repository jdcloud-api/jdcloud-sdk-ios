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

///  networkInterfaceSpec
@objc(NetworkInterfaceSpec)
public class NetworkInterfaceSpec:NSObject,Codable{
    /// 子网ID
    /// Required:true
    var subnetId:String
    /// 可用区，用户的默认可用区
    var az:String?
    /// 网卡名称，只允许输入中文、数字、大小写字母、英文下划线“_”及中划线“-”，不允许为空且不超过32字符。
    var networkInterfaceName:String?
    /// 网卡主IP，如果不指定，会自动从子网中分配
    var primaryIpAddress:String?
    /// SecondaryIp列表
    var secondaryIpAddresses:[String?]?
    /// 自动分配的SecondaryIp数量
    var secondaryIpCount:Int?
    /// 要绑定的安全组ID列表，最多指定5个安全组
    var securityGroups:[String?]?
    /// 源和目标IP地址校验，取值为0或者1,默认为1
    var sanityCheck:Int?
    /// 描述,​ 允许输入UTF-8编码下的全部字符，不超过256字符
    var descriptionValue:String?



    public  init(subnetId:String){
             self.subnetId = subnetId
    }

    enum NetworkInterfaceSpecCodingKeys: String, CodingKey {
        case subnetId
        case az
        case networkInterfaceName
        case primaryIpAddress
        case secondaryIpAddresses
        case secondaryIpCount
        case securityGroups
        case sanityCheck
        case descriptionValue = "description"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NetworkInterfaceSpecCodingKeys.self)
        self.subnetId = try decoderContainer.decode(String.self, forKey: .subnetId)
        if decoderContainer.contains(.az)
        {
            self.az = try decoderContainer.decode(String?.self, forKey: .az)
        }
        if decoderContainer.contains(.networkInterfaceName)
        {
            self.networkInterfaceName = try decoderContainer.decode(String?.self, forKey: .networkInterfaceName)
        }
        if decoderContainer.contains(.primaryIpAddress)
        {
            self.primaryIpAddress = try decoderContainer.decode(String?.self, forKey: .primaryIpAddress)
        }
        if decoderContainer.contains(.secondaryIpAddresses)
        {
            self.secondaryIpAddresses = try decoderContainer.decode([String?]?.self, forKey: .secondaryIpAddresses)
        }
        if decoderContainer.contains(.secondaryIpCount)
        {
            self.secondaryIpCount = try decoderContainer.decode(Int?.self, forKey: .secondaryIpCount)
        }
        if decoderContainer.contains(.securityGroups)
        {
            self.securityGroups = try decoderContainer.decode([String?]?.self, forKey: .securityGroups)
        }
        if decoderContainer.contains(.sanityCheck)
        {
            self.sanityCheck = try decoderContainer.decode(Int?.self, forKey: .sanityCheck)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
    }
}
public extension NetworkInterfaceSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NetworkInterfaceSpecCodingKeys.self)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(az, forKey: .az)
         try encoderContainer.encode(networkInterfaceName, forKey: .networkInterfaceName)
         try encoderContainer.encode(primaryIpAddress, forKey: .primaryIpAddress)
         try encoderContainer.encode(secondaryIpAddresses, forKey: .secondaryIpAddresses)
         try encoderContainer.encode(secondaryIpCount, forKey: .secondaryIpCount)
         try encoderContainer.encode(securityGroups, forKey: .securityGroups)
         try encoderContainer.encode(sanityCheck, forKey: .sanityCheck)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
    }
}
