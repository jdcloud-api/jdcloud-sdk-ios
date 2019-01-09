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

   icp filing query openapi
   icp filing query openapi

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  iCP
@objc(ICP)
public class ICP:NSObject,Codable{
    /// true为备案，false为未备案
    var icp:Bool?



    public override init(){
            super.init()
    }

    enum ICPCodingKeys: String, CodingKey {
        case icp
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ICPCodingKeys.self)
        if decoderContainer.contains(.icp)
        {
            self.icp = try decoderContainer.decode(Bool?.self, forKey: .icp)
        }
    }
}
public extension ICP{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ICPCodingKeys.self)
         try encoderContainer.encode(icp, forKey: .icp)
    }
}