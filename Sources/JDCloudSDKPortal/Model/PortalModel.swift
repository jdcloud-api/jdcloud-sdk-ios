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

   link
   链接相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
///  noticeVo
public class NoticeVo:NSObject,Codable{
    /// uuid
    var uuid:Int?
    /// 主键id
    var id:Int?
    /// 标题
    var title:String?
    /// 公告类型; 1:产品公告; 2:域名公告; 3:活动公告; 4:其他公告
    var type:UInt8?
    /// 置顶; 100:不置顶; 1;2;3;4;5:置顶位置(数字不能重复)
    var goTop:UInt8?
    /// 位置; 0:不显示; 1:左边; 2:左中; 3:中; 4:右中; 5:右
    var inlet:UInt8?
    /// 创建时间
    var createTime:String?
    /// 修改时间
    var updateTime:String?
    /// 创建人
    var createPin:String?
    /// 是否失效; 0:生效; 1:失效
    var yn:UInt8?
    /// 公告内容
    var content:String?
    /// 发送开始时间
    var startTime:String?
    /// 发送结束时间
    var endTime:String?
    /// 位置; 1:置顶; 2:入口
    var site:Int?
    /// 页码数
    var pageNum:Int?
    /// 页显示数量
    var pageSize:Int?
    /// 语言
    var lang:String?
    /// 中英文关联id
    var langId:Int?
    /// 查询时间
    var ts:String?



    public override init(){
            super.init()
    }

    enum NoticeVoCodingKeys: String, CodingKey {
        case uuid
        case id
        case title
        case type
        case goTop
        case inlet
        case createTime
        case updateTime
        case createPin
        case yn
        case content
        case startTime
        case endTime
        case site
        case pageNum
        case pageSize
        case lang
        case langId
        case ts
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NoticeVoCodingKeys.self)
        if decoderContainer.contains(.uuid)
        {
            self.uuid = try decoderContainer.decode(Int?.self, forKey: .uuid)
        }
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.title)
        {
            self.title = try decoderContainer.decode(String?.self, forKey: .title)
        }
        if decoderContainer.contains(.type)
        {
            self.type = try decoderContainer.decode(UInt8?.self, forKey: .type)
        }
        if decoderContainer.contains(.goTop)
        {
            self.goTop = try decoderContainer.decode(UInt8?.self, forKey: .goTop)
        }
        if decoderContainer.contains(.inlet)
        {
            self.inlet = try decoderContainer.decode(UInt8?.self, forKey: .inlet)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.createPin)
        {
            self.createPin = try decoderContainer.decode(String?.self, forKey: .createPin)
        }
        if decoderContainer.contains(.yn)
        {
            self.yn = try decoderContainer.decode(UInt8?.self, forKey: .yn)
        }
        if decoderContainer.contains(.content)
        {
            self.content = try decoderContainer.decode(String?.self, forKey: .content)
        }
        if decoderContainer.contains(.startTime)
        {
            self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        }
        if decoderContainer.contains(.endTime)
        {
            self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        }
        if decoderContainer.contains(.site)
        {
            self.site = try decoderContainer.decode(Int?.self, forKey: .site)
        }
        if decoderContainer.contains(.pageNum)
        {
            self.pageNum = try decoderContainer.decode(Int?.self, forKey: .pageNum)
        }
        if decoderContainer.contains(.pageSize)
        {
            self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        }
        if decoderContainer.contains(.lang)
        {
            self.lang = try decoderContainer.decode(String?.self, forKey: .lang)
        }
        if decoderContainer.contains(.langId)
        {
            self.langId = try decoderContainer.decode(Int?.self, forKey: .langId)
        }
        if decoderContainer.contains(.ts)
        {
            self.ts = try decoderContainer.decode(String?.self, forKey: .ts)
        }
    }
}
public extension NoticeVo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NoticeVoCodingKeys.self)
         try encoderContainer.encode(uuid, forKey: .uuid)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(title, forKey: .title)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(goTop, forKey: .goTop)
         try encoderContainer.encode(inlet, forKey: .inlet)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(createPin, forKey: .createPin)
         try encoderContainer.encode(yn, forKey: .yn)
         try encoderContainer.encode(content, forKey: .content)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(site, forKey: .site)
         try encoderContainer.encode(pageNum, forKey: .pageNum)
         try encoderContainer.encode(pageSize, forKey: .pageSize)
         try encoderContainer.encode(lang, forKey: .lang)
         try encoderContainer.encode(langId, forKey: .langId)
         try encoderContainer.encode(ts, forKey: .ts)
    }
}
///  productTxt
public class ProductTxt:NSObject,Codable{
    /// 主键id
    var id:Int?
    /// 产品id
    var productId:Int?
    /// 模板类型
    var templet:String?
    /// 内容(JSON字符串)
    var txt:String?
    /// 排序
    var sort:Int?
    /// 修改时间
    var createTime:String?
    /// 修改时间
    var updateTime:String?
    /// 语言：中文cn；英文en
    var lang:String?



