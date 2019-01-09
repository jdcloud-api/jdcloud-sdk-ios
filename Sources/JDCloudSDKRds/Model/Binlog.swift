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

///  binlog
@objc(Binlog)
public class Binlog:NSObject,Codable{
    /// binlog日志备份ID
    var binlogBackupId:String?
    /// binlog日志名称
    var binlogName:String?
    /// binlog日志大小，单位KB
    var binlogSizeKB:Int64?
    /// binlog开始时间,格式为：YYYY-MM-DD HH:mm:ss
    var binlogStartTime:String?
    /// binlog结束时间,格式为：YYYY-MM-DD HH:mm:ss
    var binlogEndTime:String?



    public override init(){
            super.init()
    }

    enum BinlogCodingKeys: String, CodingKey {
        case binlogBackupId
        case binlogName
        case binlogSizeKB
        case binlogStartTime
        case binlogEndTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BinlogCodingKeys.self)
        if decoderContainer.contains(.binlogBackupId)
        {
            self.binlogBackupId = try decoderContainer.decode(String?.self, forKey: .binlogBackupId)
        }
        if decoderContainer.contains(.binlogName)
        {
            self.binlogName = try decoderContainer.decode(String?.self, forKey: .binlogName)
        }
        if decoderContainer.contains(.binlogSizeKB)
        {
            self.binlogSizeKB = try decoderContainer.decode(Int64?.self, forKey: .binlogSizeKB)
        }
        if decoderContainer.contains(.binlogStartTime)
        {
            self.binlogStartTime = try decoderContainer.decode(String?.self, forKey: .binlogStartTime)
        }
        if decoderContainer.contains(.binlogEndTime)
        {
            self.binlogEndTime = try decoderContainer.decode(String?.self, forKey: .binlogEndTime)
        }
    }
}
public extension Binlog{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BinlogCodingKeys.self)
         try encoderContainer.encode(binlogBackupId, forKey: .binlogBackupId)
         try encoderContainer.encode(binlogName, forKey: .binlogName)
         try encoderContainer.encode(binlogSizeKB, forKey: .binlogSizeKB)
         try encoderContainer.encode(binlogStartTime, forKey: .binlogStartTime)
         try encoderContainer.encode(binlogEndTime, forKey: .binlogEndTime)
    }
}
