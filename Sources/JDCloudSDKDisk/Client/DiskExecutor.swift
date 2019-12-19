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

   云硬盘相关接口
   云硬盘相关接口，提供批量创建云硬盘，查询云硬盘，删除云硬盘，对云硬盘进行扩容，修改云硬盘信息以及使用快照恢复云硬盘等功能。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  查询云硬盘快照列表，filters多个过滤条件之间是逻辑与(AND)，每个条件内部的多个取值是逻辑或(OR)
public class DescribeSnapshotsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/snapshots")
    }
    
}
///  -   为指定云硬盘创建快照，新生成的快照的状态为creating。
      /// -   同一地域下单用户快照的配额为15块。
      /// -   为保证数据完整性，请您在创建快照之前，停止对云硬盘进行写入操作，以保证快照数据的完整性。
      /// -   在执行创建快照前，建议您对云硬盘进行卸载操作，创建快照后再重新挂载到云主机上。
      /// -   手动快照的生命周期独立于云硬盘，请您及时删除不需要的快照。
      /// -   创建快照所需时间取决于云硬盘容量的大小，云硬盘容量越大耗时越长。
      /// 
public class CreateSnapshotExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/snapshots")
    }
    
}
///  查询云硬盘快照信息详情
public class DescribeSnapshotExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/snapshots/{snapshotId}")
    }
    
}
///  修改快照的名字或描述信息
public class ModifySnapshotAttributeExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/snapshots/{snapshotId}")
    }
    
}
///  -   删除单个云硬盘快照:快照状态必须为 available 或 error 状态。
      /// -   快照独立于云硬盘生命周期，删除快照不会对创建快照的云硬盘有任何影响。
      /// -   快照删除后不可恢复，请谨慎操作。
      /// 
public class DeleteSnapshotExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/snapshots/{snapshotId}")
    }
    
}
///  -   查询您已经创建的云硬盘。
      /// -   filters多个过滤条件之间是逻辑与(AND)，每个条件内部的多个取值是逻辑或(OR)
      /// 
public class DescribeDisksExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/disks")
    }
    
}
///  -   创建一块或多块按配置或者按使用时长付费的云硬盘。
      /// -   云硬盘类型包括高效云盘(premium-hdd)、SSD云盘(ssd)、通用型SSD(ssd.gp1)、性能型SSD(ssd.io1)、容量型HDD(hdd.std1)。
      /// -   计费方式默认为按配置付费。
      /// -   创建完成后，云硬盘状态为 available。
      /// -   可选参数快照 ID用于从快照创建新盘。
      /// -   批量创建时，云硬盘的命名为 硬盘名称-数字，例如 myDisk-1，myDisk-2。
      /// -   maxCount为最大努力，不保证一定能达到maxCount。
      /// 
public class CreateDisksExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/disks")
    }
    
}
///  查询某一块云硬盘的信息详情
public class DescribeDiskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/disks/{diskId}")
    }
    
}
///  修改云硬盘的名字或描述信息，名字或描述信息至少要指定一个。
public class ModifyDiskAttributeExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/disks/{diskId}")
    }
    
}
///  -   删除一块按配置计费的云硬盘，云盘类型包括高效云盘、SSD云盘、通用型SSD、性能型SSD和容量型HDD。
      /// -   删除云盘时，云盘的状态必须为 待挂载（Available）。
      /// -   云盘被删除后，云硬盘快照可以被保留。
      /// 
public class DeleteDiskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/disks/{diskId}")
    }
    
}
///  -   仅可对制作快照的源硬盘进行数据恢复操作。
      /// -   仅源硬盘处于可用状态时才能使用快照进行数据恢复操作。
      /// -   云硬盘恢复后，当前数据将被清除，请您谨慎操作。
      /// 
public class RestoreDiskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/disks/{diskId}:restore")
    }
    
}
///  -   扩容云硬盘到指定大小，云硬盘状态必须为 available。
      /// -   当云硬盘正在创建快照时，不允许扩容。
      /// 
public class ExtendDiskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/disks/{diskId}:extend")
    }
    
}
