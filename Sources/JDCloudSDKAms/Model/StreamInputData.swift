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

///  streamInputData
@objc(StreamInputData)
public class StreamInputData:NSObject,Codable{
    /// 停止时间
    var downTime:String?
    /// 媒资类型
    var mediaType:String?
    /// 实际码率
    var bitrateFact:String?
    /// 基准帧率
    var fpsDatum:String?
    /// 实际帧率
    var fpsFact:String?
    /// 基准码率
    var bitrateDatum:String?
    /// 基准帧时间戳跳变
    var tsDeltaDatum:String?
    /// 实际帧时间戳跳变
    var tsDeltaFact:String?



    public override init(){
            super.init()
    }

    enum StreamInputDataCodingKeys: String, CodingKey {
        case downTime
        case mediaType
        case bitrateFact
        case fpsDatum
        case fpsFact
        case bitrateDatum
        case tsDeltaDatum
        case tsDeltaFact
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StreamInputDataCodingKeys.self)
        if decoderContainer.contains(.downTime)
        {
            self.downTime = try decoderContainer.decode(String?.self, forKey: .downTime)
        }
        if decoderContainer.contains(.mediaType)
        {
            self.mediaType = try decoderContainer.decode(String?.self, forKey: .mediaType)
        }
        if decoderContainer.contains(.bitrateFact)
        {
            self.bitrateFact = try decoderContainer.decode(String?.self, forKey: .bitrateFact)
        }
        if decoderContainer.contains(.fpsDatum)
        {
            self.fpsDatum = try decoderContainer.decode(String?.self, forKey: .fpsDatum)
        }
        if decoderContainer.contains(.fpsFact)
        {
            self.fpsFact = try decoderContainer.decode(String?.self, forKey: .fpsFact)
        }
        if decoderContainer.contains(.bitrateDatum)
        {
            self.bitrateDatum = try decoderContainer.decode(String?.self, forKey: .bitrateDatum)
        }
        if decoderContainer.contains(.tsDeltaDatum)
        {
            self.tsDeltaDatum = try decoderContainer.decode(String?.self, forKey: .tsDeltaDatum)
        }
        if decoderContainer.contains(.tsDeltaFact)
        {
            self.tsDeltaFact = try decoderContainer.decode(String?.self, forKey: .tsDeltaFact)
        }
    }
}
public extension StreamInputData{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StreamInputDataCodingKeys.self)
         try encoderContainer.encode(downTime, forKey: .downTime)
         try encoderContainer.encode(mediaType, forKey: .mediaType)
         try encoderContainer.encode(bitrateFact, forKey: .bitrateFact)
         try encoderContainer.encode(fpsDatum, forKey: .fpsDatum)
         try encoderContainer.encode(fpsFact, forKey: .fpsFact)
         try encoderContainer.encode(bitrateDatum, forKey: .bitrateDatum)
         try encoderContainer.encode(tsDeltaDatum, forKey: .tsDeltaDatum)
         try encoderContainer.encode(tsDeltaFact, forKey: .tsDeltaFact)
    }
}