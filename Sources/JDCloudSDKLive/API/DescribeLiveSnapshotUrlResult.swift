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

   Live-Video
   直播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 获取截图地址
      ///       /// 
@objc(DescribeLiveSnapshotUrlResult)
public class DescribeLiveSnapshotUrlResult:NSObject,JdCloudResult
{
    /// 截图ID
    var imgId:String?

    /// 图片地址
    var imgUrl:String?



    public override init(){
        super.init()
    }

    enum DescribeLiveSnapshotUrlResultCodingKeys: String, CodingKey {
        case imgId
        case imgUrl
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeLiveSnapshotUrlResultCodingKeys.self)
        if decoderContainer.contains(.imgId)
        {
            self.imgId = try decoderContainer.decode(String?.self, forKey: .imgId)
        }
        if decoderContainer.contains(.imgUrl)
        {
            self.imgUrl = try decoderContainer.decode(String?.self, forKey: .imgUrl)
        }
    }
}
public extension DescribeLiveSnapshotUrlResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeLiveSnapshotUrlResultCodingKeys.self)
        try encoderContainer.encode(imgId, forKey: .imgId)
        try encoderContainer.encode(imgUrl, forKey: .imgUrl)
    }
}