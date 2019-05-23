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

///  operationRecord
@objc(OperationRecord)
public class OperationRecord:NSObject,Codable{
    /// 操作时间
    var time:String?
    /// 防护包名称
    var name:String?
    /// 操作类型:  1：套餐变更, 2：防护规则变更, 3：防护对象变更, 4：IP 地址变更, 5：防护包名称变更
    var action:Int?
    /// 操作详情
    var info:String?
    /// 操作人
    var operatorValue:String?



    public override init(){
            super.init()
    }

    enum OperationRecordCodingKeys: String, CodingKey {
        case time
        case name
        case action
        case info
        case operatorValue = "operator"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OperationRecordCodingKeys.self)
        if decoderContainer.contains(.time)
        {
            self.time = try decoderContainer.decode(String?.self, forKey: .time)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.action)
        {
            self.action = try decoderContainer.decode(Int?.self, forKey: .action)
        }
        if decoderContainer.contains(.info)
        {
            self.info = try decoderContainer.decode(String?.self, forKey: .info)
        }
        if decoderContainer.contains(.operatorValue)
        {
            self.operatorValue = try decoderContainer.decode(String?.self, forKey: .operatorValue)
        }
    }
}
public extension OperationRecord{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OperationRecordCodingKeys.self)
         try encoderContainer.encode(time, forKey: .time)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(action, forKey: .action)
         try encoderContainer.encode(info, forKey: .info)
         try encoderContainer.encode(operatorValue, forKey: .operatorValue)
    }
}
