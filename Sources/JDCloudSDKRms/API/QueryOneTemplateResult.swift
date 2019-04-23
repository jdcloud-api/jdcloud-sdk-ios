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

   短信内容接口
   API related to  Template

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询一个富媒体短信内容接口
@objc(QueryOneTemplateResult)
public class QueryOneTemplateResult:NSObject,JdCloudResult
{
    /// Data
    var data:[RespQueryOneTemplateResourceList?]?

    /// description参数
    var descriptionValue:String?

    /// mediaLength参数
    var mediaLength:String?

    /// type参数
    var type:String?

    /// title参数
    var title:String?

    /// isTuiding参数
    var isTuiding:String?

    /// message参数
    var message:String?

    /// status参数
    var status:String?



    public override init(){
        super.init()
    }

    enum QueryOneTemplateResultCodingKeys: String, CodingKey {
        case data
        case descriptionValue = "description"
        case mediaLength
        case type
        case title
        case isTuiding
        case message
        case status
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueryOneTemplateResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode([RespQueryOneTemplateResourceList?]?.self, forKey: .data)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.mediaLength)
        {
            self.mediaLength = try decoderContainer.decode(String?.self, forKey: .mediaLength)
        }
        if decoderContainer.contains(.type)
        {
            self.type = try decoderContainer.decode(String?.self, forKey: .type)
        }
        if decoderContainer.contains(.title)
        {
            self.title = try decoderContainer.decode(String?.self, forKey: .title)
        }
        if decoderContainer.contains(.isTuiding)
        {
            self.isTuiding = try decoderContainer.decode(String?.self, forKey: .isTuiding)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
    }
}
public extension QueryOneTemplateResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryOneTemplateResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
        try encoderContainer.encode(mediaLength, forKey: .mediaLength)
        try encoderContainer.encode(type, forKey: .type)
        try encoderContainer.encode(title, forKey: .title)
        try encoderContainer.encode(isTuiding, forKey: .isTuiding)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(status, forKey: .status)
    }
}
