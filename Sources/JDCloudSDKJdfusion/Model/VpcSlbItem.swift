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

///  vpcSlbItem
@objc(VpcSlbItem)
public class VpcSlbItem:NSObject,Codable{
    /// Slb
    var slb:SlbInfoDetail?



    public override init(){
            super.init()
    }

    enum VpcSlbItemCodingKeys: String, CodingKey {
        case slb
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: VpcSlbItemCodingKeys.self)
        self.slb = try decoderContainer.decode(SlbInfoDetail?.self, forKey: .slb)
    }
}
public extension VpcSlbItem{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: VpcSlbItemCodingKeys.self)
         try encoderContainer.encode(slb, forKey: .slb)
    }
}
