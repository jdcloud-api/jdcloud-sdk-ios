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

///  deleteStream
@objc(DeleteStream)
public class DeleteStream:NSObject,Codable{
    /// 禁播流
    var stream:String?
    /// 封禁推流的app
    var app:String?



    public override init(){
            super.init()
    }

    enum DeleteStreamCodingKeys: String, CodingKey {
        case stream
        case app
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeleteStreamCodingKeys.self)
        if decoderContainer.contains(.stream)
        {
            self.stream = try decoderContainer.decode(String?.self, forKey: .stream)
        }
        if decoderContainer.contains(.app)
        {
            self.app = try decoderContainer.decode(String?.self, forKey: .app)
        }
    }
}
public extension DeleteStream{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteStreamCodingKeys.self)
         try encoderContainer.encode(stream, forKey: .stream)
         try encoderContainer.encode(app, forKey: .app)
    }
}
