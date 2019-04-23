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

///  widgetRawResource
@objc(WidgetRawResource)
public class WidgetRawResource:NSObject,Codable{
    /// Name
    var name:String?
    /// RegionId
    var regionId:String?
    /// ResourceId
    var resourceId:String?
    /// Tag
    var tag:[String:String?]?



    public override init(){
            super.init()
    }

    enum WidgetRawResourceCodingKeys: String, CodingKey {
        case name
        case regionId
        case resourceId
        case tag
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: WidgetRawResourceCodingKeys.self)
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.regionId)
        {
            self.regionId = try decoderContainer.decode(String?.self, forKey: .regionId)
        }
        if decoderContainer.contains(.resourceId)
        {
            self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
        }
        if decoderContainer.contains(.tag)
        {
            self.tag = try decoderContainer.decode([String:String?]?.self, forKey: .tag)
        }
    }
}
public extension WidgetRawResource{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: WidgetRawResourceCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(regionId, forKey: .regionId)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(tag, forKey: .tag)
    }
}
