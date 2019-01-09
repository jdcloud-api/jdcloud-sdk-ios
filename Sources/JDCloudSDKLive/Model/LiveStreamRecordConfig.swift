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

///  liveStreamRecordConfig
@objc(LiveStreamRecordConfig)
public class LiveStreamRecordConfig:NSObject,Codable{
    /// 推流域名
    var publishDomain:String?
    /// appName
    var appName:String?
    /// 流名
    var streamName:String?
    /// 水印模板配置
    var watermarkConfig:[String?]?



    public override init(){
            super.init()
    }

    enum LiveStreamRecordConfigCodingKeys: String, CodingKey {
        case publishDomain
        case appName
        case streamName
        case watermarkConfig
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: LiveStreamRecordConfigCodingKeys.self)
        if decoderContainer.contains(.publishDomain)
        {
            self.publishDomain = try decoderContainer.decode(String?.self, forKey: .publishDomain)
        }
        if decoderContainer.contains(.appName)
        {
            self.appName = try decoderContainer.decode(String?.self, forKey: .appName)
        }
        if decoderContainer.contains(.streamName)
        {
            self.streamName = try decoderContainer.decode(String?.self, forKey: .streamName)
        }
        if decoderContainer.contains(.watermarkConfig)
        {
            self.watermarkConfig = try decoderContainer.decode([String?]?.self, forKey: .watermarkConfig)
        }
    }
}
public extension LiveStreamRecordConfig{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: LiveStreamRecordConfigCodingKeys.self)
         try encoderContainer.encode(publishDomain, forKey: .publishDomain)
         try encoderContainer.encode(appName, forKey: .appName)
         try encoderContainer.encode(streamName, forKey: .streamName)
         try encoderContainer.encode(watermarkConfig, forKey: .watermarkConfig)
    }
}
