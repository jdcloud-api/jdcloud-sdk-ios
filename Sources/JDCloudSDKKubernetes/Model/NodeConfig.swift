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

///  描述节点配置信息
@objc(NodeConfig)
public class NodeConfig:NSObject,Codable{
    /// 实例类型
    var instanceType:String?
    /// 镜像信息
    var imageId:String?
    /// 云盘系统盘的大小  单位(GB)
    var systemDiskSize:Int?
    /// 云盘系统盘的大小[ssd,premium-hdd]
    var systemDiskType:String?
    /// Node的信息
    var labels:[LabelSpec?]?



    public override init(){
            super.init()
    }

    enum NodeConfigCodingKeys: String, CodingKey {
        case instanceType
        case imageId
        case systemDiskSize
        case systemDiskType
        case labels
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NodeConfigCodingKeys.self)
        if decoderContainer.contains(.instanceType)
        {
            self.instanceType = try decoderContainer.decode(String?.self, forKey: .instanceType)
        }
        if decoderContainer.contains(.imageId)
        {
            self.imageId = try decoderContainer.decode(String?.self, forKey: .imageId)
        }
        if decoderContainer.contains(.systemDiskSize)
        {
            self.systemDiskSize = try decoderContainer.decode(Int?.self, forKey: .systemDiskSize)
        }
        if decoderContainer.contains(.systemDiskType)
        {
            self.systemDiskType = try decoderContainer.decode(String?.self, forKey: .systemDiskType)
        }
        if decoderContainer.contains(.labels)
        {
            self.labels = try decoderContainer.decode([LabelSpec?]?.self, forKey: .labels)
        }
    }
}
public extension NodeConfig{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NodeConfigCodingKeys.self)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(imageId, forKey: .imageId)
         try encoderContainer.encode(systemDiskSize, forKey: .systemDiskSize)
         try encoderContainer.encode(systemDiskType, forKey: .systemDiskType)
         try encoderContainer.encode(labels, forKey: .labels)
    }
}