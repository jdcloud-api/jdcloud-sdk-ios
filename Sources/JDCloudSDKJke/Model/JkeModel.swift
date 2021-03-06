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

   配额
   k8s 集群配额相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
///  quota
public class Quota:NSObject,Codable{
    /// 资源类型[kubernetes]
    var resourceType:String?
    /// 可用资源上限
    var limit:Int?
    /// 已用资源数量
    var used:Int?



    public override init(){
            super.init()
    }

    enum QuotaCodingKeys: String, CodingKey {
        case resourceType
        case limit
        case used
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QuotaCodingKeys.self)
        if decoderContainer.contains(.resourceType)
        {
            self.resourceType = try decoderContainer.decode(String?.self, forKey: .resourceType)
        }
        if decoderContainer.contains(.limit)
        {
            self.limit = try decoderContainer.decode(Int?.self, forKey: .limit)
        }
        if decoderContainer.contains(.used)
        {
            self.used = try decoderContainer.decode(Int?.self, forKey: .used)
        }
    }
}
public extension Quota{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QuotaCodingKeys.self)
         try encoderContainer.encode(resourceType, forKey: .resourceType)
         try encoderContainer.encode(limit, forKey: .limit)
         try encoderContainer.encode(used, forKey: .used)
    }
}
