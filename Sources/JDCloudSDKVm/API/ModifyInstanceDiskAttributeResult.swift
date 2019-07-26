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

/// 修改云主机挂载的数据盘属性，包括是否随主机删除。&lt;br&gt;
      ///       /// 仅按配置计费云硬盘支持设置随实例删除属性;包年包月计费云硬盘该属性不生效,实例删除时云硬盘将保留。&lt;br&gt;
      ///       /// 
@objc(ModifyInstanceDiskAttributeResult)
public class ModifyInstanceDiskAttributeResult:NSObject,JdCloudResult
{
}
