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

///  detachDataDiskReq
@objc(DetachDataDiskReq)
public class DetachDataDiskReq:NSObject,Codable{
    /// Detach
    var detach:DetachDataDisk?



    public override init(){
            super.init()
    }

    enum DetachDataDiskReqCodingKeys: String, CodingKey {
        case detach
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DetachDataDiskReqCodingKeys.self)
        self.detach = try decoderContainer.decode(DetachDataDisk?.self, forKey: .detach)
    }
}
public extension DetachDataDiskReq{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DetachDataDiskReqCodingKeys.self)
         try encoderContainer.encode(detach, forKey: .detach)
    }
}
