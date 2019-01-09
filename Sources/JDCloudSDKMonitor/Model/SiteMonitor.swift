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

///  siteMonitor
@objc(SiteMonitor)
public class SiteMonitor:NSObject,Codable{
    /// Address
    var address:String?
    /// AdvanceChecked
    var advanceChecked:String?
    /// CreatedTime
    var createdTime:Int64?
    /// Cycle
    var cycle:Int64?
    /// DefaultSource
    var defaultSource:String?
    /// Enabled
    var enabled:String?
    /// HawkeyeId
    var hawkeyeId:Int64?
    /// HttpOption
    var httpOption:SiteMonitorHttpOption?
    /// Id
    var id:String?
    /// IsDeleted
    var isDeleted:String?
    /// Name
    var name:String?
    /// Pin
    var pin:String?
    /// Port
    var port:String?
    /// Source
    var source:[SiteMonitorSource?]?
    /// Stats
    var stats:[String:AnyObject?]?
    /// TcpOption
    var tcpOption:SiteMonitorTcpOption?
    /// Type
    var type:String?
    /// UdpOption
    var udpOption:SiteMonitorUdpOption?
    /// UpdatedTime
    var updatedTime:Int64?



    public override init(){
            super.init()
    }

    enum SiteMonitorCodingKeys: String, CodingKey {
        case address
        case advanceChecked
        case createdTime
        case cycle
        case defaultSource
        case enabled
        case hawkeyeId
        case httpOption
        case id
        case isDeleted
        case name
        case pin
        case port
        case source
        case stats
        case tcpOption
        case type
        case udpOption
        case updatedTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SiteMonitorCodingKeys.self)
        if decoderContainer.contains(.address)
        {
            self.address = try decoderContainer.decode(String?.self, forKey: .address)
        }
        if decoderContainer.contains(.advanceChecked)
        {
            self.advanceChecked = try decoderContainer.decode(String?.self, forKey: .advanceChecked)
        }
        if decoderContainer.contains(.createdTime)
        {
            self.createdTime = try decoderContainer.decode(Int64?.self, forKey: .createdTime)
        }
        if decoderContainer.contains(.cycle)
        {
            self.cycle = try decoderContainer.decode(Int64?.self, forKey: .cycle)
        }
        if decoderContainer.contains(.defaultSource)
        {
            self.defaultSource = try decoderContainer.decode(String?.self, forKey: .defaultSource)
        }
        if decoderContainer.contains(.enabled)
        {
            self.enabled = try decoderContainer.decode(String?.self, forKey: .enabled)
        }
        if decoderContainer.contains(.hawkeyeId)
        {
            self.hawkeyeId = try decoderContainer.decode(Int64?.self, forKey: .hawkeyeId)
        }
        if decoderContainer.contains(.httpOption)
        {
            self.httpOption = try decoderContainer.decode(SiteMonitorHttpOption?.self, forKey: .httpOption)
        }
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
        if decoderContainer.contains(.isDeleted)
        {
            self.isDeleted = try decoderContainer.decode(String?.self, forKey: .isDeleted)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.pin)
        {
            self.pin = try decoderContainer.decode(String?.self, forKey: .pin)
        }
        if decoderContainer.contains(.port)
        {
            self.port = try decoderContainer.decode(String?.self, forKey: .port)
        }
        if decoderContainer.contains(.source)
        {
            self.source = try decoderContainer.decode([SiteMonitorSource?]?.self, forKey: .source)
        }
        if decoderContainer.contains(.tcpOption)
        {
            self.tcpOption = try decoderContainer.decode(SiteMonitorTcpOption?.self, forKey: .tcpOption)
        }
        if decoderContainer.contains(.type)
        {
            self.type = try decoderContainer.decode(String?.self, forKey: .type)
        }
        if decoderContainer.contains(.udpOption)
        {
            self.udpOption = try decoderContainer.decode(SiteMonitorUdpOption?.self, forKey: .udpOption)
        }
        if decoderContainer.contains(.updatedTime)
        {
            self.updatedTime = try decoderContainer.decode(Int64?.self, forKey: .updatedTime)
        }
    }
}
public extension SiteMonitor{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SiteMonitorCodingKeys.self)
         try encoderContainer.encode(address, forKey: .address)
         try encoderContainer.encode(advanceChecked, forKey: .advanceChecked)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
         try encoderContainer.encode(cycle, forKey: .cycle)
         try encoderContainer.encode(defaultSource, forKey: .defaultSource)
         try encoderContainer.encode(enabled, forKey: .enabled)
         try encoderContainer.encode(hawkeyeId, forKey: .hawkeyeId)
         try encoderContainer.encode(httpOption, forKey: .httpOption)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(isDeleted, forKey: .isDeleted)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(port, forKey: .port)
         try encoderContainer.encode(source, forKey: .source)
         try encoderContainer.encode(tcpOption, forKey: .tcpOption)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(udpOption, forKey: .udpOption)
         try encoderContainer.encode(updatedTime, forKey: .updatedTime)
    }
}
