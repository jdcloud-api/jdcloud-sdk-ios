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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  linkVo
@objc(LinkVo)
public class LinkVo:NSObject,Codable{
    /// 主键id
    var id:Int?
    /// 名称
    var name:String?
    /// 链接url
    var linkUrl:String?
    /// 埋点信息
    var clstag:String?
    /// 排序
    var sort:Int?
    /// 操作者
    var operatorValue:String?
    /// 状态 0显示 1删除
    var status:UInt8?
    /// 创建时间
    var createTime:String?
    /// 修改时间
    var modifyTime:String?



    public override init(){
            super.init()
    }

    enum LinkVoCodingKeys: String, CodingKey {
        case id
        case name
        case linkUrl
        case clstag
        case sort
        case operatorValue = "operator"
        case status
        case createTime
        case modifyTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: LinkVoCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.linkUrl)
        {
            self.linkUrl = try decoderContainer.decode(String?.self, forKey: .linkUrl)
        }
        if decoderContainer.contains(.clstag)
        {
            self.clstag = try decoderContainer.decode(String?.self, forKey: .clstag)
        }
        if decoderContainer.contains(.sort)
        {
            self.sort = try decoderContainer.decode(Int?.self, forKey: .sort)
        }
        if decoderContainer.contains(.operatorValue)
        {
            self.operatorValue = try decoderContainer.decode(String?.self, forKey: .operatorValue)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(UInt8?.self, forKey: .status)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.modifyTime)
        {
            self.modifyTime = try decoderContainer.decode(String?.self, forKey: .modifyTime)
        }
    }
}
public extension LinkVo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: LinkVoCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(linkUrl, forKey: .linkUrl)
         try encoderContainer.encode(clstag, forKey: .clstag)
         try encoderContainer.encode(sort, forKey: .sort)
         try encoderContainer.encode(operatorValue, forKey: .operatorValue)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(modifyTime, forKey: .modifyTime)
    }
}