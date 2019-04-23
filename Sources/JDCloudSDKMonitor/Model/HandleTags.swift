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

///  handleTags
@objc(HandleTags)
public class HandleTags:NSObject,Codable{
    /// HandleTagCode
    var handleTagCode:Int64?
    /// PrefixMetric
    var prefixMetric:String?



    public override init(){
            super.init()
    }

    enum HandleTagsCodingKeys: String, CodingKey {
        case handleTagCode
        case prefixMetric
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: HandleTagsCodingKeys.self)
        if decoderContainer.contains(.handleTagCode)
        {
            self.handleTagCode = try decoderContainer.decode(Int64?.self, forKey: .handleTagCode)
        }
        if decoderContainer.contains(.prefixMetric)
        {
            self.prefixMetric = try decoderContainer.decode(String?.self, forKey: .prefixMetric)
        }
    }
}
public extension HandleTags{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: HandleTagsCodingKeys.self)
         try encoderContainer.encode(handleTagCode, forKey: .handleTagCode)
         try encoderContainer.encode(prefixMetric, forKey: .prefixMetric)
    }
}