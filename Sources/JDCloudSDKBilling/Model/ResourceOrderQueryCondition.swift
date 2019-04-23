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

///  resourceOrderQueryCondition
@objc(ResourceOrderQueryCondition)
public class ResourceOrderQueryCondition:NSObject,Codable{
    /// 主键id
    var id:Int?
    /// 用户pin
    var pin:String?
    /// 资源id
    var resourceId:String?
    /// appCode
    var appCode:String?
    /// 产品码列表
    var serviceCodeList:[String?]?
    /// 地域
    var region:String?
    /// 网络类型 0: non-BGP, 1: BGP
    var networkOperator:Int?
    /// 计费类型 1:按配置 2:按用量 3:包年包月
    var billingType:Int?
    /// resourceIdList
    var resourceIdList:[String?]?
    /// &gt;0: 订单还有几天到期; &#x3D;&#x3D;0: 订单已经到期; &lt;0: 不管是否到期
    var expireInDays:Int?
    /// isOnTrial
    var isOnTrial:Int?
    /// 站点信息 0:中国 1:国际
    var site:Int?
    /// 资源状态 1:正常 2:停服 3:删除
    var status:Int?
    /// 计费状态 0:停止计费 1:计费中
    var billingStatus:Int?
    /// 1、内部计算，使用getExpiringOrderCount时使用，不用传值 默认为-1mybatis筛选时不会关注 2、selectResourceOrderForTask定时任务查询列表时使用，停服天数，必须大于0
    var expiringInDays:Int?
    /// billingTypeList
    var billingTypeList:[Double?]?
    /// 交易单号列表
    var transactionNos:[String?]?
    /// OpTypes
    var opTypes:[Double?]?
    /// 开始时间
    var startTime:String?
    /// 结束时间
    var endTime:String?
    /// 服务编码
    var serviceCode:String?
    /// statusList
    var statusList:[Double?]?
    /// excludeResources
    var excludeResources:[String?]?
    /// orderByClaus
    var orderByClaus:String?
    /// 专有云节点的code（节点云查询使用）
    var node:String?
    /// 部门（节点云查询使用）
    var departmentId:Int?
    /// PinList
    var pinList:[String?]?
    /// 是否是专有云 1:是  其他不是
    var isSpecial:Int?
    /// 节点信息
    var nodeCode:String?
    /// 超时时间，暂时不用
    var timeout:Int?
    /// 当前页序号
    var pageIndex:Int?
    /// 每页结果数量
    var pageSize:Int?
    /// Offset
    var offset:Int?



    public override init(){
            super.init()
    }

