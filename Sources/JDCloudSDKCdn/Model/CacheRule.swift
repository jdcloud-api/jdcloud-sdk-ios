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

///  cacheRule
@objc(CacheRule)
public class CacheRule:NSObject,Codable{
    /// Weight
    var weight:Int32?
    /// Ttl
    var ttl:Int64?
    /// Contents
    var contents:String?
    /// CreateTime
    var createTime:String?
    /// UpdateTime
    var updateTime:String?
    /// CacheType
    var cacheType:String?



    public override init(){
            super.init()
    }

    enum CacheRuleCodingKeys: String, CodingKey {
        case weight
        case ttl
        case contents
        case createTime
        case updateTime
        case cacheType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CacheRuleCodingKeys.self)
        if decoderContainer.contains(.weight)
        {
            self.weight = try decoderContainer.decode(Int32?.self, forKey: .weight)
        }
        if decoderContainer.contains(.ttl)
        {
            self.ttl = try decoderContainer.decode(Int64?.self, forKey: .ttl)
        }
        if decoderContainer.contains(.contents)
        {
            self.contents = try decoderContainer.decode(String?.self, forKey: .contents)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.cacheType)
        {
            self.cacheType = try decoderContainer.decode(String?.self, forKey: .cacheType)
        }
    }
}
public extension CacheRule{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CacheRuleCodingKeys.self)
         try encoderContainer.encode(weight, forKey: .weight)
         try encoderContainer.encode(ttl, forKey: .ttl)
         try encoderContainer.encode(contents, forKey: .contents)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(cacheType, forKey: .cacheType)
    }
}
