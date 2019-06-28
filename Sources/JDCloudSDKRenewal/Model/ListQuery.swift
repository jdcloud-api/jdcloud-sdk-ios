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

///  listQuery
@objc(ListQuery)
public class ListQuery:NSObject,Codable{
    /// 到期时间
    var expireTime:String?
    /// 产品线
    var serviceCode:String?
    /// 倒计时
    var lastTime:Int?
    /// 资源名称
    var resourceName:String?
    /// 资源ID
    var resourceId:String?
    /// 地域
    var dataCenter:String?
    /// 计费类型
    var billingType:Int?
    /// 是否开通自动续费(0:未开通,1:已开通)
    var autoRenew:Int?
    /// 1:关联包年包月资源一并自动续费 2：关联包年包月资源不自动续费
    var associateResource:Int?
    /// 续费周期
    var renewTime:Int?
    /// 数据库类型
    var databaseType:String?
    /// 特殊需求
    var remark:String?
    /// 绑定资源列表
    var relationList:[RelationResource?]?



    public override init(){
            super.init()
    }

    enum ListQueryCodingKeys: String, CodingKey {
        case expireTime
        case serviceCode
        case lastTime
        case resourceName
        case resourceId
        case dataCenter
        case billingType
        case autoRenew
        case associateResource
        case renewTime
        case databaseType
        case remark
        case relationList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ListQueryCodingKeys.self)
        if decoderContainer.contains(.expireTime)
        {
            self.expireTime = try decoderContainer.decode(String?.self, forKey: .expireTime)
        }
        if decoderContainer.contains(.serviceCode)
        {
            self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        }
        if decoderContainer.contains(.lastTime)
        {
            self.lastTime = try decoderContainer.decode(Int?.self, forKey: .lastTime)
        }
        if decoderContainer.contains(.resourceName)
        {
            self.resourceName = try decoderContainer.decode(String?.self, forKey: .resourceName)
        }
        if decoderContainer.contains(.resourceId)
        {
            self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
        }
        if decoderContainer.contains(.dataCenter)
        {
            self.dataCenter = try decoderContainer.decode(String?.self, forKey: .dataCenter)
        }
        if decoderContainer.contains(.billingType)
        {
            self.billingType = try decoderContainer.decode(Int?.self, forKey: .billingType)
        }
        if decoderContainer.contains(.autoRenew)
        {
            self.autoRenew = try decoderContainer.decode(Int?.self, forKey: .autoRenew)
        }
        if decoderContainer.contains(.associateResource)
        {
            self.associateResource = try decoderContainer.decode(Int?.self, forKey: .associateResource)
        }
        if decoderContainer.contains(.renewTime)
        {
            self.renewTime = try decoderContainer.decode(Int?.self, forKey: .renewTime)
        }
        if decoderContainer.contains(.databaseType)
        {
            self.databaseType = try decoderContainer.decode(String?.self, forKey: .databaseType)
        }
        if decoderContainer.contains(.remark)
        {
            self.remark = try decoderContainer.decode(String?.self, forKey: .remark)
        }
        if decoderContainer.contains(.relationList)
        {
            self.relationList = try decoderContainer.decode([RelationResource?]?.self, forKey: .relationList)
        }
    }
}
public extension ListQuery{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ListQueryCodingKeys.self)
         try encoderContainer.encode(expireTime, forKey: .expireTime)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(lastTime, forKey: .lastTime)
         try encoderContainer.encode(resourceName, forKey: .resourceName)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(dataCenter, forKey: .dataCenter)
         try encoderContainer.encode(billingType, forKey: .billingType)
         try encoderContainer.encode(autoRenew, forKey: .autoRenew)
         try encoderContainer.encode(associateResource, forKey: .associateResource)
         try encoderContainer.encode(renewTime, forKey: .renewTime)
         try encoderContainer.encode(databaseType, forKey: .databaseType)
         try encoderContainer.encode(remark, forKey: .remark)
         try encoderContainer.encode(relationList, forKey: .relationList)
    }
}