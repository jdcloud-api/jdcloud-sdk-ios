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

   云物理服务器
   云物理服务器操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 修改云物理服务器部分信息，包括名称、描述
@objc(ModifyInstanceResult)
public class ModifyInstanceResult:NSObject,JdCloudResult
{
    /// 云物理服务器名称
    var name:String?

    /// 云物理服务器描述
    var descriptionValue:String?



    public override init(){
        super.init()
    }

    enum ModifyInstanceResultCodingKeys: String, CodingKey {
        case name
        case descriptionValue = "description"
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ModifyInstanceResultCodingKeys.self)
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
    }
}
public extension ModifyInstanceResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyInstanceResultCodingKeys.self)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
    }
}
