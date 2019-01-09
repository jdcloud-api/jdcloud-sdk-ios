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
   媒体处理API

   OpenAPI spec version: 1.0.0
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  notification
@objc(Notification)
public class Notification:NSObject,Codable{
    /// 是否启用通知
    /// Required:true
    var enabled:Bool
    /// 通知endpoint, 当前支持http://和https://
    var endpoint:String?
    /// 触发通知的事件集合 (mpsTranscodeComplete, mpsThumbnailComplete)
    var events:[String?]?
    /// 重试策略, BACKOFF_RETRY: 退避重试策略, 重试 3 次, 每次重试的间隔时间是 10秒 到 20秒 之间的随机值; EXPONENTIAL_DECAY_RETRY: 指数衰减重试, 重试 176 次, 每次重试的间隔时间指数递增至 512秒, 总计重试时间为1天; 每次重试的具体间隔为: 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 512 ... 512 秒(共167个512)
    var notifyStrategy:String?
    /// 描述了向 Endpoint 推送的消息格式, JSON: 包含消息正文和消息属性, SIMPLIFIED: 消息体即用户发布的消息, 不包含任何属性信息
    var notifyContentFormat:String?



    public  init(enabled:Bool){
             self.enabled = enabled
    }

    enum NotificationCodingKeys: String, CodingKey {
        case enabled
        case endpoint
        case events
        case notifyStrategy
        case notifyContentFormat
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NotificationCodingKeys.self)
        self.enabled = try decoderContainer.decode(Bool.self, forKey: .enabled)
        if decoderContainer.contains(.endpoint)
        {
            self.endpoint = try decoderContainer.decode(String?.self, forKey: .endpoint)
        }
        if decoderContainer.contains(.events)
        {
            self.events = try decoderContainer.decode([String?]?.self, forKey: .events)
        }
        if decoderContainer.contains(.notifyStrategy)
        {
            self.notifyStrategy = try decoderContainer.decode(String?.self, forKey: .notifyStrategy)
        }
        if decoderContainer.contains(.notifyContentFormat)
        {
            self.notifyContentFormat = try decoderContainer.decode(String?.self, forKey: .notifyContentFormat)
        }
    }
}
public extension Notification{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NotificationCodingKeys.self)
         try encoderContainer.encode(enabled, forKey: .enabled)
         try encoderContainer.encode(endpoint, forKey: .endpoint)
         try encoderContainer.encode(events, forKey: .events)
         try encoderContainer.encode(notifyStrategy, forKey: .notifyStrategy)
         try encoderContainer.encode(notifyContentFormat, forKey: .notifyContentFormat)
    }
}
