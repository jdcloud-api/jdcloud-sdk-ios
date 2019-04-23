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

///  域名和IP映射的信息
@objc(HostAlias)
public class HostAlias:NSObject,Codable{
    /// 域名列表。&lt;br&gt;
      /// eg  [&quot;foo.local&quot;, &quot;bar.local&quot;]。长度范围 1-10; 元素符合hostname命名规范。
      /// 
    /// Required:true
    var hostnames:[String?]
    /// ipv4信息；eg &quot;127.0.0.1&quot;
    /// Required:true
    var ip:String



    public  init(hostnames:[String?],ip:String){
             self.hostnames = hostnames
             self.ip = ip
    }

    enum HostAliasCodingKeys: String, CodingKey {
        case hostnames
        case ip
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: HostAliasCodingKeys.self)
        self.hostnames = try decoderContainer.decode([String?].self, forKey: .hostnames)
        self.ip = try decoderContainer.decode(String.self, forKey: .ip)
    }
}
public extension HostAlias{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: HostAliasCodingKeys.self)
         try encoderContainer.encode(hostnames, forKey: .hostnames)
         try encoderContainer.encode(ip, forKey: .ip)
    }
}