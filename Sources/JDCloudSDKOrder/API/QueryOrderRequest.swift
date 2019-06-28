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

   相关接口
   API related to order

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询订单详情
@objc(QueryOrderRequest)
public class QueryOrderRequest:JdCloudRequest
{
    /// 是否包含商品详情
    var includeDetail:Bool?

    /// orderNumber ID
    var orderNumber:String


    public init(regionId: String,orderNumber:String){
        self.orderNumber = orderNumber
        super.init(regionId: regionId)
    }


    enum QueryOrderRequestRequestCodingKeys: String, CodingKey {
        case includeDetail
        case orderNumber
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryOrderRequestRequestCodingKeys.self)
        try encoderContainer.encode(includeDetail, forKey: .includeDetail)
        try encoderContainer.encode(orderNumber, forKey: .orderNumber)

    }
}
