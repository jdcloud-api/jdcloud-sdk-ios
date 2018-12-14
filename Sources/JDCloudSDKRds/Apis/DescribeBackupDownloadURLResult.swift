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

   备份管理
   备份管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  获取整个备份或备份中单个文件的下载链接。&lt;br&gt;- 当输入参数中有文件名时，获取该文件的下载链接。&lt;br&gt;- 输入参数中无文件名时，获取整个备份的下载链接。&lt;br&gt;由于备份机制的差异，使用该接口下载备份时，SQL Server必须输入文件名，每个文件逐一下载，不支持下载整个备份。SQL Server备份中的文件名（不包括后缀）即为备份的数据库名。例如文件名为my_test_db.bak，表示该文件是my_test_db数据库的备份。&lt;br&gt;MySQL可下载整个备份集，但不支持单个文件的下载。
public class DescribeBackupDownloadURLResult:JdCloudResult
{
}
