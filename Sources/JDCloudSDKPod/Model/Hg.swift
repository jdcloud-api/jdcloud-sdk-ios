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

///  hg
@objc(Hg)
public class Hg:NSObject,Codable{
    /// 默认值： http；可选值 http, https
    var scheme:String?
    /// 连接到pod的host信息，默认使用pod_ip，满足hostname或者ipv4格式
    var host:String?
    /// 范围：[1-65535]
    /// Required:true
    var port:Int
    /// HTTP的路径。范围：[1-256]
    /// Required:true
    var path:String
    /// 对指定的端口和路径上的容器的 IP 地址执行 HTTP Get 请求。&lt;br&gt;
      /// 如果响应的状态码大于等于200 且小于 400，则诊断被认为是成功的。 
    var httpHeader:[Hh?]?



    public  init(port:Int,path:String){
             self.port = port
             self.path = path
    }

    enum HgCodingKeys: String, CodingKey {
        case scheme
        case host
        case port
        case path
        case httpHeader
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: HgCodingKeys.self)
        if decoderContainer.contains(.scheme)
        {
            self.scheme = try decoderContainer.decode(String?.self, forKey: .scheme)
        }
        if decoderContainer.contains(.host)
        {
            self.host = try decoderContainer.decode(String?.self, forKey: .host)
        }
        self.port = try decoderContainer.decode(Int.self, forKey: .port)
        self.path = try decoderContainer.decode(String.self, forKey: .path)
        if decoderContainer.contains(.httpHeader)
        {
            self.httpHeader = try decoderContainer.decode([Hh?]?.self, forKey: .httpHeader)
        }
    }
}
public extension Hg{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: HgCodingKeys.self)
         try encoderContainer.encode(scheme, forKey: .scheme)
         try encoderContainer.encode(host, forKey: .host)
         try encoderContainer.encode(port, forKey: .port)
         try encoderContainer.encode(path, forKey: .path)
         try encoderContainer.encode(httpHeader, forKey: .httpHeader)
    }
}
