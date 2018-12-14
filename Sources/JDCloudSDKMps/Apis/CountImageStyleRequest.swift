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


///  图片样式总数
public class CountImageStyleRequest:JdCloudRequest
{
    /// 按样式名称查询
    var styleName:String?

    /// Bucket名称
    var bucketName:String


    public init(regionId: String,bucketName:String){
        self.bucketName = bucketName
        super.init(regionId: regionId)
    }


    enum CountImageStyleRequestRequestCodingKeys: String, CodingKey {
        case styleName
        case bucketName
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CountImageStyleRequestRequestCodingKeys.self)
        try container.encode(styleName, forKey: .styleName)
        try container.encode(bucketName, forKey: .bucketName)

    }
}
