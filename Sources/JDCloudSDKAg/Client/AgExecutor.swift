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

   Availability-Group
   高可用组的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  查询(ag)配额
public class DescribeQuotasExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/quotas")
    }
    
}
///  使用过滤条件查询一个或多个高可用组
public class DescribeAgsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/availabilityGroups")
    }
    
}
///  创建一个高可用组
public class CreateAgExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/availabilityGroups")
    }
    
}
///  根据 id 查询高可用组详情
public class DescribeAgExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/availabilityGroups/{agId}")
    }
    
}
///  修改一个高可用组的信息
public class UpdateAgExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/availabilityGroups/{agId}")
    }
    
}
///  根据 id 删除高可用组，需确保 AG 中云主机实例已全部删除
public class DeleteAgExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/availabilityGroups/{agId}")
    }
    
}
///  从高可用组中剔除实例
public class AbandonInstancesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/availabilityGroups/{agId}:abandonInstances")
    }
    
}
///  修改高可用组的实例模板
public class SetInstanceTemplateExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/availabilityGroups/{agId}:setInstanceTemplate")
    }
    
}
