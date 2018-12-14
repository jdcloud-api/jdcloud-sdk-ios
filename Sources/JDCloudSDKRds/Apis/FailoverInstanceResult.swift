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

///  对RDS实例进行主备切换。&lt;br&gt;注意：如果实例正在进行备份，那么主备切换将会终止备份操作。可以查看备份策略中的备份开始时间确认是否有备份正在运行。如果确实需要在实例备份时进行主备切换，建议切换完成 后，手工进行一次实例的全备&lt;br&gt;对于SQL Server，主备切换后30分钟内，不支持按时间点恢复/创建，例如在10:05分用户进行了主备切换，那么10:05 ~ 10:35这个时间段不能进行按时间点恢复/创建。&lt;br&gt;- 仅支持SQL Server
public class FailoverInstanceResult:JdCloudResult
{
}
