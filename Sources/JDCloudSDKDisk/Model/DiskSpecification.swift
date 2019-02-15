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

///  diskSpecification
@objc(DiskSpecification)
public class DiskSpecification:NSObject,Codable{
    /// 云硬盘类型
    var diskType:String?
    /// 支持的最小尺寸，单位为 GiB
    var minSizeGB:Int?
    /// 支持的最大尺寸，单位为 GiB
    var maxSizeGB:Int?
    /// 步长尺寸，单位为 GiB
    var stepSizeGB:Int?
    /// 描述信息
    var descriptionValue:String?
    /// 默认的iops数量(基础iops数量)
    var defaultIOPS:Int?
    /// iops步长增量
    var stepIOPS:Double?
    /// 最大iops数量
    var maxIOPS:Int?
    /// 默认的吞吐量
    var defaultThroughput:Int?
    /// 吞吐量步长增量
    var stepThroughput:Double?
    /// 最大吞吐量
    var maxThroughput:Int?



    public override init(){
            super.init()
    }

    enum DiskSpecificationCodingKeys: String, CodingKey {
        case diskType
        case minSizeGB
        case maxSizeGB
        case stepSizeGB
        case descriptionValue = "description"
        case defaultIOPS
        case stepIOPS
        case maxIOPS
        case defaultThroughput
        case stepThroughput
        case maxThroughput
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DiskSpecificationCodingKeys.self)
        if decoderContainer.contains(.diskType)
        {
            self.diskType = try decoderContainer.decode(String?.self, forKey: .diskType)
        }
        if decoderContainer.contains(.minSizeGB)
        {
            self.minSizeGB = try decoderContainer.decode(Int?.self, forKey: .minSizeGB)
        }
        if decoderContainer.contains(.maxSizeGB)
        {
            self.maxSizeGB = try decoderContainer.decode(Int?.self, forKey: .maxSizeGB)
        }
        if decoderContainer.contains(.stepSizeGB)
        {
            self.stepSizeGB = try decoderContainer.decode(Int?.self, forKey: .stepSizeGB)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.defaultIOPS)
        {
            self.defaultIOPS = try decoderContainer.decode(Int?.self, forKey: .defaultIOPS)
        }
        if decoderContainer.contains(.stepIOPS)
        {
            self.stepIOPS = try decoderContainer.decode(Double?.self, forKey: .stepIOPS)
        }
        if decoderContainer.contains(.maxIOPS)
        {
            self.maxIOPS = try decoderContainer.decode(Int?.self, forKey: .maxIOPS)
        }
        if decoderContainer.contains(.defaultThroughput)
        {
            self.defaultThroughput = try decoderContainer.decode(Int?.self, forKey: .defaultThroughput)
        }
        if decoderContainer.contains(.stepThroughput)
        {
            self.stepThroughput = try decoderContainer.decode(Double?.self, forKey: .stepThroughput)
        }
        if decoderContainer.contains(.maxThroughput)
        {
            self.maxThroughput = try decoderContainer.decode(Int?.self, forKey: .maxThroughput)
        }
    }
}
public extension DiskSpecification{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DiskSpecificationCodingKeys.self)
         try encoderContainer.encode(diskType, forKey: .diskType)
         try encoderContainer.encode(minSizeGB, forKey: .minSizeGB)
         try encoderContainer.encode(maxSizeGB, forKey: .maxSizeGB)
         try encoderContainer.encode(stepSizeGB, forKey: .stepSizeGB)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(defaultIOPS, forKey: .defaultIOPS)
         try encoderContainer.encode(stepIOPS, forKey: .stepIOPS)
         try encoderContainer.encode(maxIOPS, forKey: .maxIOPS)
         try encoderContainer.encode(defaultThroughput, forKey: .defaultThroughput)
         try encoderContainer.encode(stepThroughput, forKey: .stepThroughput)
         try encoderContainer.encode(maxThroughput, forKey: .maxThroughput)
    }
}
