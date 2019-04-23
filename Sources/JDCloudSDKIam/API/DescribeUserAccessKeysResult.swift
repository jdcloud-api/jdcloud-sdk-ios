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

   User Management
   User Management API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询AccessKey列表
@objc(DescribeUserAccessKeysResult)
public class DescribeUserAccessKeysResult:NSObject,JdCloudResult
{
    /// userAccessKey列表
    var userAccessKeys:[UserAccessKey?]?



    public override init(){
        super.init()
    }

    enum DescribeUserAccessKeysResultCodingKeys: String, CodingKey {
        case userAccessKeys
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeUserAccessKeysResultCodingKeys.self)
        if decoderContainer.contains(.userAccessKeys)
        {
            self.userAccessKeys = try decoderContainer.decode([UserAccessKey?]?.self, forKey: .userAccessKeys)
        }
    }
}
public extension DescribeUserAccessKeysResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeUserAccessKeysResultCodingKeys.self)
        try encoderContainer.encode(userAccessKeys, forKey: .userAccessKeys)
    }
}
