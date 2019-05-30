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

   Notice Management
   通知管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  contents
@objc(Contents)
public class Contents:NSObject,Codable{
    /// 视频ID
    var videoId:String?
    /// 视频名称
    var name:String?
    /// 分类ID
    var categoryId:Int64?
    /// Tags
    var tags:[String?]?



    public override init(){
            super.init()
    }

    enum ContentsCodingKeys: String, CodingKey {
        case videoId
        case name
        case categoryId
        case tags
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ContentsCodingKeys.self)
        if decoderContainer.contains(.videoId)
        {
            self.videoId = try decoderContainer.decode(String?.self, forKey: .videoId)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.categoryId)
        {
            self.categoryId = try decoderContainer.decode(Int64?.self, forKey: .categoryId)
        }
        if decoderContainer.contains(.tags)
        {
            self.tags = try decoderContainer.decode([String?]?.self, forKey: .tags)
        }
    }
}
public extension Contents{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ContentsCodingKeys.self)
         try encoderContainer.encode(videoId, forKey: .videoId)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(categoryId, forKey: .categoryId)
         try encoderContainer.encode(tags, forKey: .tags)
    }
}