    public override init(){
            super.init()
    }

    enum ProductTxtCodingKeys: String, CodingKey {
        case id
        case productId
        case templet
        case txt
        case sort
        case createTime
        case updateTime
        case lang
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ProductTxtCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.productId)
        {
            self.productId = try decoderContainer.decode(Int?.self, forKey: .productId)
        }
        if decoderContainer.contains(.templet)
        {
            self.templet = try decoderContainer.decode(String?.self, forKey: .templet)
        }
        if decoderContainer.contains(.txt)
        {
            self.txt = try decoderContainer.decode(String?.self, forKey: .txt)
        }
        if decoderContainer.contains(.sort)
        {
            self.sort = try decoderContainer.decode(Int?.self, forKey: .sort)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.lang)
        {
            self.lang = try decoderContainer.decode(String?.self, forKey: .lang)
        }
    }
}
public extension ProductTxt{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ProductTxtCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(productId, forKey: .productId)
         try encoderContainer.encode(templet, forKey: .templet)
         try encoderContainer.encode(txt, forKey: .txt)
         try encoderContainer.encode(sort, forKey: .sort)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(lang, forKey: .lang)
    }
}
///  product
public class Product:NSObject,Codable{
    /// 主键id
    var id:Int?
    /// 名称
    var name:String?
    /// url
    var url:String?
    /// 父导航id
    var parentNavigationId:Int?
    /// 导航id
    var navigationId:Int?
    /// 修改时间
    var createTime:String?
    /// 修改时间
    var updateTime:String?
    /// 语言：中文cn；英文en
    var lang:String?
    /// 产品数据
    var txtVoList:[ProductTxt?]?



    public override init(){
            super.init()
    }

    enum ProductCodingKeys: String, CodingKey {
        case id
        case name
        case url
        case parentNavigationId
        case navigationId
        case createTime
        case updateTime
        case lang
        case txtVoList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ProductCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.url)
        {
            self.url = try decoderContainer.decode(String?.self, forKey: .url)
        }
        if decoderContainer.contains(.parentNavigationId)
        {
            self.parentNavigationId = try decoderContainer.decode(Int?.self, forKey: .parentNavigationId)
        }
        if decoderContainer.contains(.navigationId)
        {
            self.navigationId = try decoderContainer.decode(Int?.self, forKey: .navigationId)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.lang)
        {
            self.lang = try decoderContainer.decode(String?.self, forKey: .lang)
        }
        if decoderContainer.contains(.txtVoList)
        {
            self.txtVoList = try decoderContainer.decode([ProductTxt?]?.self, forKey: .txtVoList)
        }
    }
}
public extension Product{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ProductCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(url, forKey: .url)
         try encoderContainer.encode(parentNavigationId, forKey: .parentNavigationId)
         try encoderContainer.encode(navigationId, forKey: .navigationId)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(lang, forKey: .lang)
         try encoderContainer.encode(txtVoList, forKey: .txtVoList)
    }
}
///  navigation
public class Navigation:NSObject,Codable{
    /// 主键id
    var id:Int?
    /// 名称
    var name:String?
    /// 描述
    var descriptionValue:String?
    /// 图标地址
    var iconUrl:String?
    /// ICON 样式
    var iconClass:String?
    /// 链接地址
    var webUrl:String?
    /// url：用于查询产品详情
    var url:String?
    /// 是否为京东云产品；0:是京东云产品；1:不是京东云产品
    var productStatus:Int?
    /// 排序
    var sort:Int?
    /// 修改时间
    var createTime:String?
    /// 父ID
    var parentId:Int?
    /// 修改时间
    var updateTime:String?
    /// 导航层级
    var level:Int?
    /// 标签
    var label:String?
    /// 帮助文档地址
    var helpUrl:String?
    /// 自营标签
    var selfRun:String?
    /// 语言：中文cn；英文en
    var lang:String?
    /// 子结构
    var extChildren:[Navigation?]?



