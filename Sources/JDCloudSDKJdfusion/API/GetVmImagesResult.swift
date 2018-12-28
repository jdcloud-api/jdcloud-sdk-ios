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

   Vm-Image
   关于主机镜像操作的相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 根据过滤条件，取得镜像资源的信息
@objc(GetVmImagesResult)
public class GetVmImagesResult:NSObject,JdCloudResult
{
    /// Images
    var images:ImageInfo?



    public override init(){
        super.init()
    }

    enum GetVmImagesResultCodingKeys: String, CodingKey {
        case images
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetVmImagesResultCodingKeys.self)
        self.images = try decoderContainer.decode(ImageInfo?.self, forKey: .images)
    }
}
public extension GetVmImagesResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetVmImagesResultCodingKeys.self)
        try encoderContainer.encode(images, forKey: .images)
    }
}
