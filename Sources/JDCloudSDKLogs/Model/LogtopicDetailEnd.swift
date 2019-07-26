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

///  logtopicDetailEnd
@objc(LogtopicDetailEnd)
public class LogtopicDetailEnd:NSObject,Codable{
    /// CollectInfo
    var collectInfo:CollectInfoDetailEnd?
    /// UID
    var uID:String?
    /// 采集配置UID
    var collectInfoUID:String?
    /// 创建时间
    var createTime:String?
    /// 描述信息
    var descriptionValue:String?
    /// 最新日志上报时间
    var lastRecordTime:String?
    /// 所属日志集名称
    var logsetName:String?
    /// 所属日志集
    var logsetUID:String?
    /// 日志主题名称
    var name:String?
    /// 地域信息
    var region:String?



    public override init(){
            super.init()
    }

    enum LogtopicDetailEndCodingKeys: String, CodingKey {
        case collectInfo
        case uID
        case collectInfoUID
        case createTime
        case descriptionValue = "description"
        case lastRecordTime
        case logsetName
        case logsetUID
        case name
        case region
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: LogtopicDetailEndCodingKeys.self)
        if decoderContainer.contains(.collectInfo)
        {
            self.collectInfo = try decoderContainer.decode(CollectInfoDetailEnd?.self, forKey: .collectInfo)
        }
        if decoderContainer.contains(.uID)
        {
            self.uID = try decoderContainer.decode(String?.self, forKey: .uID)
        }
        if decoderContainer.contains(.collectInfoUID)
        {
            self.collectInfoUID = try decoderContainer.decode(String?.self, forKey: .collectInfoUID)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.lastRecordTime)
        {
            self.lastRecordTime = try decoderContainer.decode(String?.self, forKey: .lastRecordTime)
        }
        if decoderContainer.contains(.logsetName)
        {
            self.logsetName = try decoderContainer.decode(String?.self, forKey: .logsetName)
        }
        if decoderContainer.contains(.logsetUID)
        {
            self.logsetUID = try decoderContainer.decode(String?.self, forKey: .logsetUID)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.region)
        {
            self.region = try decoderContainer.decode(String?.self, forKey: .region)
        }
    }
}
public extension LogtopicDetailEnd{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: LogtopicDetailEndCodingKeys.self)
         try encoderContainer.encode(collectInfo, forKey: .collectInfo)
         try encoderContainer.encode(uID, forKey: .uID)
         try encoderContainer.encode(collectInfoUID, forKey: .collectInfoUID)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(lastRecordTime, forKey: .lastRecordTime)
         try encoderContainer.encode(logsetName, forKey: .logsetName)
         try encoderContainer.encode(logsetUID, forKey: .logsetUID)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(region, forKey: .region)
    }
}
