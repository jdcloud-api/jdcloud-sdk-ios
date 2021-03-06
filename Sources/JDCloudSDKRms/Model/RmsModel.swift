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

   Send-Message-Related-APIs
   富媒体短信发送相关接口

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
///  templateContent
public class TemplateContent:NSObject,Codable{
    /// 类型只能为 txt/jpg/png/gif/mp3/mp4
    /// Required:true
    var fileType:String
    /// 类型为txt时，为文本信息；类型为非txt时，这里需要填写文件对应的base64编码
    /// Required:true
    var value:String



    public  init(fileType:String,value:String){
             self.fileType = fileType
             self.value = value
    }

    enum TemplateContentCodingKeys: String, CodingKey {
        case fileType
        case value
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TemplateContentCodingKeys.self)
        self.fileType = try decoderContainer.decode(String.self, forKey: .fileType)
        self.value = try decoderContainer.decode(String.self, forKey: .value)
    }
}
public extension TemplateContent{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TemplateContentCodingKeys.self)
         try encoderContainer.encode(fileType, forKey: .fileType)
         try encoderContainer.encode(value, forKey: .value)
    }
}
///  respQueryTemplateListData
public class RespQueryTemplateListData:NSObject,Codable{
    /// 短信ID
    var templateId:String?
    /// 短信标题
    var title:String?
    /// 审核状态 0: 审核中 1: 通过 2: 未通过 4:待提交
    var status:String?
    /// 审核未通过原因
    var reason:String?
    /// 短信创建时间 yyyy-MM-dd HH:mm:ss
    var createTime:String?
    /// 短信内容大小
    var contentSize:String?
    /// 资质Id
    var aptitudesId:String?
    /// 短信描述
    var descriptionValue:String?



    public override init(){
            super.init()
    }

    enum RespQueryTemplateListDataCodingKeys: String, CodingKey {
        case templateId
        case title
        case status
        case reason
        case createTime
        case contentSize
        case aptitudesId
        case descriptionValue = "description"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RespQueryTemplateListDataCodingKeys.self)
        if decoderContainer.contains(.templateId)
        {
            self.templateId = try decoderContainer.decode(String?.self, forKey: .templateId)
        }
        if decoderContainer.contains(.title)
        {
            self.title = try decoderContainer.decode(String?.self, forKey: .title)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
        if decoderContainer.contains(.reason)
        {
            self.reason = try decoderContainer.decode(String?.self, forKey: .reason)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.contentSize)
        {
            self.contentSize = try decoderContainer.decode(String?.self, forKey: .contentSize)
        }
        if decoderContainer.contains(.aptitudesId)
        {
            self.aptitudesId = try decoderContainer.decode(String?.self, forKey: .aptitudesId)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
    }
}
public extension RespQueryTemplateListData{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RespQueryTemplateListDataCodingKeys.self)
         try encoderContainer.encode(templateId, forKey: .templateId)
         try encoderContainer.encode(title, forKey: .title)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(reason, forKey: .reason)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(contentSize, forKey: .contentSize)
         try encoderContainer.encode(aptitudesId, forKey: .aptitudesId)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
    }
}
///  respTemplatePageResult
public class RespTemplatePageResult:NSObject,Codable{
    /// 总条数
    var count:Int64?
    /// 当前页
    var pageNum:Int?
    /// 每页条数
    var pageSize:Int?
    /// 总页数
    var pageCount:Int?
    /// 数据
    var list:[RespQueryTemplateListData?]?



    public override init(){
            super.init()
    }

    enum RespTemplatePageResultCodingKeys: String, CodingKey {
        case count
        case pageNum
        case pageSize
        case pageCount
        case list
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RespTemplatePageResultCodingKeys.self)
        if decoderContainer.contains(.count)
        {
            self.count = try decoderContainer.decode(Int64?.self, forKey: .count)
        }
        if decoderContainer.contains(.pageNum)
        {
            self.pageNum = try decoderContainer.decode(Int?.self, forKey: .pageNum)
        }
        if decoderContainer.contains(.pageSize)
        {
            self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        }
        if decoderContainer.contains(.pageCount)
        {
            self.pageCount = try decoderContainer.decode(Int?.self, forKey: .pageCount)
        }
        if decoderContainer.contains(.list)
        {
            self.list = try decoderContainer.decode([RespQueryTemplateListData?]?.self, forKey: .list)
        }
    }
}
public extension RespTemplatePageResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RespTemplatePageResultCodingKeys.self)
         try encoderContainer.encode(count, forKey: .count)
         try encoderContainer.encode(pageNum, forKey: .pageNum)
         try encoderContainer.encode(pageSize, forKey: .pageSize)
         try encoderContainer.encode(pageCount, forKey: .pageCount)
         try encoderContainer.encode(list, forKey: .list)
    }
}
///  respTemplateData
public class RespTemplateData:NSObject,Codable{
    /// 短信ID
    var templateId:String?



    public override init(){
            super.init()
    }

