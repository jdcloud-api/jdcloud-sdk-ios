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

   路由表
   路由表相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  添加路由表规则
@objc(AddRouteTableRulesRequest)
public class AddRouteTableRulesRequest:JdCloudRequest
{
    /// 安全组规则信息
    var routeTableRuleSpecs:[AddRouteTableRules?]?

    /// RouteTable ID
    var routeTableId:String


    public init(regionId: String,routeTableRuleSpecs:[AddRouteTableRules?]?,routeTableId:String){
        self.routeTableRuleSpecs = routeTableRuleSpecs
        self.routeTableId = routeTableId
        super.init(regionId: regionId)
    }


    enum AddRouteTableRulesRequestRequestCodingKeys: String, CodingKey {
        case routeTableRuleSpecs
        case routeTableId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddRouteTableRulesRequestRequestCodingKeys.self)
        try encoderContainer.encode(routeTableRuleSpecs, forKey: .routeTableRuleSpecs)
        try encoderContainer.encode(routeTableId, forKey: .routeTableId)

    }
}
