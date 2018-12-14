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

   renewal相关接口
   API related to JDCLOUD

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  查询资源续费价格
public class RenewPriceRequest:JdCloudRequest
{
    /// TimeSpan
    var timeSpan:Int

    /// TimeUnit
    var timeUnit:Int

    /// AppCode
    var appCode:String

    /// resourceIdList
        /// 
    var filters:Filter?


    public init(regionId: String,timeSpan:Int,timeUnit:Int,appCode:String){
        self.timeSpan = timeSpan
        self.timeUnit = timeUnit
        self.appCode = appCode
        super.init(regionId: regionId)
    }


    enum RenewPriceRequestRequestCodingKeys: String, CodingKey {
        case timeSpan
        case timeUnit
        case appCode
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: RenewPriceRequestRequestCodingKeys.self)
        try container.encode(timeSpan, forKey: .timeSpan)
        try container.encode(timeUnit, forKey: .timeUnit)
        try container.encode(appCode, forKey: .appCode)
        try container.encode(filters, forKey: .filters)

    }
}
