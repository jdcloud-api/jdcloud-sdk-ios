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

///  createKeypair
@objc(CreateKeypair)
public class CreateKeypair:NSObject,Codable{
    /// 密钥名称
    /// Required:true
    var name:String
    /// 密钥指纹
    var keyFingerprint:String?
    /// 云注册信息ID
    var cloudID:String?
    /// 否  导入的公钥
    var publicKey:String?



    public  init(name:String){
             self.name = name
    }

    enum CreateKeypairCodingKeys: String, CodingKey {
        case name
        case keyFingerprint
        case cloudID
        case publicKey
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateKeypairCodingKeys.self)
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        if decoderContainer.contains(.keyFingerprint)
        {
            self.keyFingerprint = try decoderContainer.decode(String?.self, forKey: .keyFingerprint)
        }
        if decoderContainer.contains(.cloudID)
        {
            self.cloudID = try decoderContainer.decode(String?.self, forKey: .cloudID)
        }
        if decoderContainer.contains(.publicKey)
        {
            self.publicKey = try decoderContainer.decode(String?.self, forKey: .publicKey)
        }
    }
}
public extension CreateKeypair{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateKeypairCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(keyFingerprint, forKey: .keyFingerprint)
         try encoderContainer.encode(cloudID, forKey: .cloudID)
         try encoderContainer.encode(publicKey, forKey: .publicKey)
    }
}
