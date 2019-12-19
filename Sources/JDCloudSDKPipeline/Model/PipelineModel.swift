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

   pipeline
   API OF Pipeline Create|Update|Read|Delete|Execute

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
///  nameLabelPair
public class NameLabelPair:NSObject,Codable{
    /// 实际使用的名称
    var name:String?
    /// 显示只用的名称
    var label:String?



    public override init(){
            super.init()
    }

    enum NameLabelPairCodingKeys: String, CodingKey {
        case name
        case label
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NameLabelPairCodingKeys.self)
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.label)
        {
            self.label = try decoderContainer.decode(String?.self, forKey: .label)
        }
    }
}
public extension NameLabelPair{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NameLabelPairCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(label, forKey: .label)
    }
}
///  actionLink
public class ActionLink:NSObject,Codable{
    /// 超链接显示的名称
    var label:String?
    /// 超链接的url
    var url:String?



    public override init(){
            super.init()
    }

    enum ActionLinkCodingKeys: String, CodingKey {
        case label
        case url
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ActionLinkCodingKeys.self)
        if decoderContainer.contains(.label)
        {
            self.label = try decoderContainer.decode(String?.self, forKey: .label)
        }
        if decoderContainer.contains(.url)
        {
            self.url = try decoderContainer.decode(String?.self, forKey: .url)
        }
    }
}
public extension ActionLink{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ActionLinkCodingKeys.self)
         try encoderContainer.encode(label, forKey: .label)
         try encoderContainer.encode(url, forKey: .url)
    }
}
///  actionTypeId
public class ActionTypeId:NSObject,Codable{
    /// 源提供商
    var category:String?
    /// 源提供商归属
    var owner:String?
    /// 操作提供商
    var provider:String?
    /// 版本
    var version:Int?



    public override init(){
            super.init()
    }

    enum ActionTypeIdCodingKeys: String, CodingKey {
        case category
        case owner
        case provider
        case version
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ActionTypeIdCodingKeys.self)
        if decoderContainer.contains(.category)
        {
            self.category = try decoderContainer.decode(String?.self, forKey: .category)
        }
        if decoderContainer.contains(.owner)
        {
            self.owner = try decoderContainer.decode(String?.self, forKey: .owner)
        }
        if decoderContainer.contains(.provider)
        {
            self.provider = try decoderContainer.decode(String?.self, forKey: .provider)
        }
        if decoderContainer.contains(.version)
        {
            self.version = try decoderContainer.decode(Int?.self, forKey: .version)
        }
    }
}
public extension ActionTypeId{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ActionTypeIdCodingKeys.self)
         try encoderContainer.encode(category, forKey: .category)
         try encoderContainer.encode(owner, forKey: .owner)
         try encoderContainer.encode(provider, forKey: .provider)
         try encoderContainer.encode(version, forKey: .version)
    }
}
///  pipelineStage
public class PipelineStage:NSObject,Codable{
    /// 阶段(stage)的UUID
    var uuid:String?
    /// 阶段(stage)的名称
    var name:String?
    /// 阶段(stage)创建时间
    var createdAt:Int?
    /// 阶段(stage)开始时间
    var startedAt:Int?
    /// 阶段(stage)结束时间
    var doneAt:Int?
    /// 阶段(stage)当前状态
    var status:Int?
    /// 阶段(stage)当前状态说明
    var statusHuman:String?
    /// 第几个阶段(stage)
    var position:Int?
    /// Actions
    var actions:[PipelineAction?]?



    public override init(){
            super.init()
    }

