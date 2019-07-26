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

///  systemLogResultTrace
@objc(SystemLogResultTrace)
public class SystemLogResultTrace:NSObject,Codable{
    /// DestIp
    var destIp:String?
    /// Id
    var id:String?
    /// SrcIp
    var srcIp:String?
    /// Timestamp
    var timestamp:Int64?



    public override init(){
            super.init()
    }

    enum SystemLogResultTraceCodingKeys: String, CodingKey {
        case destIp
        case id
        case srcIp
        case timestamp
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SystemLogResultTraceCodingKeys.self)
        if decoderContainer.contains(.destIp)
        {
            self.destIp = try decoderContainer.decode(String?.self, forKey: .destIp)
        }
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(String?.self, forKey: .id)
        }
        if decoderContainer.contains(.srcIp)
        {
            self.srcIp = try decoderContainer.decode(String?.self, forKey: .srcIp)
        }
        if decoderContainer.contains(.timestamp)
        {
            self.timestamp = try decoderContainer.decode(Int64?.self, forKey: .timestamp)
        }
    }
}
public extension SystemLogResultTrace{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SystemLogResultTraceCodingKeys.self)
         try encoderContainer.encode(destIp, forKey: .destIp)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(srcIp, forKey: .srcIp)
         try encoderContainer.encode(timestamp, forKey: .timestamp)
    }
}
