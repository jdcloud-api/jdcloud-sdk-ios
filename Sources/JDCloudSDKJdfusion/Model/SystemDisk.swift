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

///  否  系统盘配置
@objc(SystemDisk)
public class SystemDisk:NSObject,Codable{
    /// 否  系统盘的磁盘种类
    var category:String?
    /// 系统盘大小
    var diskSize:Int32?
    /// 系统盘描述
    var descriptionValue:String?



    public override init(){
            super.init()
    }

    enum SystemDiskCodingKeys: String, CodingKey {
        case category
        case diskSize
        case descriptionValue = "description"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SystemDiskCodingKeys.self)
        if decoderContainer.contains(.category)
        {
            self.category = try decoderContainer.decode(String?.self, forKey: .category)
        }
        if decoderContainer.contains(.diskSize)
        {
            self.diskSize = try decoderContainer.decode(Int32?.self, forKey: .diskSize)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
    }
}
public extension SystemDisk{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SystemDiskCodingKeys.self)
         try encoderContainer.encode(category, forKey: .category)
         try encoderContainer.encode(diskSize, forKey: .diskSize)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
    }
}