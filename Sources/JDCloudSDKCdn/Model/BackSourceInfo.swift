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

///  backSourceInfo
@objc(BackSourceInfo)
public class BackSourceInfo:NSObject,Codable{
    /// Ips
    var ips:[IpSourceInfo?]?
    /// Domain
    var domain:[DomainSourceInfo?]?
    /// OssSource
    var ossSource:String?



    public override init(){
            super.init()
    }

    enum BackSourceInfoCodingKeys: String, CodingKey {
        case ips
        case domain
        case ossSource
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BackSourceInfoCodingKeys.self)
        if decoderContainer.contains(.ips)
        {
            self.ips = try decoderContainer.decode([IpSourceInfo?]?.self, forKey: .ips)
        }
        if decoderContainer.contains(.domain)
        {
            self.domain = try decoderContainer.decode([DomainSourceInfo?]?.self, forKey: .domain)
        }
        if decoderContainer.contains(.ossSource)
        {
            self.ossSource = try decoderContainer.decode(String?.self, forKey: .ossSource)
        }
    }
}
public extension BackSourceInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BackSourceInfoCodingKeys.self)
         try encoderContainer.encode(ips, forKey: .ips)
         try encoderContainer.encode(domain, forKey: .domain)
         try encoderContainer.encode(ossSource, forKey: .ossSource)
    }
}