    enum RespTemplateDataCodingKeys: String, CodingKey {
        case templateId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RespTemplateDataCodingKeys.self)
        if decoderContainer.contains(.templateId)
        {
            self.templateId = try decoderContainer.decode(String?.self, forKey: .templateId)
        }
    }
}
public extension RespTemplateData{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RespTemplateDataCodingKeys.self)
         try encoderContainer.encode(templateId, forKey: .templateId)
    }
}
///  respPackageResult
public class RespPackageResult:NSObject,Codable{
    /// 剩余条数
    var remainder:Int64?



    public override init(){
            super.init()
    }

    enum RespPackageResultCodingKeys: String, CodingKey {
        case remainder
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RespPackageResultCodingKeys.self)
        if decoderContainer.contains(.remainder)
        {
            self.remainder = try decoderContainer.decode(Int64?.self, forKey: .remainder)
        }
    }
}
public extension RespPackageResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RespPackageResultCodingKeys.self)
         try encoderContainer.encode(remainder, forKey: .remainder)
    }
}
///  sendStatus
public class SendStatus:NSObject,Codable{
    /// 用户pin
    var pin:String?
    /// 应用ID
    var appId:String?
    /// 任务序列号
    var sequenceNumber:String?
    /// 短信ID
    var templateId:String?
    /// 手机号
    var mobileNum:String?
    /// 发送状态 -1：初始状态；0：成功发送到网关；1：下载成功；2：发送失败；3：未发送至网关，过期失败；4：发送到网关，过期失败
    var stateFlag:Int?
    /// 发送时间 yyyy-MM-dd HH:mm:ss
    var sendTime:String?



    public override init(){
            super.init()
    }

    enum SendStatusCodingKeys: String, CodingKey {
        case pin
        case appId
        case sequenceNumber
        case templateId
        case mobileNum
        case stateFlag
        case sendTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SendStatusCodingKeys.self)
        if decoderContainer.contains(.pin)
        {
            self.pin = try decoderContainer.decode(String?.self, forKey: .pin)
        }
        if decoderContainer.contains(.appId)
        {
            self.appId = try decoderContainer.decode(String?.self, forKey: .appId)
        }
        if decoderContainer.contains(.sequenceNumber)
        {
            self.sequenceNumber = try decoderContainer.decode(String?.self, forKey: .sequenceNumber)
        }
        if decoderContainer.contains(.templateId)
        {
            self.templateId = try decoderContainer.decode(String?.self, forKey: .templateId)
        }
        if decoderContainer.contains(.mobileNum)
        {
            self.mobileNum = try decoderContainer.decode(String?.self, forKey: .mobileNum)
        }
        if decoderContainer.contains(.stateFlag)
        {
            self.stateFlag = try decoderContainer.decode(Int?.self, forKey: .stateFlag)
        }
        if decoderContainer.contains(.sendTime)
        {
            self.sendTime = try decoderContainer.decode(String?.self, forKey: .sendTime)
        }
    }
}
public extension SendStatus{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SendStatusCodingKeys.self)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(appId, forKey: .appId)
         try encoderContainer.encode(sequenceNumber, forKey: .sequenceNumber)
         try encoderContainer.encode(templateId, forKey: .templateId)
         try encoderContainer.encode(mobileNum, forKey: .mobileNum)
         try encoderContainer.encode(stateFlag, forKey: .stateFlag)
         try encoderContainer.encode(sendTime, forKey: .sendTime)
    }
}
///  sendBatchMsg
public class SendBatchMsg:NSObject,Codable{
    /// 本次发送请求的序列号
    var sequenceNumber:String?



    public override init(){
            super.init()
    }

    enum SendBatchMsgCodingKeys: String, CodingKey {
        case sequenceNumber
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SendBatchMsgCodingKeys.self)
        if decoderContainer.contains(.sequenceNumber)
        {
            self.sequenceNumber = try decoderContainer.decode(String?.self, forKey: .sequenceNumber)
        }
    }
}
public extension SendBatchMsg{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SendBatchMsgCodingKeys.self)
         try encoderContainer.encode(sequenceNumber, forKey: .sequenceNumber)
    }
}
///  querySendStatus
public class QuerySendStatus:NSObject,Codable{
    /// 总量
    var total:Int?
    /// 发送信息明细列表
    var detailList:[SendStatus?]?



    public override init(){
            super.init()
    }

    enum QuerySendStatusCodingKeys: String, CodingKey {
        case total
        case detailList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QuerySendStatusCodingKeys.self)
        if decoderContainer.contains(.total)
        {
            self.total = try decoderContainer.decode(Int?.self, forKey: .total)
        }
        if decoderContainer.contains(.detailList)
        {
            self.detailList = try decoderContainer.decode([SendStatus?]?.self, forKey: .detailList)
        }
    }
}
public extension QuerySendStatus{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QuerySendStatusCodingKeys.self)
         try encoderContainer.encode(total, forKey: .total)
         try encoderContainer.encode(detailList, forKey: .detailList)
    }
}