    enum PipelineStageCodingKeys: String, CodingKey {
        case uuid
        case name
        case createdAt
        case startedAt
        case doneAt
        case status
        case statusHuman
        case position
        case actions
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PipelineStageCodingKeys.self)
        if decoderContainer.contains(.uuid)
        {
            self.uuid = try decoderContainer.decode(String?.self, forKey: .uuid)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.createdAt)
        {
            self.createdAt = try decoderContainer.decode(Int?.self, forKey: .createdAt)
        }
        if decoderContainer.contains(.startedAt)
        {
            self.startedAt = try decoderContainer.decode(Int?.self, forKey: .startedAt)
        }
        if decoderContainer.contains(.doneAt)
        {
            self.doneAt = try decoderContainer.decode(Int?.self, forKey: .doneAt)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Int?.self, forKey: .status)
        }
        if decoderContainer.contains(.statusHuman)
        {
            self.statusHuman = try decoderContainer.decode(String?.self, forKey: .statusHuman)
        }
        if decoderContainer.contains(.position)
        {
            self.position = try decoderContainer.decode(Int?.self, forKey: .position)
        }
        if decoderContainer.contains(.actions)
        {
            self.actions = try decoderContainer.decode([PipelineAction?]?.self, forKey: .actions)
        }
    }
}
public extension PipelineStage{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PipelineStageCodingKeys.self)
         try encoderContainer.encode(uuid, forKey: .uuid)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(createdAt, forKey: .createdAt)
         try encoderContainer.encode(startedAt, forKey: .startedAt)
         try encoderContainer.encode(doneAt, forKey: .doneAt)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(statusHuman, forKey: .statusHuman)
         try encoderContainer.encode(position, forKey: .position)
         try encoderContainer.encode(actions, forKey: .actions)
    }
}
///  pipelineAction
public class PipelineAction:NSObject,Codable{
    /// 操作(action)的UUID
    var uuid:String?
    /// 操作(action)的名称
    var name:String?
    /// 操作(action)创建时间
    var createdAt:Int?
    /// 操作(action)开始时间
    var startedAt:Int?
    /// 操作(action)结束时间
    var doneAt:Int?
    /// 操作(action)当前状态
    var status:Int?
    /// 操作(action)当前状态说明
    var statusHuman:String?
    /// Links
    var links:ActionLinks?
    /// ActionTypeId
    var actionTypeId:ActionTypeId?



    public override init(){
            super.init()
    }

    enum PipelineActionCodingKeys: String, CodingKey {
        case uuid
        case name
        case createdAt
        case startedAt
        case doneAt
        case status
        case statusHuman
        case links
        case actionTypeId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PipelineActionCodingKeys.self)
        if decoderContainer.contains(.uuid)
        {
            self.uuid = try decoderContainer.decode(String?.self, forKey: .uuid)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.createdAt)
        {
            self.createdAt = try decoderContainer.decode(Int?.self, forKey: .createdAt)
        }
        if decoderContainer.contains(.startedAt)
        {
            self.startedAt = try decoderContainer.decode(Int?.self, forKey: .startedAt)
        }
        if decoderContainer.contains(.doneAt)
        {
            self.doneAt = try decoderContainer.decode(Int?.self, forKey: .doneAt)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Int?.self, forKey: .status)
        }
        if decoderContainer.contains(.statusHuman)
        {
            self.statusHuman = try decoderContainer.decode(String?.self, forKey: .statusHuman)
        }
        if decoderContainer.contains(.links)
        {
            self.links = try decoderContainer.decode(ActionLinks?.self, forKey: .links)
        }
        if decoderContainer.contains(.actionTypeId)
        {
            self.actionTypeId = try decoderContainer.decode(ActionTypeId?.self, forKey: .actionTypeId)
        }
    }
}
public extension PipelineAction{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PipelineActionCodingKeys.self)
         try encoderContainer.encode(uuid, forKey: .uuid)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(createdAt, forKey: .createdAt)
         try encoderContainer.encode(startedAt, forKey: .startedAt)
         try encoderContainer.encode(doneAt, forKey: .doneAt)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(statusHuman, forKey: .statusHuman)
         try encoderContainer.encode(links, forKey: .links)
         try encoderContainer.encode(actionTypeId, forKey: .actionTypeId)
    }
}
///  pipelineInstance
public class PipelineInstance:NSObject,Codable{
    /// 某一次流水线执行的uuid
    var uuid:String?
    /// 开始执行流水线的时间
    var startedAt:Int?
    /// 结束执行流水线的时间
    var doneAt:Int?
    /// 执行持续的时间(ms)
    var durationMs:Int?
    /// 执行状态
    var status:Int?
    /// 执行状态描述
    var statusHuman:String?
    /// 执行时环境变量
    var env:String?
    /// 失败原因
    var failureReason:Int?
    /// 失败原因描述
    var falseilureReasonHuman:String?
    /// Stages
    var stages:[PipelineStage?]?



