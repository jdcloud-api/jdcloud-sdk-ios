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

   ModuleManager
   用于完成设备全生命周期管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  客户用该接口可以登记模块
      ///       /// 
@objc(ModuleEnrollRequest)
public class ModuleEnrollRequest:JdCloudRequest
{
    /// InstanceId
    var instanceId:String?

    /// ModelName
    var modelName:String?

    /// ParentDeviceName
    var parentDeviceName:String?

    /// Name
    var name:String?

    /// moduleName 唯一标识
    var moduleName:String


    public init(regionId: String,moduleName:String){
        self.moduleName = moduleName
        super.init(regionId: regionId)
    }


    enum ModuleEnrollRequestRequestCodingKeys: String, CodingKey {
        case instanceId
        case modelName
        case parentDeviceName
        case name
        case moduleName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModuleEnrollRequestRequestCodingKeys.self)
        try encoderContainer.encode(instanceId, forKey: .instanceId)
        try encoderContainer.encode(modelName, forKey: .modelName)
        try encoderContainer.encode(parentDeviceName, forKey: .parentDeviceName)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(moduleName, forKey: .moduleName)

    }
}
