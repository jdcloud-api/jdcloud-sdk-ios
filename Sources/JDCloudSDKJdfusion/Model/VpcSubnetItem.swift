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

///  vpcSubnetItem
@objc(VpcSubnetItem)
public class VpcSubnetItem:NSObject,Codable{
    /// Subnet
    var subnet:SubnetDesInfo?



    public override init(){
            super.init()
    }

    enum VpcSubnetItemCodingKeys: String, CodingKey {
        case subnet
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: VpcSubnetItemCodingKeys.self)
        if decoderContainer.contains(.subnet)
        {
            self.subnet = try decoderContainer.decode(SubnetDesInfo?.self, forKey: .subnet)
        }
    }
}
public extension VpcSubnetItem{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: VpcSubnetItemCodingKeys.self)
         try encoderContainer.encode(subnet, forKey: .subnet)
    }
}
