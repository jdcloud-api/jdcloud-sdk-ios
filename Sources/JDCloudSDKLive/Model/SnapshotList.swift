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

///  snapshotList
@objc(SnapshotList)
public class SnapshotList:NSObject,Codable{
    /// 推流域名
    var publishDomain:String?
    /// 流所属应用名称
    var appName:String?
    /// 直播流名称
    var streamName:String?
    /// 截图时间
    var snapshotTime:String?
    /// 图片高
    var height:Int?
    /// 图片宽
    var width:Int?
    /// OSSBucket的名称
    var ossBucket:String?
    /// OSSEndpoint域名
    var ossEndpoint:String?
    /// OSSObject
    var ossObject:String?



    public override init(){
            super.init()
    }

    enum SnapshotListCodingKeys: String, CodingKey {
        case publishDomain
        case appName
        case streamName
        case snapshotTime
        case height
        case width
        case ossBucket
        case ossEndpoint
        case ossObject
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SnapshotListCodingKeys.self)
        self.publishDomain = try decoderContainer.decode(String?.self, forKey: .publishDomain)
        self.appName = try decoderContainer.decode(String?.self, forKey: .appName)
        self.streamName = try decoderContainer.decode(String?.self, forKey: .streamName)
        self.snapshotTime = try decoderContainer.decode(String?.self, forKey: .snapshotTime)
        self.height = try decoderContainer.decode(Int?.self, forKey: .height)
        self.width = try decoderContainer.decode(Int?.self, forKey: .width)
        self.ossBucket = try decoderContainer.decode(String?.self, forKey: .ossBucket)
        self.ossEndpoint = try decoderContainer.decode(String?.self, forKey: .ossEndpoint)
        self.ossObject = try decoderContainer.decode(String?.self, forKey: .ossObject)
    }
}
public extension SnapshotList{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SnapshotListCodingKeys.self)
         try encoderContainer.encode(publishDomain, forKey: .publishDomain)
         try encoderContainer.encode(appName, forKey: .appName)
         try encoderContainer.encode(streamName, forKey: .streamName)
         try encoderContainer.encode(snapshotTime, forKey: .snapshotTime)
         try encoderContainer.encode(height, forKey: .height)
         try encoderContainer.encode(width, forKey: .width)
         try encoderContainer.encode(ossBucket, forKey: .ossBucket)
         try encoderContainer.encode(ossEndpoint, forKey: .ossEndpoint)
         try encoderContainer.encode(ossObject, forKey: .ossObject)
    }
}
