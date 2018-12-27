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

   镜像
   关于主机镜像操作的相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  共享镜像，只允许操作您的个人私有镜像，单个镜像最多可共享给20个京东云帐户。&lt;br&gt;
      ///       /// 整机镜像目前不支持共享。
      ///       /// 
@objc(ShareImageRequest)
public class ShareImageRequest:JdCloudRequest
{
    /// 需要共享的帐户
    var pins:String?

    /// 镜像ID
    var imageId:String


    public init(regionId: String,imageId:String){
        self.imageId = imageId
        super.init(regionId: regionId)
    }


    enum ShareImageRequestRequestCodingKeys: String, CodingKey {
        case pins
        case imageId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ShareImageRequestRequestCodingKeys.self)
        try encoderContainer.encode(pins, forKey: .pins)
        try encoderContainer.encode(imageId, forKey: .imageId)

    }
}