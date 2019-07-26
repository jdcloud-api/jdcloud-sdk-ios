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

///  customLogSearchOut
@objc(CustomLogSearchOut)
public class CustomLogSearchOut:NSObject,Codable{
    /// Code
    var code:Int64?
    /// Data
    var data:[AnyObject?]?
    /// Message
    var message:String?
    /// Size
    var size:Int64?
    /// Total
    var total:Int64?



    public override init(){
            super.init()
    }

    enum CustomLogSearchOutCodingKeys: String, CodingKey {
        case code
        case data
        case message
        case size
        case total
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CustomLogSearchOutCodingKeys.self)
        if decoderContainer.contains(.code)
        {
            self.code = try decoderContainer.decode(Int64?.self, forKey: .code)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.size)
        {
            self.size = try decoderContainer.decode(Int64?.self, forKey: .size)
        }
        if decoderContainer.contains(.total)
        {
            self.total = try decoderContainer.decode(Int64?.self, forKey: .total)
        }
    }
}
public extension CustomLogSearchOut{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CustomLogSearchOutCodingKeys.self)
         try encoderContainer.encode(code, forKey: .code)
         try encoderContainer.encode(message, forKey: .message)
         try encoderContainer.encode(size, forKey: .size)
         try encoderContainer.encode(total, forKey: .total)
    }
}
