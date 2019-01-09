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

   Ip高防报表相关接口
   Ip高防报表相关接口，包括cc防护、ddos防护、转发流量

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 转发流量报表
@objc(CcGraphResult)
public class CcGraphResult:NSObject,JdCloudResult
{
    /// PostProtect
    var postProtect:[Int64?]?

    /// PreProtect
    var preProtect:[Int64?]?

    /// Time
    var time:[Int64?]?

    /// 单位
    var unit:String?



    public override init(){
        super.init()
    }

    enum CcGraphResultCodingKeys: String, CodingKey {
        case postProtect
        case preProtect
        case time
        case unit
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CcGraphResultCodingKeys.self)
        if decoderContainer.contains(.postProtect)
        {
            self.postProtect = try decoderContainer.decode([Int64?]?.self, forKey: .postProtect)
        }
        if decoderContainer.contains(.preProtect)
        {
            self.preProtect = try decoderContainer.decode([Int64?]?.self, forKey: .preProtect)
        }
        if decoderContainer.contains(.time)
        {
            self.time = try decoderContainer.decode([Int64?]?.self, forKey: .time)
        }
        if decoderContainer.contains(.unit)
        {
            self.unit = try decoderContainer.decode(String?.self, forKey: .unit)
        }
    }
}
public extension CcGraphResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CcGraphResultCodingKeys.self)
        try encoderContainer.encode(postProtect, forKey: .postProtect)
        try encoderContainer.encode(preProtect, forKey: .preProtect)
        try encoderContainer.encode(time, forKey: .time)
        try encoderContainer.encode(unit, forKey: .unit)
    }
}
