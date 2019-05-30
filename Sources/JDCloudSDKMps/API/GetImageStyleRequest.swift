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

   图片样式相关接口
   图片样式API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  图片样式详情
@objc(GetImageStyleRequest)
public class GetImageStyleRequest:JdCloudRequest
{
    /// Bucket名称
    var bucketName:String

    /// 图片样式id
    var id:Int64


    public init(regionId: String,bucketName:String,id:Int64){
        self.bucketName = bucketName
        self.id = id
        super.init(regionId: regionId)
    }


    enum GetImageStyleRequestRequestCodingKeys: String, CodingKey {
        case bucketName
        case id
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetImageStyleRequestRequestCodingKeys.self)
        try encoderContainer.encode(bucketName, forKey: .bucketName)
        try encoderContainer.encode(id, forKey: .id)

    }
}
