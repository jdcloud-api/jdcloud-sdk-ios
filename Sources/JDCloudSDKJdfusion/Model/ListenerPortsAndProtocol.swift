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

///  listenerPortsAndProtocol
@objc(ListenerPortsAndProtocol)
public class ListenerPortsAndProtocol:NSObject,Codable{
    /// 负载均衡实例前端使用的端口。
    var listenerPort:Int32?
    /// 负载均衡实例前端使用的协议。
    var listenerProtocol:String?
    /// 是否启用监听转发。
    var listenerForward:String?
    /// 转发到的目的监听端口，必须是已经存在的HTTPS监听端口。
    var forwardPort:Int32?



    public override init(){
            super.init()
    }

    enum ListenerPortsAndProtocolCodingKeys: String, CodingKey {
        case listenerPort
        case listenerProtocol
        case listenerForward
        case forwardPort
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ListenerPortsAndProtocolCodingKeys.self)
        self.listenerPort = try decoderContainer.decode(Int32?.self, forKey: .listenerPort)
        self.listenerProtocol = try decoderContainer.decode(String?.self, forKey: .listenerProtocol)
        self.listenerForward = try decoderContainer.decode(String?.self, forKey: .listenerForward)
        self.forwardPort = try decoderContainer.decode(Int32?.self, forKey: .forwardPort)
    }
}
public extension ListenerPortsAndProtocol{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ListenerPortsAndProtocolCodingKeys.self)
         try encoderContainer.encode(listenerPort, forKey: .listenerPort)
         try encoderContainer.encode(listenerProtocol, forKey: .listenerProtocol)
         try encoderContainer.encode(listenerForward, forKey: .listenerForward)
         try encoderContainer.encode(forwardPort, forKey: .forwardPort)
    }
}