    public override init(){
            super.init()
    }

    enum PipelineInstanceCodingKeys: String, CodingKey {
        case uuid
        case startedAt
        case doneAt
        case durationMs
        case status
        case statusHuman
        case env
        case failureReason
        case falseilureReasonHuman
        case stages
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PipelineInstanceCodingKeys.self)
        if decoderContainer.contains(.uuid)
        {
            self.uuid = try decoderContainer.decode(String?.self, forKey: .uuid)
        }
        if decoderContainer.contains(.startedAt)
        {
            self.startedAt = try decoderContainer.decode(Int?.self, forKey: .startedAt)
        }
        if decoderContainer.contains(.doneAt)
        {
            self.doneAt = try decoderContainer.decode(Int?.self, forKey: .doneAt)
        }
        if decoderContainer.contains(.durationMs)
        {
            self.durationMs = try decoderContainer.decode(Int?.self, forKey: .durationMs)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Int?.self, forKey: .status)
        }
        if decoderContainer.contains(.statusHuman)
        {
            self.statusHuman = try decoderContainer.decode(String?.self, forKey: .statusHuman)
        }
        if decoderContainer.contains(.env)
        {
            self.env = try decoderContainer.decode(String?.self, forKey: .env)
        }
        if decoderContainer.contains(.failureReason)
        {
            self.failureReason = try decoderContainer.decode(Int?.self, forKey: .failureReason)
        }
        if decoderContainer.contains(.falseilureReasonHuman)
        {
            self.falseilureReasonHuman = try decoderContainer.decode(String?.self, forKey: .falseilureReasonHuman)
        }
        if decoderContainer.contains(.stages)
        {
            self.stages = try decoderContainer.decode([PipelineStage?]?.self, forKey: .stages)
        }
    }
}
public extension PipelineInstance{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PipelineInstanceCodingKeys.self)
         try encoderContainer.encode(uuid, forKey: .uuid)
         try encoderContainer.encode(startedAt, forKey: .startedAt)
         try encoderContainer.encode(doneAt, forKey: .doneAt)
         try encoderContainer.encode(durationMs, forKey: .durationMs)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(statusHuman, forKey: .statusHuman)
         try encoderContainer.encode(env, forKey: .env)
         try encoderContainer.encode(failureReason, forKey: .failureReason)
         try encoderContainer.encode(falseilureReasonHuman, forKey: .falseilureReasonHuman)
         try encoderContainer.encode(stages, forKey: .stages)
    }
}
///  actionLinks
public class ActionLinks:NSObject,Codable{
    /// Provider
    var provider:ActionLink?
    /// Status
    var status:ActionLink?
    /// Detail
    var detail:ActionLink?



    public override init(){
            super.init()
    }

    enum ActionLinksCodingKeys: String, CodingKey {
        case provider
        case status
        case detail
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ActionLinksCodingKeys.self)
        if decoderContainer.contains(.provider)
        {
            self.provider = try decoderContainer.decode(ActionLink?.self, forKey: .provider)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(ActionLink?.self, forKey: .status)
        }
        if decoderContainer.contains(.detail)
        {
            self.detail = try decoderContainer.decode(ActionLink?.self, forKey: .detail)
        }
    }
}
public extension ActionLinks{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ActionLinksCodingKeys.self)
         try encoderContainer.encode(provider, forKey: .provider)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(detail, forKey: .detail)
    }
}
///  pipeline
public class Pipeline:NSObject,Codable{
    /// 流水线的uuid
    var uuid:String?
    /// 流水线创建时间戳
    var createdAt:Int?
    /// 流水线最后一次更新时间戳
    var updatedAt:Int?
    /// 流水线的名称
    /// Required:true
    var name:String
    /// 流水线定义的json字符串。因为配置灵活且会支持用户直接上传json配置文件的方式配置，所以不对其在提交和显示的时候做解析或反解析。
    /// Required:true
    var content:String



