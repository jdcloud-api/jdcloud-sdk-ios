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


///  给网卡分配secondaryIp接口
@objc(AssignSecondaryIpsRequest)
public class AssignSecondaryIpsRequest:JdCloudRequest
{
    /// secondary ip被其他接口占用时，是否抢占。false：非抢占重分配，true：抢占重分配，默认抢占重分配。默认值：true
    var force:Bool?

    /// 指定分配的secondaryIp地址
    var secondaryIps:[String?]?

    /// 指定自动分配的secondaryIp个数
    var secondaryIpCount:Double?

    /// networkInterface ID
    var networkInterfaceId:String


    public init(regionId: String,networkInterfaceId:String){
        self.networkInterfaceId = networkInterfaceId
        super.init(regionId: regionId)
    }


    enum AssignSecondaryIpsRequestRequestCodingKeys: String, CodingKey {
        case force
        case secondaryIps
        case secondaryIpCount
        case networkInterfaceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AssignSecondaryIpsRequestRequestCodingKeys.self)
        try encoderContainer.encode(force, forKey: .force)
        try encoderContainer.encode(secondaryIps, forKey: .secondaryIps)
        try encoderContainer.encode(secondaryIpCount, forKey: .secondaryIpCount)
        try encoderContainer.encode(networkInterfaceId, forKey: .networkInterfaceId)

    }
}
