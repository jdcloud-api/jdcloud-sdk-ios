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

   Availability-Monitoring-APIs
   可用性监控相关接口，提供创建、查询、修改、删除可用性监控任务等功能

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  获取站点监控任务信息
public class GetSiteMonitorExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/siteMonitor")
    }
    
}
///  创建站点监控任务
public class CreateSiteMonitorExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/siteMonitor")
    }
    
}
///  修改站点监控任务
public class UpdateSiteMonitorExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/siteMonitor")
    }
    
}
///  删除站点监控任务
public class DeleteSiteMonitorExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/siteMonitor")
    }
    
}
///  启停站点监控任务
public class EnableSiteMonitorExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/siteMonitor:switch")
    }
    
}
///  检测站点监控地址是否有效
public class ValidateSiteMonitorAddressExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/siteMonitorAddress:validate")
    }
    
}
///  获取站点监控数据
public class GetSiteMonitorDataPointsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/siteMonitorDataPoints")
    }
    
}
///  获取站点监控探针列表
public class GetSiteMonitorSourceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/siteMonitorSource")
    }
    
}
///  测试站点监控参数
public class TestSiteMonitorExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/testSiteMonitor")
    }
    
}
///  查询可用性监控agent状态
public class DescribeAgentStatusExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/amAgentStatus")
    }
    
}
///  查看可用性监控任务的监控数据
public class DescribeMetricDataAmExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/amMetricData")
    }
    
}
///  创建可用性监控任务
public class CreateProbeTaskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/probeTask")
    }
    
}
///  删除可用性监控任务
public class DeleteProbeTaskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/probeTask")
    }
    
}
///  查询可用性监控任务信息
public class DescribeProbeTaskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/probeTask/{probeTaskID}")
    }
    
}
///  修改可用性监控任务
public class UpdateProbeTaskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/probeTask/{probeTaskID}")
    }
    
}
///  查询可用性监控任务的指定探测源的异常探测历史
public class DescribeProbeHistoryExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/probeTask/{probeTaskID}/probe/{probeID}")
    }
    
}
///  查询可用性监控任务的探测源列表
public class DiscribeProbesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/probeTask/{probeTaskID}/probeList")
    }
    
}
///  启用、禁用可用性监控任务
public class ProbeTaskEnableExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/probeTask:switch")
    }
    
}
///  查询可用性监控任务列表
public class DescribeProbeTasksExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/probeTaskList")
    }
    
}
