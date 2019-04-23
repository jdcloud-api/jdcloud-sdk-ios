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

///  keyVersionItem
@objc(KeyVersionItem)
public class KeyVersionItem:NSObject,Codable{
    /// 版本号
    /// Required:true
    var keyVersion:String
    /// 创建时间，采用ISO8601标准，格式为: YYYY-MM-DDTHH:mm:ssZ
    /// Required:true
    var createTime:String
    /// Key当前状态: 0:已启用、1:已禁用、2:计划删除
    /// Required:true
    var keyStatus:Int
    /// 计划删除的时间，采用ISO8601标准，格式为: YYYY-MM-DDTHH:mm:ssZ
    /// Required:true
    var deleteTime:String



    public  init(keyVersion:String,createTime:String,keyStatus:Int,deleteTime:String){
             self.keyVersion = keyVersion
             self.createTime = createTime
             self.keyStatus = keyStatus
             self.deleteTime = deleteTime
    }

    enum KeyVersionItemCodingKeys: String, CodingKey {
        case keyVersion
        case createTime
        case keyStatus
        case deleteTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: KeyVersionItemCodingKeys.self)
        self.keyVersion = try decoderContainer.decode(String.self, forKey: .keyVersion)
        self.createTime = try decoderContainer.decode(String.self, forKey: .createTime)
        self.keyStatus = try decoderContainer.decode(Int.self, forKey: .keyStatus)
        self.deleteTime = try decoderContainer.decode(String.self, forKey: .deleteTime)
    }
}
public extension KeyVersionItem{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: KeyVersionItemCodingKeys.self)
         try encoderContainer.encode(keyVersion, forKey: .keyVersion)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(keyStatus, forKey: .keyStatus)
         try encoderContainer.encode(deleteTime, forKey: .deleteTime)
    }
}
