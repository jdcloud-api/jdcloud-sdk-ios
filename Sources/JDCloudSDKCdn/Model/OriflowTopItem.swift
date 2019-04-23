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

///  oriflowTopItem
@objc(OriflowTopItem)
public class OriflowTopItem:NSObject,Codable{
    /// Name
    var name:String?
    /// Oriflow
    var oriflow:Double?
    /// Hitflow
    var hitflow:Double?
    /// Flow
    var flow:Double?
    /// FlowPercent
    var flowPercent:String?



    public override init(){
            super.init()
    }

    enum OriflowTopItemCodingKeys: String, CodingKey {
        case name
        case oriflow
        case hitflow
        case flow
        case flowPercent
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OriflowTopItemCodingKeys.self)
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.oriflow)
        {
            self.oriflow = try decoderContainer.decode(Double?.self, forKey: .oriflow)
        }
        if decoderContainer.contains(.hitflow)
        {
            self.hitflow = try decoderContainer.decode(Double?.self, forKey: .hitflow)
        }
        if decoderContainer.contains(.flow)
        {
            self.flow = try decoderContainer.decode(Double?.self, forKey: .flow)
        }
        if decoderContainer.contains(.flowPercent)
        {
            self.flowPercent = try decoderContainer.decode(String?.self, forKey: .flowPercent)
        }
    }
}
public extension OriflowTopItem{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OriflowTopItemCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(oriflow, forKey: .oriflow)
         try encoderContainer.encode(hitflow, forKey: .hitflow)
         try encoderContainer.encode(flow, forKey: .flow)
         try encoderContainer.encode(flowPercent, forKey: .flowPercent)
    }
}
