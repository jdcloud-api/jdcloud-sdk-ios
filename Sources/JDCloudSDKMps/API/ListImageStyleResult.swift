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

/// 图片样式列表
@objc(ListImageStyleResult)
public class ListImageStyleResult:NSObject,JdCloudResult
{
    /// 按样式名称查询
    var styleName:String?

    /// 数据页码
    var pageNumber:Int?

    /// 每页数据的条数
    var pageSize:Int?

    /// 图片样式列表
    var imageStyleList:[ImageStyle?]?



    public override init(){
        super.init()
    }

    enum ListImageStyleResultCodingKeys: String, CodingKey {
        case styleName
        case pageNumber
        case pageSize
        case imageStyleList
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ListImageStyleResultCodingKeys.self)
        if decoderContainer.contains(.styleName)
        {
            self.styleName = try decoderContainer.decode(String?.self, forKey: .styleName)
        }
        if decoderContainer.contains(.pageNumber)
        {
            self.pageNumber = try decoderContainer.decode(Int?.self, forKey: .pageNumber)
        }
        if decoderContainer.contains(.pageSize)
        {
            self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        }
        if decoderContainer.contains(.imageStyleList)
        {
            self.imageStyleList = try decoderContainer.decode([ImageStyle?]?.self, forKey: .imageStyleList)
        }
    }
}
public extension ListImageStyleResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ListImageStyleResultCodingKeys.self)
        try encoderContainer.encode(styleName, forKey: .styleName)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(imageStyleList, forKey: .imageStyleList)
    }
}
