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


///  云主机绑定一块弹性网卡。&lt;br&gt;
        /// 云主机状态必须为&lt;b&gt;running&lt;/b&gt;或&lt;b&gt;stopped&lt;/b&gt;状态，并且没有正在进行中的任务才可操作。&lt;br&gt;
        /// 弹性网卡上如果绑定了弹性公网IP，那么其所在az需要与云主机的az保持一致，或者为全可用区型弹性公网IP，才可挂载该网卡。&lt;br&gt;
        /// 云主机挂载弹性网卡的数量，不能超过实例规格的限制。可查询&lt;a href&#x3D;&quot;http://docs.jdcloud.com/virtual-machines/api/describeinstancetypes&quot;&gt;DescribeInstanceTypes&lt;/a&gt;接口获得指定规格可挂载弹性网卡的数量上限。&lt;br&gt;
        /// 弹性网卡与云主机必须在相同vpc下。
        /// 
public class AttachNetworkInterfaceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/instances/{instanceId}:attachNetworkInterface")
    }
    
}