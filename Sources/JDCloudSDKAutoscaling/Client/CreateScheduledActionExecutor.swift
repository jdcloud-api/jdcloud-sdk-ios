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

   弹性伸缩策略
   弹性伸缩动态策略和定时任务相关操作接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建伸缩组定时策略
public class CreateScheduledActionExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/autoscalingGroups/{asGroupUuid}/scheduledActions")
    }
    
}