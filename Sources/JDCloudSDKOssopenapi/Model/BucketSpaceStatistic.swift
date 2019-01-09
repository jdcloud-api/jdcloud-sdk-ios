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

   dosage monitoring openapi
   dosage monitoring openapi

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  bucketSpaceStatistic
@objc(BucketSpaceStatistic)
public class BucketSpaceStatistic:NSObject,Codable{
    /// bucket name
    /// Required:true
    var bucketName:String
    /// bucket 存储空间
    /// Required:true
    var space:Int64



    public  init(bucketName:String,space:Int64){
             self.bucketName = bucketName
             self.space = space
    }

    enum BucketSpaceStatisticCodingKeys: String, CodingKey {
        case bucketName
        case space
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BucketSpaceStatisticCodingKeys.self)
        self.bucketName = try decoderContainer.decode(String.self, forKey: .bucketName)
        self.space = try decoderContainer.decode(Int64.self, forKey: .space)
    }
}
public extension BucketSpaceStatistic{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BucketSpaceStatisticCodingKeys.self)
         try encoderContainer.encode(bucketName, forKey: .bucketName)
         try encoderContainer.encode(space, forKey: .space)
    }
}