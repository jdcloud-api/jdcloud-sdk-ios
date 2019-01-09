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

///  createSecurityGroupReq
@objc(CreateSecurityGroupReq)
public class CreateSecurityGroupReq:NSObject,Codable{
    /// SecurityGroup
    var securityGroup:CreateSecurityGroup?



    public override init(){
            super.init()
    }

    enum CreateSecurityGroupReqCodingKeys: String, CodingKey {
        case securityGroup
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateSecurityGroupReqCodingKeys.self)
        if decoderContainer.contains(.securityGroup)
        {
            self.securityGroup = try decoderContainer.decode(CreateSecurityGroup?.self, forKey: .securityGroup)
        }
    }
}
public extension CreateSecurityGroupReq{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateSecurityGroupReqCodingKeys.self)
         try encoderContainer.encode(securityGroup, forKey: .securityGroup)
    }
}
