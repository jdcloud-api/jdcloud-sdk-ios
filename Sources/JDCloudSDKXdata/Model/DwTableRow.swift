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

///  dwTableRow
@objc(DwTableRow)
public class DwTableRow:NSObject,Codable{
    /// 字段名称
    var columnName:String?
    /// 字段类型
    var columnType:String?
    /// 是否分区字段
    var isPartition:Bool?
    /// 描述信息
    var comments:String?



    public override init(){
            super.init()
    }

    enum DwTableRowCodingKeys: String, CodingKey {
        case columnName
        case columnType
        case isPartition
        case comments
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DwTableRowCodingKeys.self)
        if decoderContainer.contains(.columnName)
        {
            self.columnName = try decoderContainer.decode(String?.self, forKey: .columnName)
        }
        if decoderContainer.contains(.columnType)
        {
            self.columnType = try decoderContainer.decode(String?.self, forKey: .columnType)
        }
        if decoderContainer.contains(.isPartition)
        {
            self.isPartition = try decoderContainer.decode(Bool?.self, forKey: .isPartition)
        }
        if decoderContainer.contains(.comments)
        {
            self.comments = try decoderContainer.decode(String?.self, forKey: .comments)
        }
    }
}
public extension DwTableRow{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DwTableRowCodingKeys.self)
         try encoderContainer.encode(columnName, forKey: .columnName)
         try encoderContainer.encode(columnType, forKey: .columnType)
         try encoderContainer.encode(isPartition, forKey: .isPartition)
         try encoderContainer.encode(comments, forKey: .comments)
    }
}
