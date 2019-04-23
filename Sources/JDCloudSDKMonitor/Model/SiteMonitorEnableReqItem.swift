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

///  siteMonitorEnableReqItem
@objc(SiteMonitorEnableReqItem)
public class SiteMonitorEnableReqItem:NSObject,Codable{
    /// Enabled
    var enabled:String?
    /// Id
    var id:String?



    public override init(){
            super.init()
    }

    enum SiteMonitorEnableReqItemCodingKeys: String, CodingKey {
        case enabled
        case id
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SiteMonitorEnableReqItemCodingKeys.self)
        if decoderContainer.contains(.enabled)
        {
            self.enabled = try decoderContainer.decode(String?.self, forKey: .enabled)
        }
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
    }
}
public extension SiteMonitorEnableReqItem{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SiteMonitorEnableReqItemCodingKeys.self)
         try encoderContainer.encode(enabled, forKey: .enabled)
         try encoderContainer.encode(id, forKey: .id)
    }
}
