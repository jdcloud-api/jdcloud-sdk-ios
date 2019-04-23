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

   网站监控
   云解析OpenAPI网站监控接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 主域名的监控项的报警信息
@objc(GetMonitorAlarmInfoResult)
public class GetMonitorAlarmInfoResult:NSObject,JdCloudResult
{
    /// 当前页面报警信息的个数
    var currentCount:Int?

    /// 所有报警信息的个数
    var totalCount:Int?

    /// 所有报警信息的页数
    var totalPage:Int?

    /// 当前页面的报警信息的数组
    var dataList:[MonitorAlarmInfo?]?



    public override init(){
        super.init()
    }

    enum GetMonitorAlarmInfoResultCodingKeys: String, CodingKey {
        case currentCount
        case totalCount
        case totalPage
        case dataList
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetMonitorAlarmInfoResultCodingKeys.self)
        if decoderContainer.contains(.currentCount)
        {
            self.currentCount = try decoderContainer.decode(Int?.self, forKey: .currentCount)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
        if decoderContainer.contains(.totalPage)
        {
            self.totalPage = try decoderContainer.decode(Int?.self, forKey: .totalPage)
        }
        if decoderContainer.contains(.dataList)
        {
            self.dataList = try decoderContainer.decode([MonitorAlarmInfo?]?.self, forKey: .dataList)
        }
    }
}
public extension GetMonitorAlarmInfoResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetMonitorAlarmInfoResultCodingKeys.self)
        try encoderContainer.encode(currentCount, forKey: .currentCount)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
        try encoderContainer.encode(totalPage, forKey: .totalPage)
        try encoderContainer.encode(dataList, forKey: .dataList)
    }
}
