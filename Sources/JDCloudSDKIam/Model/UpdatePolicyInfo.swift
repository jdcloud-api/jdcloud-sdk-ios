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

///  updatePolicyInfo
@objc(UpdatePolicyInfo)
public class UpdatePolicyInfo:NSObject,Codable{
    /// 策略信息详情，最多2048个字符
    /// Required:true
    var content:String



    public  init(content:String){
             self.content = content
    }

    enum UpdatePolicyInfoCodingKeys: String, CodingKey {
        case content
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: UpdatePolicyInfoCodingKeys.self)
        self.content = try decoderContainer.decode(String.self, forKey: .content)
    }
}
public extension UpdatePolicyInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdatePolicyInfoCodingKeys.self)
         try encoderContainer.encode(content, forKey: .content)
    }
}
