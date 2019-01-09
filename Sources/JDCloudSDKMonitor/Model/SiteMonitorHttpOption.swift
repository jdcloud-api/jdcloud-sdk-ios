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

///  siteMonitorHttpOption
@objc(SiteMonitorHttpOption)
public class SiteMonitorHttpOption:NSObject,Codable{
    /// Cookie
    var cookie:[String:String?]?
    /// Header
    var header:[String:String?]?
    /// Method
    var method:String?
    /// ReqContent
    var reqContent:String?
    /// ResCheck
    var resCheck:String?



    public override init(){
            super.init()
    }

    enum SiteMonitorHttpOptionCodingKeys: String, CodingKey {
        case cookie
        case header
        case method
        case reqContent
        case resCheck
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SiteMonitorHttpOptionCodingKeys.self)
        if decoderContainer.contains(.cookie)
        {
            self.cookie = try decoderContainer.decode([String:String?]?.self, forKey: .cookie)
        }
        if decoderContainer.contains(.header)
        {
            self.header = try decoderContainer.decode([String:String?]?.self, forKey: .header)
        }
        if decoderContainer.contains(.method)
        {
            self.method = try decoderContainer.decode(String?.self, forKey: .method)
        }
        if decoderContainer.contains(.reqContent)
        {
            self.reqContent = try decoderContainer.decode(String?.self, forKey: .reqContent)
        }
        if decoderContainer.contains(.resCheck)
        {
            self.resCheck = try decoderContainer.decode(String?.self, forKey: .resCheck)
        }
    }
}
public extension SiteMonitorHttpOption{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SiteMonitorHttpOptionCodingKeys.self)
         try encoderContainer.encode(cookie, forKey: .cookie)
         try encoderContainer.encode(header, forKey: .header)
         try encoderContainer.encode(method, forKey: .method)
         try encoderContainer.encode(reqContent, forKey: .reqContent)
         try encoderContainer.encode(resCheck, forKey: .resCheck)
    }
}
