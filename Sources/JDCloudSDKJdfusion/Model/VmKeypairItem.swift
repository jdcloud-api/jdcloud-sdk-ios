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

///  vmKeypairItem
@objc(VmKeypairItem)
public class VmKeypairItem:NSObject,Codable{
    /// Keypair
    var keypair:KeypairInfo?



    public override init(){
            super.init()
    }

    enum VmKeypairItemCodingKeys: String, CodingKey {
        case keypair
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: VmKeypairItemCodingKeys.self)
        if decoderContainer.contains(.keypair)
        {
            self.keypair = try decoderContainer.decode(KeypairInfo?.self, forKey: .keypair)
        }
    }
}
public extension VmKeypairItem{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: VmKeypairItemCodingKeys.self)
         try encoderContainer.encode(keypair, forKey: .keypair)
    }
}
