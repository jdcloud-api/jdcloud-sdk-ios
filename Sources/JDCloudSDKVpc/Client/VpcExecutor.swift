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

   网段
   网段相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  查询路由表列表
public class DescribeRouteTablesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/routeTables/")
    }
    
}
///  创建路由表
public class CreateRouteTableExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/routeTables/")
    }
    
}
///  查询路由表信息详情
public class DescribeRouteTableExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/routeTables/{routeTableId}")
    }
    
}
///  修改路由表属性
public class ModifyRouteTableExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/routeTables/{routeTableId}")
    }
    
}
///  删除路由表
public class DeleteRouteTableExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/routeTables/{routeTableId}")
    }
    
}
///  添加路由表规则
public class AddRouteTableRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/routeTables/{routeTableId}:addRouteTableRules")
    }
    
}
///  移除路由表规则
public class RemoveRouteTableRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/routeTables/{routeTableId}:removeRouteTableRules")
    }
    
}
///  修改路由表规则
public class ModifyRouteTableRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/routeTables/{routeTableId}:modifyRouteTableRules")
    }
    
}
///  路由表绑定子网接口
public class AssociateRouteTableExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/routeTables/{routeTableId}:associateRouteTable")
    }
    
}
///  给路由表解绑子网接口
public class DisassociateRouteTableExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/routeTables/{routeTableId}:disassociateRouteTable")
    }
    
}
///  查询配额信息
public class DescribeQuotaExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/quotas/")
    }
    
}
///  查询弹性网卡列表
public class DescribeNetworkInterfacesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/networkInterfaces/")
    }
    
}
///  创建网卡接口，只能创建辅助网卡
public class CreateNetworkInterfaceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkInterfaces/")
    }
    
}
///  查询弹性网卡信息详情
public class DescribeNetworkInterfaceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/networkInterfaces/{networkInterfaceId}")
    }
    
}
///  修改弹性网卡接口
public class ModifyNetworkInterfaceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/networkInterfaces/{networkInterfaceId}")
    }
    
}
///  删除弹性网卡接口
public class DeleteNetworkInterfaceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/networkInterfaces/{networkInterfaceId}")
    }
    
}
///  给网卡绑定弹性Ip接口
public class AssociateElasticIpExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkInterfaces/{networkInterfaceId}:associateElasticIp")
    }
    
}
///  给网卡解绑弹性Ip接口
public class DisassociateElasticIpExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkInterfaces/{networkInterfaceId}:disassociateElasticIp")
    }
    
}
///  给网卡分配secondaryIp接口
public class AssignSecondaryIpsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkInterfaces/{networkInterfaceId}:assignSecondaryIps")
    }
    
}
///  给网卡删除secondaryIp接口
public class UnassignSecondaryIpsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkInterfaces/{networkInterfaceId}:unassignSecondaryIps")
    }
    
}
///  查询子网列表
public class DescribeSubnetsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/subnets/")
    }
    
}
///  创建子网
public class CreateSubnetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/subnets/")
    }
    
}
///  查询子网信息详情
public class DescribeSubnetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/subnets/{subnetId}")
    }
    
}
///  修改子网接口
public class ModifySubnetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/subnets/{subnetId}")
    }
    
}
///  删除子网
public class DeleteSubnetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/subnets/{subnetId}")
    }
    
}
///  查询安全组列表
public class DescribeNetworkSecurityGroupsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/networkSecurityGroups/")
    }
    
}
///  创建安全组
public class CreateNetworkSecurityGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkSecurityGroups/")
    }
    
}
///  查询安全组信息详情
public class DescribeNetworkSecurityGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/networkSecurityGroups/{networkSecurityGroupId}")
    }
    
}
///  修改安全组属性
public class ModifyNetworkSecurityGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/networkSecurityGroups/{networkSecurityGroupId}")
    }
    
}
///  删除安全组
public class DeleteNetworkSecurityGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/networkSecurityGroups/{networkSecurityGroupId}")
    }
    
}
///  添加安全组规则
public class AddNetworkSecurityGroupRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkSecurityGroups/{networkSecurityGroupId}:addNetworkSecurityGroupRules")
    }
    
}
///  移除安全组规则
public class RemoveNetworkSecurityGroupRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkSecurityGroups/{networkSecurityGroupId}:removeNetworkSecurityGroupRules")
    }
    
}
///  修改安全组规则
public class ModifyNetworkSecurityGroupRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkSecurityGroups/{networkSecurityGroupId}:modifyNetworkSecurityGroupRules")
    }
    
}
///  查询Acl列表
public class DescribeNetworkAclsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/networkAcls/")
    }
    
}
///  创建networkAcl接口
public class CreateNetworkAclExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkAcls/")
    }
    
}
///  查询networkAcl资源详情
public class DescribeNetworkAclExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/networkAcls/{networkAclId}")
    }
    
}
///  修改networkAcl接口
public class ModifyNetworkAclExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/networkAcls/{networkAclId}")
    }
    
}
///  删除networkAcl接口
public class DeleteNetworkAclExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/networkAcls/{networkAclId}")
    }
    
}
///  给子网绑定networkAcl接口
public class AssociateNetworkAclExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkAcls/{networkAclId}:associateNetworkAcl")
    }
    
}
///  给子网解绑NetworkAcl接口
public class DisassociateNetworkAclExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkAcls/{networkAclId}:disassociateNetworkAcl")
    }
    
}
///  添加networkAcl规则接口
public class AddNetworkAclRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkAcls/{networkAclId}:addNetworkAclRules")
    }
    
}
///  移除networkAcl规则
public class RemoveNetworkAclRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkAcls/{networkAclId}:removeNetworkAclRules")
    }
    
}
///  修改networkAcl接口
public class ModifyNetworkAclRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/networkAcls/{networkAclId}:modifyNetworkAclRules")
    }
    
}
///  查询弹性ip列表
public class DescribeElasticIpsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/elasticIps/")
    }
    
}
///  创建一个或者多个弹性Ip
public class CreateElasticIpsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/elasticIps/")
    }
    
}
///  ElasticIp资源信息详情
public class DescribeElasticIpExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/elasticIps/{elasticIpId}")
    }
    
}
///  修改弹性IP
public class ModifyElasticIpExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/elasticIps/{elasticIpId}")
    }
    
}
///  删除弹性Ip
public class DeleteElasticIpExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/elasticIps/{elasticIpId}")
    }
    
}
///  查询VpcPeering资源列表
public class DescribeVpcPeeringsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/vpcPeerings/")
    }
    
}
///  创建VpcPeering接口
public class CreateVpcPeeringExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/vpcPeerings/")
    }
    
}
///  查询VpcPeering资源详情
public class DescribeVpcPeeringExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/vpcPeerings/{vpcPeeringId}")
    }
    
}
///  修改VpcPeering接口
public class ModifyVpcPeeringExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/vpcPeerings/{vpcPeeringId}")
    }
    
}
///  删除VpcPeering接口
public class DeleteVpcPeeringExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/vpcPeerings/{vpcPeeringId}")
    }
    
}
///  查询私有网络列表
public class DescribeVpcsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/vpcs/")
    }
    
}
///  创建私有网络
public class CreateVpcExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/vpcs/")
    }
    
}
///  查询Vpc信息详情
public class DescribeVpcExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/vpcs/{vpcId}")
    }
    
}
///  修改私有网络接口
public class ModifyVpcExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/vpcs/{vpcId}")
    }
    
}
///  删除私有网络
public class DeleteVpcExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/vpcs/{vpcId}")
    }
    
}
