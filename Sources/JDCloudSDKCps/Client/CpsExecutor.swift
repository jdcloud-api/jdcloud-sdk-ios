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

   云物理服务器
   云物理服务器地域操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  查询路由表详情
public class QueryRouteTableExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/routeTables/{routeTableId}")
    }
    
}
///  查询路由表列表
public class QueryRouteTablesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/routeTables")
    }
    
}
///  查询监听器
public class QueryListenersExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/listeners")
    }
    
}
///  创建监听器
public class CreateListenerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/listeners")
    }
    
}
///  修改监听器
public class ModifyListenerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/listeners/{listenerId}:modifylistenerAttributes")
    }
    
}
///  查询监听器详情
public class QueryListenerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/listeners/{listenerId}")
    }
    
}
///  删除监听器
public class DeleteListenerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/listeners/{listenerId}")
    }
    
}
///  开启监听器
public class StartListenerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/listeners/{listenerId}:startListener")
    }
    
}
///  关闭监听器
public class StopListenerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/listeners/{listenerId}:stopListener")
    }
    
}
///  查询后端服务器列表
public class QueryServersExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/serverGroups/{serverGroupId}/servers")
    }
    
}
///  添加后端服务器
public class AddServersExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/serverGroups/{serverGroupId}/servers")
    }
    
}
///  修改后端服务器
public class ModifyServerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/serverGroups/{serverGroupId}/servers/{serverId}")
    }
    
}
///  移除后端服务器
public class RemoveServerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/serverGroups/{serverGroupId}/servers/{serverId}")
    }
    
}
///  查询密钥对列表
public class QueryKeypairsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/keypairs")
    }
    
}
///  创建密钥对
public class CreateKeypairsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/keypairs")
    }
    
}
///  导入密钥对
public class ImportKeypairsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/keypairs:import")
    }
    
}
///  查询密钥对详情
public class QueryKeypairExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/keypairs/{keypairId}")
    }
    
}
///  删除密钥对
public class DeleteKeypairsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/keypairs/{keypairId}")
    }
    
}
///  查询基础网络子网
public class DescribeBasicSubnetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/subnet")
    }
    
}
///  查询子网列表
public class DescribeSubnetsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/subnets")
    }
    
}
///  创建子网
public class CreateSubnetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/subnets")
    }
    
}
///  查询子网详情
public class DescribeSubnetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/subnets/{subnetId}")
    }
    
}
///  修改子网
public class ModifySubnetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/subnets/{subnetId}")
    }
    
}
///  删除子网
public class DeleteSubnetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/subnets/{subnetId}")
    }
    
}
///  查询弹性公网IP列表&lt;br/&gt;
      /// 支持分页查询，默认每页20条&lt;br/&gt;
      /// 
public class DescribeElasticIpsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/elasticIps")
    }
    
}
///  申请弹性公网IP
      /// 
public class ApplyElasticIpsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/elasticIps")
    }
    
}
///  查询弹性公网IP详情
public class DescribeElasticIpExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/elasticIps/{elasticIpId}")
    }
    
}
///  修改弹性公网IP带宽
      /// 
public class ModifyElasticIpBandwidthExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/elasticIps/{elasticIpId}:modifyElasticIpBandwidth")
    }
    
}
///  查询虚拟服务器组列表
public class QueryServerGroupsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/serverGroups")
    }
    
}
///  创建虚拟服务器组
public class CreateServerGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/serverGroups")
    }
    
}
///  查询虚拟服务器组
public class QueryServerGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/serverGroups/{serverGroupId}")
    }
    
}
///  修改虚拟服务器组
public class ModifyServerGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/serverGroups/{serverGroupId}")
    }
    
}
///  删除虚拟服务器组
public class DeleteServerGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/serverGroups/{serverGroupId}")
    }
    
}
///  查询云物理服务器实例类型
public class DescribeDeviceTypesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/deviceTypes")
    }
    
}
///  查询云物理服务器支持的操作系统
public class DescribeOSExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/os")
    }
    
}
///  查询某种实例类型的云物理服务器支持的RAID类型，可查询系统盘RAID类型和数据盘RAID类型
public class DescribeDeviceRaidsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/raids")
    }
    
}
///  查询单台云物理服务器详细信息
public class DescribeInstanceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/instances/{instanceId}")
    }
    
}
///  批量查询云物理服务器详细信息&lt;br/&gt;
      /// 支持分页查询，默认每页20条&lt;br/&gt;
      /// 
