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

///  setRR
@objc(SetRR)
public class SetRR:NSObject,Codable{
    /// 子域名
    /// Required:true
    var domain:String
    /// 要设置的解析记录数组
    /// Required:true
    var data:[SetRecords?]



    public  init(domain:String,data:[SetRecords?]){
             self.domain = domain
             self.data = data
    }

    enum SetRRCodingKeys: String, CodingKey {
        case domain
        case data
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SetRRCodingKeys.self)
        self.domain = try decoderContainer.decode(String.self, forKey: .domain)
        self.data = try decoderContainer.decode([SetRecords?].self, forKey: .data)
    }
}
public extension SetRR{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetRRCodingKeys.self)
         try encoderContainer.encode(domain, forKey: .domain)
         try encoderContainer.encode(data, forKey: .data)
    }
}