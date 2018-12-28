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

///  detachNetInterfaceReq
@objc(DetachNetInterfaceReq)
public class DetachNetInterfaceReq:NSObject,Codable{
    /// Detach
    var detach:DetachNetInterface?



    public override init(){
            super.init()
    }

    enum DetachNetInterfaceReqCodingKeys: String, CodingKey {
        case detach
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DetachNetInterfaceReqCodingKeys.self)
        self.detach = try decoderContainer.decode(DetachNetInterface?.self, forKey: .detach)
    }
}
public extension DetachNetInterfaceReq{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DetachNetInterfaceReqCodingKeys.self)
         try encoderContainer.encode(detach, forKey: .detach)
    }
}
