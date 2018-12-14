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

   Anti DDoS Protection Package Attack Log APIs
   Anti DDoS Protection Package Attack Log APIs

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  查询攻击记录, 参数 ip 优先级大于 instanceId
        ///         ///   - 指定 ip 参数时, 忽略 instanceId 参数, 查询 ip 相关攻击记录
        ///         ///   - 未指定 ip 时, 查询 instanceId 指定实例相关攻击记录
        ///         ///   - ip 和 instanceId 均未指定时, 查询用户所有攻击记录
        ///         /// 
public class DescribeAttackLogsResult:JdCloudResult
{
}
