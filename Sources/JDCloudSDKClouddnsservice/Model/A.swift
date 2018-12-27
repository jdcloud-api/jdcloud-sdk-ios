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

///  a
@objc(A)
public class A:NSObject,Codable{
    /// 返回的状态码
    var code:Int?
    /// 状态码相应的说明/错误说明
    var message:String?



    public override init(){
            super.init()
    }

    enum ACodingKeys: String, CodingKey {
        case code
        case message
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ACodingKeys.self)
        self.code = try decoderContainer.decode(Int?.self, forKey: .code)
        self.message = try decoderContainer.decode(String?.self, forKey: .message)
    }
}
public extension A{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ACodingKeys.self)
         try encoderContainer.encode(code, forKey: .code)
         try encoderContainer.encode(message, forKey: .message)
    }
}