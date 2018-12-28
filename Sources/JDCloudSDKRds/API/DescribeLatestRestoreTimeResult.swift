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

   实例管理
   实例管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 获取SQL Server实例按时间点恢复/创建时，可恢复到的最后的一个时间点&lt;br&gt;- 仅支持SQL Server
@objc(DescribeLatestRestoreTimeResult)
public class DescribeLatestRestoreTimeResult:NSObject,JdCloudResult
{
    /// 实例按时间点恢复时,可恢复到的最后的一个时间点
    var latestRestoreTime:String?



    public override init(){
        super.init()
    }

    enum DescribeLatestRestoreTimeResultCodingKeys: String, CodingKey {
        case latestRestoreTime
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeLatestRestoreTimeResultCodingKeys.self)
        self.latestRestoreTime = try decoderContainer.decode(String?.self, forKey: .latestRestoreTime)
    }
}
public extension DescribeLatestRestoreTimeResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeLatestRestoreTimeResultCodingKeys.self)
        try encoderContainer.encode(latestRestoreTime, forKey: .latestRestoreTime)
    }
}