public class DescribeInstancesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/instances")
    }
    
}
///  创建一台或多台指定配置的云物理服务器&lt;br/&gt;
      /// - 地域与可用区&lt;br/&gt;
      ///   - 调用接口（describeRegiones）获取云物理服务器支持的地域与可用区&lt;br/&gt;
      /// - 实例类型&lt;br/&gt;
      ///   - 调用接口（describeDeviceTypes）获取物理实例类型列表&lt;br/&gt;
      ///   - 不能使用已下线、或已售馨的实例类型&lt;br/&gt;
      /// - 操作系统&lt;br/&gt;
      ///   - 可调用接口（describeOS）获取云物理服务器支持的操作系统列表&lt;br/&gt;
      /// - 存储&lt;br/&gt;
      ///   - 数据盘多种RAID可选，可调用接口（describeDeviceRaids）获取服务器支持的RAID列表&lt;br/&gt;
      /// - 网络&lt;br/&gt;
      ///   - 网络类型目前支持basic、vpc&lt;br/&gt;
      ///   - 线路目前只支持bgp&lt;br/&gt;
      ///   - 支持不启用外网，如果启用外网，带宽范围[1,200] 单位Mbps&lt;br/&gt;
      /// - 其他&lt;br/&gt;
      ///   - 购买时长，可按年或月购买：月取值范围[1,9], 年取值范围[1,3]&lt;br/&gt;
      ///   - 密码设置参考公共参数规范&lt;br/&gt;
      /// 
public class CreateInstancesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/instances")
    }
    
}
///  查询云物理服务器名称
public class DescribeInstanceNameExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/instances/{instanceId}:describeInstanceName")
    }
    
}
///  修改云物理服务器部分信息，包括名称、描述
public class ModifyInstanceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/instances/{instanceId}:modifyInstance")
    }
    
}
///  查询单个云物理服务器已安装的RAID信息，包括系统盘RAID信息和数据盘RAID信息
public class DescribeInstanceRaidExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/instances/{instanceId}:describeInstanceRaid")
    }
    
}
///  查询单个云物理服务器硬件监控信息
public class DescribeInstanceStatusExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/instances/{instanceId}:describeInstanceStatus")
    }
    
}
///  重启单台云物理服务器，只能重启running状态的服务器 [MFA enabled]
public class RestartInstanceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/instances/{instanceId}:restartInstance")
    }
    
}
///  对单台云物理服务器执行关机操作，只能停止running状态的服务器 [MFA enabled]
public class StopInstanceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/instances/{instanceId}:stopInstance")
    }
    
}
///  对单台云物理服务器执行开机操作，只能启动stopped状态的服务器
public class StartInstanceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/instances/{instanceId}:startInstance")
    }
    
}
///  重装云物理服务器，只能重装stopped状态的服务器&lt;br/&gt;
      /// - 可调用接口（describeOS）获取云物理服务器支持的操作系统列表
      ///  [MFA enabled]
public class ReinstallInstanceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/instances/{instanceId}:reinstallInstance")
    }
    
}
///  升级云物理服务器外网带宽，只能操作running或者stopped状态的服务器&lt;br/&gt;
      /// - 不支持未启用外网的服务器升级带宽
      /// - 外网带宽不支持降级
      /// 
public class ModifyBandwidthExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/instances/{instanceId}:modifyBandwidth")
    }
    
}
///  绑定弹性公网IP
      /// 
public class AssociateElasticIpExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/instances/{instanceId}:associateElasticIp")
    }
    
}
///  解绑弹性公网IP
      /// 
public class DisassociateElasticIpExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/instances/{instanceId}:disassociateElasticIp")
    }
    
}
///  重置云物理服务器密码
      /// 
public class ResetPasswordExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/instances/{instanceId}:resetPassword")
    }
    
}
///  查询云物理服务器监控信息
public class DescribeInstanceMonitorInfoExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/instances/{instanceId}/monitor")
    }
    
}
///  查询负载均衡实例列表
public class QueryLoadBalancersExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/slbs")
    }
    
}
///  创建负载均衡实例
public class CreateLoadBalancerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/slbs")
    }
    
}
///  修改负载均衡实例
public class ModifyLoadBalancerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/slbs/{loadBalancerId}:modifyLoadBalancerAttributes")
    }
    
}
///  查询负载均衡实例详情
public class QueryLoadBalancerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/slbs/{loadBalancerId}")
    }
    
}
///  开启负载均衡实例
public class StartLoadBalancerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/slbs/{loadBalancerId}:startLoadBalancer")
    }
    
}
///  关闭负载均衡实例
public class StopLoadBalancerExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/slbs/{loadBalancerId}:stopLoadBalancer")
    }
    
}
///  绑定弹性公网IP
public class AssociateElasticIpLBExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/slbs/{loadBalancerId}:associateElasticIp")
    }
    
}
///  解绑弹性公网IP
public class DisassociateElasticIpLBExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/slbs/{loadBalancerId}:disassociateElasticIp")
    }
    
}
///  查询私有网络详情
public class DescribeVpcExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/vpcs/{vpcId}")
    }
    
}
///  修改私有网络
      /// 
public class ModifyVpcExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/vpcs/{vpcId}")
    }
    
}
///  删除私有网络
      /// 
public class DeleteVpcExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/vpcs/{vpcId}")
    }
    
}
///  查询私有网络列表
public class DescribeVpcsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/vpcs")
    }
    
}
///  创建私有网络
public class CreateVpcExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/vpcs")
    }
    
}
///  查询云物理服务器地域列表
public class DescribeRegionesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions")
    }
    
}
///  查询负载均衡地域列表
public class QueryCPSLBRegionsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/cpslbRegions")
    }
    
}