    public  init(name:String,content:String){
             self.name = name
             self.content = content
    }

    enum PipelineCodingKeys: String, CodingKey {
        case uuid
        case createdAt
        case updatedAt
        case name
        case content
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PipelineCodingKeys.self)
        if decoderContainer.contains(.uuid)
        {
            self.uuid = try decoderContainer.decode(String?.self, forKey: .uuid)
        }
        if decoderContainer.contains(.createdAt)
        {
            self.createdAt = try decoderContainer.decode(Int?.self, forKey: .createdAt)
        }
        if decoderContainer.contains(.updatedAt)
        {
            self.updatedAt = try decoderContainer.decode(Int?.self, forKey: .updatedAt)
        }
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        self.content = try decoderContainer.decode(String.self, forKey: .content)
    }
}
public extension Pipeline{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PipelineCodingKeys.self)
         try encoderContainer.encode(uuid, forKey: .uuid)
         try encoderContainer.encode(createdAt, forKey: .createdAt)
         try encoderContainer.encode(updatedAt, forKey: .updatedAt)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(content, forKey: .content)
    }
}
///  pipelineParams
public class PipelineParams:NSObject,Codable{
    /// 流水线的名称
    /// Required:true
    var name:String
    /// 流水线定义的json字符串。因为配置灵活且会支持用户直接上传json配置文件的方式配置，所以不对其在提交和显示的时候做解析或反解析。
    /// Required:true
    var content:String
    /// 创建方式， 值为CREATE_DEMO时，为创建流水线demo
    var method:String?



    public  init(name:String,content:String){
             self.name = name
             self.content = content
    }

    enum PipelineParamsCodingKeys: String, CodingKey {
        case name
        case content
        case method
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PipelineParamsCodingKeys.self)
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        self.content = try decoderContainer.decode(String.self, forKey: .content)
        if decoderContainer.contains(.method)
        {
            self.method = try decoderContainer.decode(String?.self, forKey: .method)
        }
    }
}
public extension PipelineParams{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PipelineParamsCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(content, forKey: .content)
         try encoderContainer.encode(method, forKey: .method)
    }
}
///  simplePipeline
public class SimplePipeline:NSObject,Codable{
    /// 流水线的uuid
    var uuid:String?
    /// 流水线名称
    var name:String?
    /// 开始执行流水线的时间
    var startedAt:Int?
    /// 最近一次执行的状态(数据结构待商定)
    var latestStatus:String?
    /// 最新一次执行的实例ID
    var latestInstanceUuid:String?



    public override init(){
            super.init()
    }

    enum SimplePipelineCodingKeys: String, CodingKey {
        case uuid
        case name
        case startedAt
        case latestStatus
        case latestInstanceUuid
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SimplePipelineCodingKeys.self)
        if decoderContainer.contains(.uuid)
        {
            self.uuid = try decoderContainer.decode(String?.self, forKey: .uuid)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.startedAt)
        {
            self.startedAt = try decoderContainer.decode(Int?.self, forKey: .startedAt)
        }
        if decoderContainer.contains(.latestStatus)
        {
            self.latestStatus = try decoderContainer.decode(String?.self, forKey: .latestStatus)
        }
        if decoderContainer.contains(.latestInstanceUuid)
        {
            self.latestInstanceUuid = try decoderContainer.decode(String?.self, forKey: .latestInstanceUuid)
        }
    }
}
public extension SimplePipeline{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SimplePipelineCodingKeys.self)
         try encoderContainer.encode(uuid, forKey: .uuid)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(startedAt, forKey: .startedAt)
         try encoderContainer.encode(latestStatus, forKey: .latestStatus)
         try encoderContainer.encode(latestInstanceUuid, forKey: .latestInstanceUuid)
    }
}