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

///  statistics
@objc(Statistics)
public class Statistics:NSObject,Codable{
    /// 用户目前已经创建的函数数量
    var currentFunctionNumber:Int?
    /// 用户可创建函数的最大数量
    var maxFunctionNumber:Int?
    /// 用户当前使用的代码存储空间
    var currentCodeSize:Double?
    /// 用户可使用的最大代码存储空间
    var maxCodeSize:Int?



    public override init(){
            super.init()
    }

    enum StatisticsCodingKeys: String, CodingKey {
        case currentFunctionNumber
        case maxFunctionNumber
        case currentCodeSize
        case maxCodeSize
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StatisticsCodingKeys.self)
        if decoderContainer.contains(.currentFunctionNumber)
        {
            self.currentFunctionNumber = try decoderContainer.decode(Int?.self, forKey: .currentFunctionNumber)
        }
        if decoderContainer.contains(.maxFunctionNumber)
        {
            self.maxFunctionNumber = try decoderContainer.decode(Int?.self, forKey: .maxFunctionNumber)
        }
        if decoderContainer.contains(.currentCodeSize)
        {
            self.currentCodeSize = try decoderContainer.decode(Double?.self, forKey: .currentCodeSize)
        }
        if decoderContainer.contains(.maxCodeSize)
        {
            self.maxCodeSize = try decoderContainer.decode(Int?.self, forKey: .maxCodeSize)
        }
    }
}
public extension Statistics{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StatisticsCodingKeys.self)
         try encoderContainer.encode(currentFunctionNumber, forKey: .currentFunctionNumber)
         try encoderContainer.encode(maxFunctionNumber, forKey: .maxFunctionNumber)
         try encoderContainer.encode(currentCodeSize, forKey: .currentCodeSize)
         try encoderContainer.encode(maxCodeSize, forKey: .maxCodeSize)
    }
}