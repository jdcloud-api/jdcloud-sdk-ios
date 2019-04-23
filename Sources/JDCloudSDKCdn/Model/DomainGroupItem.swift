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

///  domainGroupItem
@objc(DomainGroupItem)
public class DomainGroupItem:NSObject,Codable{
    /// 域名组成员
    var domains:[String?]?
    /// 主域名
    var primaryDomain:String?
    /// 是否共享缓存
    var shareCache:String?
    /// 域名组名称
    var domainGroupName:String?



    public override init(){
            super.init()
    }

    enum DomainGroupItemCodingKeys: String, CodingKey {
        case domains
        case primaryDomain
        case shareCache
        case domainGroupName
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DomainGroupItemCodingKeys.self)
        if decoderContainer.contains(.domains)
        {
            self.domains = try decoderContainer.decode([String?]?.self, forKey: .domains)
        }
        if decoderContainer.contains(.primaryDomain)
        {
            self.primaryDomain = try decoderContainer.decode(String?.self, forKey: .primaryDomain)
        }
        if decoderContainer.contains(.shareCache)
        {
            self.shareCache = try decoderContainer.decode(String?.self, forKey: .shareCache)
        }
        if decoderContainer.contains(.domainGroupName)
        {
            self.domainGroupName = try decoderContainer.decode(String?.self, forKey: .domainGroupName)
        }
    }
}
public extension DomainGroupItem{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DomainGroupItemCodingKeys.self)
         try encoderContainer.encode(domains, forKey: .domains)
         try encoderContainer.encode(primaryDomain, forKey: .primaryDomain)
         try encoderContainer.encode(shareCache, forKey: .shareCache)
         try encoderContainer.encode(domainGroupName, forKey: .domainGroupName)
    }
}
