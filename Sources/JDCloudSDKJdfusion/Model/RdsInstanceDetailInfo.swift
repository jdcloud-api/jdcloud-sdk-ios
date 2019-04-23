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

///  RDS数据库实例详细信息
@objc(RdsInstanceDetailInfo)
public class RdsInstanceDetailInfo:NSObject,Codable{
    /// RDS实例ID
    var id:String?
    /// RDS实例名称
    var name:String?
    /// 可用区ID
    var azs:[String?]?
    /// 实例引擎类型
    var engine:String?
    /// 实例引擎版本
    var engineVersion:String?
    /// 实例状态
    var status:String?
    /// 付费方式，Postpaid：后付费; Prepaid：预付费
    var payType:String?
    /// 磁盘，单位GB
    var storageGB:Int32?
    /// 内存大小，单位MB
    var memoryMB:Double?
    /// 实例类型
    var instanceType:String?
    /// 实例规格
    var instanceClassType:String?
    /// 实例的访问模式
    var connectionMode:String?
    /// 连接地址
    var connectionString:String?
    /// CPU核数
    var instanceCPU:Int?
    /// 端口
    var port:String?
    /// VPC ID
    var vpcId:String?
    /// subnet ID
    var subnetId:String?
    /// 所属云提供商ID
    var cloudID:String?



    public override init(){
            super.init()
    }

    enum RdsInstanceDetailInfoCodingKeys: String, CodingKey {
        case id
        case name
        case azs
        case engine
        case engineVersion
        case status
        case payType
        case storageGB
        case memoryMB
        case instanceType
        case instanceClassType
        case connectionMode
        case connectionString
        case instanceCPU
        case port
        case vpcId
        case subnetId
        case cloudID
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RdsInstanceDetailInfoCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.azs)
        {
            self.azs = try decoderContainer.decode([String?]?.self, forKey: .azs)
        }
        if decoderContainer.contains(.engine)
        {
            self.engine = try decoderContainer.decode(String?.self, forKey: .engine)
        }
        if decoderContainer.contains(.engineVersion)
        {
            self.engineVersion = try decoderContainer.decode(String?.self, forKey: .engineVersion)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.payType)
        {
            self.payType = try decoderContainer.decode(String?.self, forKey: .payType)
        }
        if decoderContainer.contains(.storageGB)
        {
            self.storageGB = try decoderContainer.decode(Int32?.self, forKey: .storageGB)
        }
        if decoderContainer.contains(.memoryMB)
        {
            self.memoryMB = try decoderContainer.decode(Double?.self, forKey: .memoryMB)
        }
        if decoderContainer.contains(.instanceType)
        {
            self.instanceType = try decoderContainer.decode(String?.self, forKey: .instanceType)
        }
        if decoderContainer.contains(.instanceClassType)
        {
            self.instanceClassType = try decoderContainer.decode(String?.self, forKey: .instanceClassType)
        }
        if decoderContainer.contains(.connectionMode)
        {
            self.connectionMode = try decoderContainer.decode(String?.self, forKey: .connectionMode)
        }
        if decoderContainer.contains(.connectionString)
        {
            self.connectionString = try decoderContainer.decode(String?.self, forKey: .connectionString)
        }
        if decoderContainer.contains(.instanceCPU)
        {
            self.instanceCPU = try decoderContainer.decode(Int?.self, forKey: .instanceCPU)
        }
        if decoderContainer.contains(.port)
        {
            self.port = try decoderContainer.decode(String?.self, forKey: .port)
        }
        if decoderContainer.contains(.vpcId)
        {
            self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        }
        if decoderContainer.contains(.subnetId)
        {
            self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        }
        if decoderContainer.contains(.cloudID)
        {
            self.cloudID = try decoderContainer.decode(String?.self, forKey: .cloudID)
        }
    }
}
public extension RdsInstanceDetailInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RdsInstanceDetailInfoCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(azs, forKey: .azs)
         try encoderContainer.encode(engine, forKey: .engine)
         try encoderContainer.encode(engineVersion, forKey: .engineVersion)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(payType, forKey: .payType)
         try encoderContainer.encode(storageGB, forKey: .storageGB)
         try encoderContainer.encode(memoryMB, forKey: .memoryMB)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(instanceClassType, forKey: .instanceClassType)
         try encoderContainer.encode(connectionMode, forKey: .connectionMode)
         try encoderContainer.encode(connectionString, forKey: .connectionString)
         try encoderContainer.encode(instanceCPU, forKey: .instanceCPU)
         try encoderContainer.encode(port, forKey: .port)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(cloudID, forKey: .cloudID)
    }
}