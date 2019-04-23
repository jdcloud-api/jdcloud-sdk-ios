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

   elite云存服务相关接口
   elite云存服务相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 获取云存服务信息
@objc(GetStoreServiceResult)
public class GetStoreServiceResult:NSObject,JdCloudResult
{
    /// true为成功，false为失败
    var status:Bool?

    /// 描述信息
    var message:String?

    /// 查询数据结果
    var data:StoreServiceVo?



    public override init(){
        super.init()
    }

    enum GetStoreServiceResultCodingKeys: String, CodingKey {
        case status
        case message
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetStoreServiceResultCodingKeys.self)
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(Bool?.self, forKey: .status)
        }
        if decoderContainer.contains(.message)
        {
            self.message = try decoderContainer.decode(String?.self, forKey: .message)
        }
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode(StoreServiceVo?.self, forKey: .data)
        }
    }
}
public extension GetStoreServiceResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetStoreServiceResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(data, forKey: .data)
    }
}