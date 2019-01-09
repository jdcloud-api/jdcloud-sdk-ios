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


///  批量删除域名组
@objc(BatchDeleteDomainGroupRequest)
public class BatchDeleteDomainGroupRequest:JdCloudRequest
{
    /// Ids
    var ids:[Int64?]?


    public init(regionId: String,ids:[Int64?]?){
        self.ids = ids
        super.init(regionId: regionId)
    }


    enum BatchDeleteDomainGroupRequestRequestCodingKeys: String, CodingKey {
        case ids
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BatchDeleteDomainGroupRequestRequestCodingKeys.self)
        try encoderContainer.encode(ids, forKey: .ids)

    }
}