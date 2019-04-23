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

/// 查询镜像详情。
      ///       /// 
@objc(DescribeImageResult)
public class DescribeImageResult:NSObject,JdCloudResult
{
    /// 镜像详情
    var image:Image?



    public override init(){
        super.init()
    }

    enum DescribeImageResultCodingKeys: String, CodingKey {
        case image
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeImageResultCodingKeys.self)
        if decoderContainer.contains(.image)
        {
            self.image = try decoderContainer.decode(Image?.self, forKey: .image)
        }
    }
}
public extension DescribeImageResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeImageResultCodingKeys.self)
        try encoderContainer.encode(image, forKey: .image)
    }
}
