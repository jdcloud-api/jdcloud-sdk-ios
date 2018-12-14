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

   OMS相关接口
   OMS相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  根据pin、region、bucket、storageClass获取space size
        ///         /// 
public class GetSpaceRequest:JdCloudRequest
{
    /// 查询pin
    var queryPin:String

    /// 查询region
    var queryRegion:String

    /// 查询bucket
    var queryBucket:String?

    /// 查询存储类型
    var queryStorageClass:String?


    public init(regionId: String,queryPin:String,queryRegion:String){
        self.queryPin = queryPin
        self.queryRegion = queryRegion
        super.init(regionId: regionId)
    }


    enum GetSpaceRequestRequestCodingKeys: String, CodingKey {
        case queryPin
        case queryRegion
        case queryBucket
        case queryStorageClass
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: GetSpaceRequestRequestCodingKeys.self)
        try container.encode(queryPin, forKey: .queryPin)
        try container.encode(queryRegion, forKey: .queryRegion)
        try container.encode(queryBucket, forKey: .queryBucket)
        try container.encode(queryStorageClass, forKey: .queryStorageClass)

    }
}
