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

///  createVpcReq
@objc(CreateVpcReq)
public class CreateVpcReq:NSObject,Codable{
    /// Vpc
    var vpc:CreateVpc?



    public override init(){
            super.init()
    }

    enum CreateVpcReqCodingKeys: String, CodingKey {
        case vpc
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateVpcReqCodingKeys.self)
        if decoderContainer.contains(.vpc)
        {
            self.vpc = try decoderContainer.decode(CreateVpc?.self, forKey: .vpc)
        }
    }
}
public extension CreateVpcReq{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateVpcReqCodingKeys.self)
         try encoderContainer.encode(vpc, forKey: .vpc)
    }
}
