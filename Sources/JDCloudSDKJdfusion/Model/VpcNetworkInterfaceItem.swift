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

///  vpcNetworkInterfaceItem
@objc(VpcNetworkInterfaceItem)
public class VpcNetworkInterfaceItem:NSObject,Codable{
    /// NetInterface
    var netInterface:NetInterfaceInfo?



    public override init(){
            super.init()
    }

    enum VpcNetworkInterfaceItemCodingKeys: String, CodingKey {
        case netInterface
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: VpcNetworkInterfaceItemCodingKeys.self)
        if decoderContainer.contains(.netInterface)
        {
            self.netInterface = try decoderContainer.decode(NetInterfaceInfo?.self, forKey: .netInterface)
        }
    }
}
public extension VpcNetworkInterfaceItem{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: VpcNetworkInterfaceItemCodingKeys.self)
         try encoderContainer.encode(netInterface, forKey: .netInterface)
    }
}
