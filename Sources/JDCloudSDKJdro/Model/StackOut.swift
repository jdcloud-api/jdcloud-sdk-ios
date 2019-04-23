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

///  stackOut
@objc(StackOut)
public class StackOut:NSObject,Codable{
    /// 资源栈运行操作
    var action:String?
    /// 资源栈能否更新
    var canUpdate:Bool?
    /// 资源栈创建时间
    var createTime:String?
    /// 资源栈是否回滚设置
    var disableRollback:Bool?
    /// 资源栈ID
    var id:String?
    /// 资源栈输入信息，JSON格式，此字段只在查询资源栈详情describeStack时有值
    var input:[String:AnyObject?]?
    /// 资源栈名称
    var name:String?
    /// 资源栈输出信息，JSON格式, 此字段只在查询资源栈详情describeStack时有值
    var output:[String:AnyObject?]?
    /// 资源栈所在区域
    var region:String?
    /// 资源栈版本
    var stackVersion:Int64?
    /// 资源栈运行状态
    var status:String?
    /// 资源栈运行状态原因
    var statusReason:String?
    /// 资源栈使用的template ID
    var templateId:String?
    /// 资源栈超时时间
    var timeout:Int64?
    /// 资源栈更新时间
    var updateTime:String?



    public override init(){
            super.init()
    }

    enum StackOutCodingKeys: String, CodingKey {
        case action
        case canUpdate
        case createTime
        case disableRollback
        case id
        case input
        case name
        case output
        case region
        case stackVersion
        case status
        case statusReason
        case templateId
        case timeout
        case updateTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StackOutCodingKeys.self)
        if decoderContainer.contains(.action)
        {
            self.action = try decoderContainer.decode(String?.self, forKey: .action)
        }
        if decoderContainer.contains(.canUpdate)
        {
            self.canUpdate = try decoderContainer.decode(Bool?.self, forKey: .canUpdate)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.disableRollback)
        {
            self.disableRollback = try decoderContainer.decode(Bool?.self, forKey: .disableRollback)
        }
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.region)
        {
            self.region = try decoderContainer.decode(String?.self, forKey: .region)
        }
        if decoderContainer.contains(.stackVersion)
        {
            self.stackVersion = try decoderContainer.decode(Int64?.self, forKey: .stackVersion)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.statusReason)
        {
            self.statusReason = try decoderContainer.decode(String?.self, forKey: .statusReason)
        }
        if decoderContainer.contains(.templateId)
        {
            self.templateId = try decoderContainer.decode(String?.self, forKey: .templateId)
        }
        if decoderContainer.contains(.timeout)
        {
            self.timeout = try decoderContainer.decode(Int64?.self, forKey: .timeout)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
    }
}
public extension StackOut{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StackOutCodingKeys.self)
         try encoderContainer.encode(action, forKey: .action)
         try encoderContainer.encode(canUpdate, forKey: .canUpdate)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(disableRollback, forKey: .disableRollback)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(stackVersion, forKey: .stackVersion)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(statusReason, forKey: .statusReason)
         try encoderContainer.encode(templateId, forKey: .templateId)
         try encoderContainer.encode(timeout, forKey: .timeout)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}