    enum ResourceOrderQueryConditionCodingKeys: String, CodingKey {
        case id
        case pin
        case resourceId
        case appCode
        case serviceCodeList
        case region
        case networkOperator
        case billingType
        case resourceIdList
        case expireInDays
        case isOnTrial
        case site
        case status
        case billingStatus
        case expiringInDays
        case billingTypeList
        case transactionNos
        case opTypes
        case startTime
        case endTime
        case serviceCode
        case statusList
        case excludeResources
        case orderByClaus
        case node
        case departmentId
        case pinList
        case isSpecial
        case nodeCode
        case timeout
        case pageIndex
        case pageSize
        case offset
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ResourceOrderQueryConditionCodingKeys.self)
        if decoderContainer.contains(.id)
        {
            self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        }
        if decoderContainer.contains(.pin)
        {
            self.pin = try decoderContainer.decode(String?.self, forKey: .pin)
        }
        if decoderContainer.contains(.resourceId)
        {
            self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
        }
        if decoderContainer.contains(.appCode)
        {
            self.appCode = try decoderContainer.decode(String?.self, forKey: .appCode)
        }
        if decoderContainer.contains(.serviceCodeList)
        {
            self.serviceCodeList = try decoderContainer.decode([String?]?.self, forKey: .serviceCodeList)
        }
        if decoderContainer.contains(.region)
        {
            self.region = try decoderContainer.decode(String?.self, forKey: .region)
        }
        if decoderContainer.contains(.networkOperator)
        {
            self.networkOperator = try decoderContainer.decode(Int?.self, forKey: .networkOperator)
        }
        if decoderContainer.contains(.billingType)
        {
            self.billingType = try decoderContainer.decode(Int?.self, forKey: .billingType)
        }
        if decoderContainer.contains(.resourceIdList)
        {
            self.resourceIdList = try decoderContainer.decode([String?]?.self, forKey: .resourceIdList)
        }
        if decoderContainer.contains(.expireInDays)
        {
            self.expireInDays = try decoderContainer.decode(Int?.self, forKey: .expireInDays)
        }
        if decoderContainer.contains(.isOnTrial)
        {
            self.isOnTrial = try decoderContainer.decode(Int?.self, forKey: .isOnTrial)
        }
        if decoderContainer.contains(.site)
        {
            self.site = try decoderContainer.decode(Int?.self, forKey: .site)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Int?.self, forKey: .status)
        }
        if decoderContainer.contains(.billingStatus)
        {
            self.billingStatus = try decoderContainer.decode(Int?.self, forKey: .billingStatus)
        }
        if decoderContainer.contains(.expiringInDays)
        {
            self.expiringInDays = try decoderContainer.decode(Int?.self, forKey: .expiringInDays)
        }
        if decoderContainer.contains(.billingTypeList)
        {
            self.billingTypeList = try decoderContainer.decode([Double?]?.self, forKey: .billingTypeList)
        }
        if decoderContainer.contains(.transactionNos)
        {
            self.transactionNos = try decoderContainer.decode([String?]?.self, forKey: .transactionNos)
        }
        if decoderContainer.contains(.opTypes)
        {
            self.opTypes = try decoderContainer.decode([Double?]?.self, forKey: .opTypes)
        }
        if decoderContainer.contains(.startTime)
        {
            self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        }
        if decoderContainer.contains(.endTime)
        {
            self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        }
        if decoderContainer.contains(.serviceCode)
        {
            self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        }
        if decoderContainer.contains(.statusList)
        {
            self.statusList = try decoderContainer.decode([Double?]?.self, forKey: .statusList)
        }
        if decoderContainer.contains(.excludeResources)
        {
            self.excludeResources = try decoderContainer.decode([String?]?.self, forKey: .excludeResources)
        }
        if decoderContainer.contains(.orderByClaus)
        {
            self.orderByClaus = try decoderContainer.decode(String?.self, forKey: .orderByClaus)
        }
        if decoderContainer.contains(.node)
        {
            self.node = try decoderContainer.decode(String?.self, forKey: .node)
        }
        if decoderContainer.contains(.departmentId)
        {
            self.departmentId = try decoderContainer.decode(Int?.self, forKey: .departmentId)
        }
        if decoderContainer.contains(.pinList)
        {
            self.pinList = try decoderContainer.decode([String?]?.self, forKey: .pinList)
        }
        if decoderContainer.contains(.isSpecial)
        {
            self.isSpecial = try decoderContainer.decode(Int?.self, forKey: .isSpecial)
        }
        if decoderContainer.contains(.nodeCode)
        {
            self.nodeCode = try decoderContainer.decode(String?.self, forKey: .nodeCode)
        }
        if decoderContainer.contains(.timeout)
        {
            self.timeout = try decoderContainer.decode(Int?.self, forKey: .timeout)
        }
        if decoderContainer.contains(.pageIndex)
        {
            self.pageIndex = try decoderContainer.decode(Int?.self, forKey: .pageIndex)
        }
        if decoderContainer.contains(.pageSize)
        {
            self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        }
        if decoderContainer.contains(.offset)
        {
            self.offset = try decoderContainer.decode(Int?.self, forKey: .offset)
        }
    }
}
public extension ResourceOrderQueryCondition{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResourceOrderQueryConditionCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(serviceCodeList, forKey: .serviceCodeList)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(networkOperator, forKey: .networkOperator)
         try encoderContainer.encode(billingType, forKey: .billingType)
         try encoderContainer.encode(resourceIdList, forKey: .resourceIdList)
         try encoderContainer.encode(expireInDays, forKey: .expireInDays)
         try encoderContainer.encode(isOnTrial, forKey: .isOnTrial)
         try encoderContainer.encode(site, forKey: .site)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(billingStatus, forKey: .billingStatus)
         try encoderContainer.encode(expiringInDays, forKey: .expiringInDays)
         try encoderContainer.encode(billingTypeList, forKey: .billingTypeList)
         try encoderContainer.encode(transactionNos, forKey: .transactionNos)
         try encoderContainer.encode(opTypes, forKey: .opTypes)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(statusList, forKey: .statusList)
         try encoderContainer.encode(excludeResources, forKey: .excludeResources)
         try encoderContainer.encode(orderByClaus, forKey: .orderByClaus)
         try encoderContainer.encode(node, forKey: .node)
         try encoderContainer.encode(departmentId, forKey: .departmentId)
         try encoderContainer.encode(pinList, forKey: .pinList)
         try encoderContainer.encode(isSpecial, forKey: .isSpecial)
         try encoderContainer.encode(nodeCode, forKey: .nodeCode)
         try encoderContainer.encode(timeout, forKey: .timeout)
         try encoderContainer.encode(pageIndex, forKey: .pageIndex)
         try encoderContainer.encode(pageSize, forKey: .pageSize)
         try encoderContainer.encode(offset, forKey: .offset)
    }
}
