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

///  deploymentInfo
@objc(DeploymentInfo)
public class DeploymentInfo:NSObject,Codable{
    /// Info
    var info:DeploymentBaseInfo?
    /// Content
    var content:DeploymentResourcesInfo?



    public override init(){
            super.init()
    }

    enum DeploymentInfoCodingKeys: String, CodingKey {
        case info
        case content
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeploymentInfoCodingKeys.self)
        if decoderContainer.contains(.info)
        {
            self.info = try decoderContainer.decode(DeploymentBaseInfo?.self, forKey: .info)
        }
        if decoderContainer.contains(.content)
        {
            self.content = try decoderContainer.decode(DeploymentResourcesInfo?.self, forKey: .content)
        }
    }
}
public extension DeploymentInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeploymentInfoCodingKeys.self)
         try encoderContainer.encode(info, forKey: .info)
         try encoderContainer.encode(content, forKey: .content)
    }
}
