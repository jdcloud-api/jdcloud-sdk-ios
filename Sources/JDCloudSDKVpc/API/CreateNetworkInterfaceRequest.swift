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

   弹性网卡
   弹性网卡相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建网卡接口，只能创建辅助网卡
@objc(CreateNetworkInterfaceRequest)
public class CreateNetworkInterfaceRequest:JdCloudRequest
{
    /// 子网ID
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


    public init(regionId: String,subnetId:String){
        self.subnetId = subnetId
        super.init(regionId: regionId)
    }


    enum CreateNetworkInterfaceRequestRequestCodingKeys: String, CodingKey {
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

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateNetworkInterfaceRequestRequestCodingKeys.self)
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
