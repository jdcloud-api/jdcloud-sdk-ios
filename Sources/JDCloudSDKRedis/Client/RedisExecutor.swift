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

   Redis Instance Order API
   查询缓存Redis订单结果

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  查询账户的缓存Redis配额信息
public class DescribeUserQuotaExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/quota")
    }
    
}
///  查询缓存Redis实例列表，可分页、可排序、可搜索、可过滤
public class DescribeCacheInstancesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/cacheInstance")
    }
    
}
///  创建一个指定配置的缓存Redis实例：可选择主从版或集群版，每种类型又分为多种规格（按CPU核数、内存容量、磁盘容量、带宽等划分），具体可参考产品规格代码，https://docs.jdcloud.com/cn/jcs-for-redis/specifications
      /// 
public class CreateCacheInstanceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/cacheInstance")
    }
    
}
///  查询缓存Redis实例的详细信息
public class DescribeCacheInstanceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}")
    }
    
}
///  修改缓存Redis实例的资源名称或描述，二者至少选一
public class ModifyCacheInstanceAttributeExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}")
    }
    
}
///  删除按配置计费、或包年包月已到期的缓存Redis实例，包年包月未到期不可删除。
      /// 只有处于运行running或者错误error状态才可以删除，其余状态不可以删除。
      /// 白名单用户不能删除包年包月已到期的缓存Redis实例。
      /// 
public class DeleteCacheInstanceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}")
    }
    
}
///  变更缓存Redis实例规格（变配），只能变更运行状态的实例规格，变更的规格不能与之前的相同。
      /// 预付费用户，从集群版变配到主从版，新规格的内存大小要大于老规格的内存大小，从主从版到集群版，新规格的内存大小要不小于老规格的内存大小。
      /// 
public class ModifyCacheInstanceClassExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}:modifyCacheInstanceClass")
    }
    
}
///  重置缓存Redis实例的密码，可为空
public class ResetCacheInstancePasswordExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}:resetCacheInstancePassword")
    }
    
}
///  查看缓存Redis实例的当前配置参数
public class DescribeInstanceConfigExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}/instanceConfig")
    }
    
}
///  修改缓存Redis实例的配置参数，支持部分参数修改
public class ModifyInstanceConfigExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}/instanceConfig")
    }
    
}
///  查询缓存Redis实例的备份结果（备份文件列表），可分页、可指定起止时间或备份任务ID
public class DescribeBackupsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}/backup")
    }
    
}
///  创建并执行缓存Redis实例的备份任务，只能为手动备份，可设置备份文件名称
public class CreateBackupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}/backup")
    }
    
}
///  查询缓存Redis实例的自动备份策略
public class DescribeBackupPolicyExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}/backupPolicy")
    }
    
}
///  修改缓存Redis实例的自动备份策略，可修改备份周期和备份时间
public class ModifyBackupPolicyExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}/backupPolicy")
    }
    
}
///  恢复缓存Redis实例的某次备份
public class RestoreInstanceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}/restore")
    }
    
}
///  获取缓存Redis实例的备份文件临时下载地址
public class DescribeDownloadUrlExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}/backup:describeDownloadUrl")
    }
    
}
///  查询Redis实例的集群内部信息
public class DescribeClusterInfoExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}/clusterInfo")
    }
    
}
///  获取缓存Redis实例的慢查询日志
public class DescribeSlowLogExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/cacheInstance/{cacheInstanceId}/slowLog")
    }
    
}
///  查询某区域下的缓存Redis实例规格列表
public class DescribeInstanceClassExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/instanceClass")
    }
    
}
