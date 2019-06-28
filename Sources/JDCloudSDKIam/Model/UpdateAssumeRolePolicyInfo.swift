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

///  updateAssumeRolePolicyInfo
@objc(UpdateAssumeRolePolicyInfo)
public class UpdateAssumeRolePolicyInfo:NSObject,Codable{
    /// 信任实体信息
    var assumeRolePolicyDocument:String?



    public override init(){
            super.init()
    }

    enum UpdateAssumeRolePolicyInfoCodingKeys: String, CodingKey {
        case assumeRolePolicyDocument
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: UpdateAssumeRolePolicyInfoCodingKeys.self)
        if decoderContainer.contains(.assumeRolePolicyDocument)
        {
            self.assumeRolePolicyDocument = try decoderContainer.decode(String?.self, forKey: .assumeRolePolicyDocument)
        }
    }
}
public extension UpdateAssumeRolePolicyInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdateAssumeRolePolicyInfoCodingKeys.self)
         try encoderContainer.encode(assumeRolePolicyDocument, forKey: .assumeRolePolicyDocument)
    }
}
