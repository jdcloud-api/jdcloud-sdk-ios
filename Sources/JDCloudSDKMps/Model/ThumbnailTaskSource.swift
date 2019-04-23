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

   媒体处理相关接口
   多媒体处理服务API，包括截图、转码、媒体处理消息通知等操作。本文档详细说明了媒体处理API及用法，适合开发人员阅读。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  视频截图源文件参数
@objc(ThumbnailTaskSource)
public class ThumbnailTaskSource:NSObject,Codable{
    /// 输入视频信息的 bucket
    /// Required:true
    var bucket:String
    /// 输入视频信息的 Key
    /// Required:true
    var key:String



    public  init(bucket:String,key:String){
             self.bucket = bucket
             self.key = key
    }

    enum ThumbnailTaskSourceCodingKeys: String, CodingKey {
        case bucket
        case key
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ThumbnailTaskSourceCodingKeys.self)
        self.bucket = try decoderContainer.decode(String.self, forKey: .bucket)
        self.key = try decoderContainer.decode(String.self, forKey: .key)
    }
}
public extension ThumbnailTaskSource{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ThumbnailTaskSourceCodingKeys.self)
         try encoderContainer.encode(bucket, forKey: .bucket)
         try encoderContainer.encode(key, forKey: .key)
    }
}