    public override init(){
            super.init()
    }

    enum NavigationCodingKeys: String, CodingKey {
        case id
        case name
        case descriptionValue = "description"
        case iconUrl
        case iconClass
        case webUrl
        case url
        case productStatus
        case sort
        case createTime
        case parentId
        case updateTime
        case level
        case label
        case helpUrl
        case selfRun
        case lang
        case extChildren
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NavigationCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.iconUrl)
        {
            self.iconUrl = try decoderContainer.decode(String?.self, forKey: .iconUrl)
        }
        if decoderContainer.contains(.iconClass)
        {
            self.iconClass = try decoderContainer.decode(String?.self, forKey: .iconClass)
        }
        if decoderContainer.contains(.webUrl)
        {
            self.webUrl = try decoderContainer.decode(String?.self, forKey: .webUrl)
        }
        if decoderContainer.contains(.url)
        {
            self.url = try decoderContainer.decode(String?.self, forKey: .url)
        }
        if decoderContainer.contains(.productStatus)
        {
            self.productStatus = try decoderContainer.decode(Int?.self, forKey: .productStatus)
        }
        if decoderContainer.contains(.sort)
        {
            self.sort = try decoderContainer.decode(Int?.self, forKey: .sort)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.parentId)
        {
            self.parentId = try decoderContainer.decode(Int?.self, forKey: .parentId)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.level)
        {
            self.level = try decoderContainer.decode(Int?.self, forKey: .level)
        }
        if decoderContainer.contains(.label)
        {
            self.label = try decoderContainer.decode(String?.self, forKey: .label)
        }
        if decoderContainer.contains(.helpUrl)
        {
            self.helpUrl = try decoderContainer.decode(String?.self, forKey: .helpUrl)
        }
        if decoderContainer.contains(.selfRun)
        {
            self.selfRun = try decoderContainer.decode(String?.self, forKey: .selfRun)
        }
        if decoderContainer.contains(.lang)
        {
            self.lang = try decoderContainer.decode(String?.self, forKey: .lang)
        }
        if decoderContainer.contains(.extChildren)
        {
            self.extChildren = try decoderContainer.decode([Navigation?]?.self, forKey: .extChildren)
        }
    }
}
public extension Navigation{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NavigationCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(iconUrl, forKey: .iconUrl)
         try encoderContainer.encode(iconClass, forKey: .iconClass)
         try encoderContainer.encode(webUrl, forKey: .webUrl)
         try encoderContainer.encode(url, forKey: .url)
         try encoderContainer.encode(productStatus, forKey: .productStatus)
         try encoderContainer.encode(sort, forKey: .sort)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(parentId, forKey: .parentId)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(level, forKey: .level)
         try encoderContainer.encode(label, forKey: .label)
         try encoderContainer.encode(helpUrl, forKey: .helpUrl)
         try encoderContainer.encode(selfRun, forKey: .selfRun)
         try encoderContainer.encode(lang, forKey: .lang)
         try encoderContainer.encode(extChildren, forKey: .extChildren)
    }
}
///  linkVo
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
