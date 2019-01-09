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

/// 查询镜像信息列表。&lt;br&gt;
      ///       /// 通过此接口可以查询到京东云官方镜像、第三方镜像、私有镜像、或其他用户共享给您的镜像。&lt;br&gt;
      ///       /// 此接口支持分页查询，默认每页20条。
      ///       /// 
@objc(DescribeImagesResult)
public class DescribeImagesResult:NSObject,JdCloudResult
{
    /// 镜像详情
    var images:[Image?]?

    /// 总数量
    var totalCount:Int?



    public override init(){
        super.init()
    }

    enum DescribeImagesResultCodingKeys: String, CodingKey {
        case images
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeImagesResultCodingKeys.self)
        if decoderContainer.contains(.images)
        {
            self.images = try decoderContainer.decode([Image?]?.self, forKey: .images)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeImagesResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeImagesResultCodingKeys.self)
        try encoderContainer.encode(images, forKey: .images)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
