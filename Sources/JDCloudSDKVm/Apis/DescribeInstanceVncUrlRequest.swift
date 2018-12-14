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

   云主机
   与主机操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  获取云主机vnc，用于连接管理云主机。&lt;br&gt;
        ///         /// vnc地址的有效期为1个小时，调用接口获取vnc地址后如果1个小时内没有使用，vnc地址自动失效，再次使用需要重新获取。
        ///         /// 
public class DescribeInstanceVncUrlRequest:JdCloudRequest
{
    /// 云主机ID
    var instanceId:String


    public init(regionId: String,instanceId:String){
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum DescribeInstanceVncUrlRequestRequestCodingKeys: String, CodingKey {
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeInstanceVncUrlRequestRequestCodingKeys.self)
        try container.encode(instanceId, forKey: .instanceId)

    }
}
