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

///  源数据配置
@objc(DatasourceInfo)
public class DatasourceInfo:NSObject,Codable{
    /// ID
    var id:String?
    /// 服务器地址
    var address:String?
    /// 端口
    var port:Int32?
    /// 数据库账号
    var username:String?
    /// 数据库密码
    var password:String?



    public override init(){
            super.init()
    }

    enum DatasourceInfoCodingKeys: String, CodingKey {
        case id
        case address
        case port
        case username
        case password
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DatasourceInfoCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
        if decoderContainer.contains(.address)
        {
            self.address = try decoderContainer.decode(String?.self, forKey: .address)
        }
        if decoderContainer.contains(.port)
        {
            self.port = try decoderContainer.decode(Int32?.self, forKey: .port)
        }
        if decoderContainer.contains(.username)
        {
            self.username = try decoderContainer.decode(String?.self, forKey: .username)
        }
        if decoderContainer.contains(.password)
        {
            self.password = try decoderContainer.decode(String?.self, forKey: .password)
        }
    }
}
public extension DatasourceInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DatasourceInfoCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(address, forKey: .address)
         try encoderContainer.encode(port, forKey: .port)
         try encoderContainer.encode(username, forKey: .username)
         try encoderContainer.encode(password, forKey: .password)
    }
}
