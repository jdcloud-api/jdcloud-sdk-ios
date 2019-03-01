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

///  err
@objc(Err)
public class Err:NSObject,Codable{
    /// Code
    var code:Int64?
    /// Details
    var details:AnyObject?
    /// Message
    var message:String?
    /// Status
    var status:String?



    public override init(){
            super.init()
    }

    enum ErrCodingKeys: String, CodingKey {
        case code
        case details
        case message
        case status
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ErrCodingKeys.self)
        if decoderContainer.contains(.code)
        {
            self.code = try decoderContainer.decode(Int64?.self, forKey: .code)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
    }
}
public extension Err{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ErrCodingKeys.self)
         try encoderContainer.encode(code, forKey: .code)
         try encoderContainer.encode(message, forKey: .message)
         try encoderContainer.encode(status, forKey: .status)
    }
}
