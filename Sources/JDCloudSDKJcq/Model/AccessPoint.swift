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

///  accessPoint
@objc(AccessPoint)
public class AccessPoint:NSObject,Codable{
    /// sdk接入点
    var sdkAddress:String?
    /// http接入点
    var httpAddress:String?



    public override init(){
            super.init()
    }

    enum AccessPointCodingKeys: String, CodingKey {
        case sdkAddress
        case httpAddress
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AccessPointCodingKeys.self)
        if decoderContainer.contains(.sdkAddress)
        {
            self.sdkAddress = try decoderContainer.decode(String?.self, forKey: .sdkAddress)
        }
        if decoderContainer.contains(.httpAddress)
        {
            self.httpAddress = try decoderContainer.decode(String?.self, forKey: .httpAddress)
        }
    }
}
public extension AccessPoint{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AccessPointCodingKeys.self)
         try encoderContainer.encode(sdkAddress, forKey: .sdkAddress)
         try encoderContainer.encode(httpAddress, forKey: .httpAddress)
    }
}