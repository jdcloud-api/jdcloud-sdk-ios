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


///  查询存储空间数据
@objc(DescribeLiveFileStorageDataRequest)
public class DescribeLiveFileStorageDataRequest:JdCloudRequest
{
    /// 查询周期，取值范围：“day,month,year,followTime”，分别表示1天，1月，1年，跟随时间。默认为空，表示day。当传入followTime时，表示按Endtime-StartTime的周期，只返回一个点
      /// 
    var period:String?

    /// 查询起始时间，UTC时间，格式：yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;
      /// 
    var startTime:String

    /// 查询截至时间，UTC时间，格式：yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;，为空时默认为当前时间
      /// 
    var endTime:String?


    public init(regionId: String,startTime:String){
        self.startTime = startTime
        super.init(regionId: regionId)
    }


    enum DescribeLiveFileStorageDataRequestRequestCodingKeys: String, CodingKey {
        case period
        case startTime
        case endTime
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeLiveFileStorageDataRequestRequestCodingKeys.self)
        try encoderContainer.encode(period, forKey: .period)
        try encoderContainer.encode(startTime, forKey: .startTime)
        try encoderContainer.encode(endTime, forKey: .endTime)

    }
}
