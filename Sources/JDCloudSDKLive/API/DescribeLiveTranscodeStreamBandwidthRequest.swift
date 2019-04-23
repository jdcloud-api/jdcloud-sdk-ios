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

   Live-Video
   直播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询转码流播放带宽
      ///       /// - 查询1分钟粒度的数据时，时间跨度不超过7天，其他粒度时时间跨度不超过30天
      ///       /// 
@objc(DescribeLiveTranscodeStreamBandwidthRequest)
public class DescribeLiveTranscodeStreamBandwidthRequest:JdCloudRequest
{
    /// 推流域名
    var domainName:String

    /// 应用名称
    var appName:String

    /// 运营商
      /// 
    var ispName:String?

    /// 查询的区域，如beijing,shanghai。多个用逗号分隔
      /// 
    var locationName:String?

    /// 查询的流协议类型，取值范围：&quot;rtmp,hdl,hls&quot;，多个时以逗号分隔
      /// 
    var protocolType:String?

    /// 查询周期，当前取值范围：“oneMin,fiveMin,halfHour,hour,twoHour,sixHour,day,followTime”，分别表示1min，5min，半小时，1小时，2小时，6小时，1天，跟随时间。默认为空，表示fiveMin。当传入followTime时，表示按Endtime-StartTime的周期，只返回一个点
      /// 
    var period:String?

    /// 查询起始时间，UTC时间，格式：yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;
      /// 
    var startTime:String

    /// 查询截至时间，UTC时间，格式：yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;，为空时默认为当前时间
      /// 
    var endTime:String?


    public init(regionId: String,domainName:String,appName:String,startTime:String){
        self.domainName = domainName
        self.appName = appName
        self.startTime = startTime
        super.init(regionId: regionId)
    }


    enum DescribeLiveTranscodeStreamBandwidthRequestRequestCodingKeys: String, CodingKey {
        case domainName
        case appName
        case ispName
        case locationName
        case protocolType
        case period
        case startTime
        case endTime
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeLiveTranscodeStreamBandwidthRequestRequestCodingKeys.self)
        try encoderContainer.encode(domainName, forKey: .domainName)
        try encoderContainer.encode(appName, forKey: .appName)
        try encoderContainer.encode(ispName, forKey: .ispName)
        try encoderContainer.encode(locationName, forKey: .locationName)
        try encoderContainer.encode(protocolType, forKey: .protocolType)
        try encoderContainer.encode(period, forKey: .period)
        try encoderContainer.encode(startTime, forKey: .startTime)
        try encoderContainer.encode(endTime, forKey: .endTime)

    }
}
