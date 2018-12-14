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

   CustomMetric APIs
   自定义监控相关接口

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询自定义监控所有region规则告警历史
public class DescribeAlarmHistoryAllRegionCmRequest:JdCloudRequest
{
    /// 当前所在页，默认为1
    var pageNumber:Int64?

    /// 页面大小，默认为20；取值范围[1, 100]
    var pageSize:Int64?

    /// 报警规则的Id
    var id:Int64?

    /// obj
    var obi:String?

    /// namespace
    var namespace:String?

    /// 产品名称
    var serviceCode:String?

    /// 资源Id
    var resourceId:String?

    /// 查询数据开始时间，默认24小时前，可以输入long型时间，也可以输入yyyy-MM-dd&#39;T&#39;HH:mm:ssZ类型时间
    var startTime:String

    /// 查询数据结束时间，默认当前时间，可以输入long型时间，也可以输入yyyy-MM-dd&#39;T&#39;HH:mm:ssZ类型时间
    var endTime:String


    public init(regionId: String,startTime:String,endTime:String){
        self.startTime = startTime
        self.endTime = endTime
        super.init(regionId: regionId)
    }


    enum DescribeAlarmHistoryAllRegionCmRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case id
        case obi
        case namespace
        case serviceCode
        case resourceId
        case startTime
        case endTime
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeAlarmHistoryAllRegionCmRequestRequestCodingKeys.self)
        try container.encode(pageNumber, forKey: .pageNumber)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(id, forKey: .id)
        try container.encode(obi, forKey: .obi)
        try container.encode(namespace, forKey: .namespace)
        try container.encode(serviceCode, forKey: .serviceCode)
        try container.encode(resourceId, forKey: .resourceId)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)

    }
}
