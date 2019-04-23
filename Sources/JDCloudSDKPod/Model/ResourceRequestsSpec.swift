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

///  容器计算资源信息
@objc(ResourceRequestsSpec)
public class ResourceRequestsSpec:NSObject,Codable{
    /// 容器必需的计算资源
    var requests:RequestSpec?
    /// 容器使用计算资源上限
    var limits:RequestSpec?



    public override init(){
            super.init()
    }

    enum ResourceRequestsSpecCodingKeys: String, CodingKey {
        case requests
        case limits
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ResourceRequestsSpecCodingKeys.self)
        if decoderContainer.contains(.requests)
        {
            self.requests = try decoderContainer.decode(RequestSpec?.self, forKey: .requests)
        }
        if decoderContainer.contains(.limits)
        {
            self.limits = try decoderContainer.decode(RequestSpec?.self, forKey: .limits)
        }
    }
}
public extension ResourceRequestsSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResourceRequestsSpecCodingKeys.self)
         try encoderContainer.encode(requests, forKey: .requests)
         try encoderContainer.encode(limits, forKey: .limits)
    }
}
