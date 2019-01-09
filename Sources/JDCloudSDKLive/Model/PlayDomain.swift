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

///  playDomain
@objc(PlayDomain)
public class PlayDomain:NSObject,Codable{
    /// 播放域名
    var playDomainValue:String?
    /// 播放域名(Cname)
    var playDomainCname:String?
    /// 直播域名状态
    var domainStatus:String?
    /// 创建时间
    var createTime:String?
    /// 更新时间
    var updateTime:String?
    /// 地域编码
    var region:String?



    public override init(){
            super.init()
    }

    enum PlayDomainCodingKeys: String, CodingKey {
        case playDomainValue = "playDomain"
        case playDomainCname
        case domainStatus
        case createTime
        case updateTime
        case region
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PlayDomainCodingKeys.self)
        if decoderContainer.contains(.playDomainValue)
        {
            self.playDomainValue = try decoderContainer.decode(String?.self, forKey: .playDomainValue)
        }
        if decoderContainer.contains(.playDomainCname)
        {
            self.playDomainCname = try decoderContainer.decode(String?.self, forKey: .playDomainCname)
        }
        if decoderContainer.contains(.domainStatus)
        {
            self.domainStatus = try decoderContainer.decode(String?.self, forKey: .domainStatus)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.region)
        {
            self.region = try decoderContainer.decode(String?.self, forKey: .region)
        }
    }
}
public extension PlayDomain{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PlayDomainCodingKeys.self)
         try encoderContainer.encode(playDomainValue, forKey: .playDomainValue)
         try encoderContainer.encode(playDomainCname, forKey: .playDomainCname)
         try encoderContainer.encode(domainStatus, forKey: .domainStatus)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(region, forKey: .region)
    }
}
