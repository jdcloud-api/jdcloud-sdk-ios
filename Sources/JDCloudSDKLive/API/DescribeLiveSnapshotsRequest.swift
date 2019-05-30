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


///  查询截图列表
      ///       /// 
@objc(DescribeLiveSnapshotsRequest)
public class DescribeLiveSnapshotsRequest:JdCloudRequest
{
    /// 当面页数
      /// 
    var pageNum:Int

    /// 每页记录数
      /// 
    var pageSize:Int

    /// 图片下载地址有效期，单位：秒，默认：3600
      /// 
    var authExpire:Int?

    /// 推流域名
      /// 
    var publishDomain:String

    /// 推流AppName
      /// 
    var appName:String

    /// 流名称
      /// 
    var streamName:String

    /// 查询起始时间，UTC时间，格式：yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;
      /// 
    var startTime:String

    /// 查询截至时间，UTC时间，格式：yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;
      /// 
    var endTime:String


    public init(regionId: String,pageNum:Int,pageSize:Int,publishDomain:String,appName:String,streamName:String,startTime:String,endTime:String){
        self.pageNum = pageNum
        self.pageSize = pageSize
        self.publishDomain = publishDomain
        self.appName = appName
        self.streamName = streamName
        self.startTime = startTime
        self.endTime = endTime
        super.init(regionId: regionId)
    }


    enum DescribeLiveSnapshotsRequestRequestCodingKeys: String, CodingKey {
        case pageNum
        case pageSize
        case authExpire
        case publishDomain
        case appName
        case streamName
        case startTime
        case endTime
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeLiveSnapshotsRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNum, forKey: .pageNum)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(authExpire, forKey: .authExpire)
        try encoderContainer.encode(publishDomain, forKey: .publishDomain)
        try encoderContainer.encode(appName, forKey: .appName)
        try encoderContainer.encode(streamName, forKey: .streamName)
        try encoderContainer.encode(startTime, forKey: .startTime)
        try encoderContainer.encode(endTime, forKey: .endTime)

    }
}