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

///  describeLogdCAEnd
@objc(DescribeLogdCAEnd)
public class DescribeLogdCAEnd:NSObject,Codable{
    /// cer 证书，hex string
    var cer:String?
    /// expiryDate 证书到期日
    var expiryDate:String?



    public override init(){
            super.init()
    }

    enum DescribeLogdCAEndCodingKeys: String, CodingKey {
        case cer
        case expiryDate
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeLogdCAEndCodingKeys.self)
        if decoderContainer.contains(.cer)
        {
            self.cer = try decoderContainer.decode(String?.self, forKey: .cer)
        }
        if decoderContainer.contains(.expiryDate)
        {
            self.expiryDate = try decoderContainer.decode(String?.self, forKey: .expiryDate)
        }
    }
}
public extension DescribeLogdCAEnd{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeLogdCAEndCodingKeys.self)
         try encoderContainer.encode(cer, forKey: .cer)
         try encoderContainer.encode(expiryDate, forKey: .expiryDate)
    }
}
