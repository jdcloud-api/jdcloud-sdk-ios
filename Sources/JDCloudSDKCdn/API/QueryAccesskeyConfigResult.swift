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

   JCloud Openapi For CDN
   Openapi For JCLOUD cdn

   OpenAPI spec version: v1
   Contact: pid-cdn@jd.com

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询url鉴权
@objc(QueryAccesskeyConfigResult)
public class QueryAccesskeyConfigResult:NSObject,JdCloudResult
{
    /// 鉴权类型，0表示无鉴权，1表示参数鉴权，2表示路径鉴权
    var accesskeyType:Int32?

    /// 密码，长度为8到32
    var accesskeyKey:String?

    /// 是否是回源鉴权 0表示是 1表示否
    var accesskeyKeep:Int32?



    public override init(){
        super.init()
    }

    enum QueryAccesskeyConfigResultCodingKeys: String, CodingKey {
        case accesskeyType
        case accesskeyKey
        case accesskeyKeep
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueryAccesskeyConfigResultCodingKeys.self)
        self.accesskeyType = try decoderContainer.decode(Int32?.self, forKey: .accesskeyType)
        self.accesskeyKey = try decoderContainer.decode(String?.self, forKey: .accesskeyKey)
        self.accesskeyKeep = try decoderContainer.decode(Int32?.self, forKey: .accesskeyKeep)
    }
}
public extension QueryAccesskeyConfigResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryAccesskeyConfigResultCodingKeys.self)
        try encoderContainer.encode(accesskeyType, forKey: .accesskeyType)
        try encoderContainer.encode(accesskeyKey, forKey: .accesskeyKey)
        try encoderContainer.encode(accesskeyKeep, forKey: .accesskeyKeep)
    }
}
