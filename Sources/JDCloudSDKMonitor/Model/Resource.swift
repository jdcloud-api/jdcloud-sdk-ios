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

///  resource
@objc(Resource)
public class Resource:NSObject,Codable{
    /// Name
    var name:String?
    /// RegionId
    var regionId:String?
    /// ResourceId
    var resourceId:String?



    public override init(){
            super.init()
    }

    enum ResourceCodingKeys: String, CodingKey {
        case name
        case regionId
        case resourceId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ResourceCodingKeys.self)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
        self.regionId = try decoderContainer.decode(String?.self, forKey: .regionId)
        self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
    }
}
public extension Resource{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResourceCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(regionId, forKey: .regionId)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
    }
}