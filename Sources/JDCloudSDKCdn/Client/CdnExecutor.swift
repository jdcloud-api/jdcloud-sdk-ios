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

   统计查询类接口
   Openapi For JCLOUD cdn

   OpenAPI spec version: v1
   Contact: pid-cdn@jd.com

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  设置直播域名回源信息
public class SetLiveDomainBackSourceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/backSource")
    }
    
}
///  设置直播域名ip黑名单
public class SetLiveDomainIpBlackListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/ipBlackList")
    }
    
}
///  设置域名refer防盗链
public class SetLiveDomainReferExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/refer")
    }
    
}
///  开启或关闭ip黑名单
public class OperateLiveDomainIpBlackListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/ipBlackList:operate")
    }
    
}
///  设置直播域名回源host
public class SetLiveDomainBackSourceHostExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/backSourceHost")
    }
    
}
///  设置URL鉴权
public class SetLiveDomainAccessKeyExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/accesskeyConfig")
    }
    
}
///  设置转协议
public class SetProtocolConvertExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/protocolConvert")
    }
    
}
///  删除禁播流
public class DeleteForbiddenStreamExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/stream:unForbidden")
    }
    
}
///  查询用户推流域名app名/流名
public class QueryPushDomainORAppOrStreamExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/liveDomain/{domain}/stream:fuzzyQuery")
    }
    
}
///  设置是否开启过滤参数
public class OperateLiveDomainIgnoreQueryStringExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/ignoreQueryString")
    }
    
}
///  设置IP白名单
public class SetPushIpWhiteListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/pushIpWhiteList")
    }
    
}
///  设置推流中断超时时间
public class SetPublishNormalTimeoutExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/publishNormalTimeout")
    }
    
}
///  设置推流中断通知方式
public class SetStreamNotifyInfoExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/streamNotifyInfo")
    }
    
}
///  设置转推鉴权信息
public class SetForwardAuthenticationExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/forwardAuthentication")
    }
    
}
///  设置回源鉴权信息
public class SetOriginAuthenticationExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}/originAuthentication")
    }
    
}
///  创建直播域名
public class BatchCreateLiveDomainExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain:batchCreate")
    }
    
}
///  创建直播域名V2
public class CreateLiveDomainExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain")
    }
    
}
///  绑定推流域名
public class BindPublishDomainExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain},{publishDomain}:bindPublishDomain")
    }
    
}
///  设置转推域名
public class ModifyLiveDomainForwardCustomVhostExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveDomain/{domain}:putForwardCustomVhost")
    }
    
}
///  查询直播域名详情v1
public class QueryLiveDomainDetailExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/liveDomains/{domain}")
    }
    
}
///  查询直播域名详情v2
public class QueryLiveDomainDetailV2Executor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/liveDomain/{domain}")
    }
    
}
///  查询全部推流域名
public class DescribePublishDomainsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/liveDomain:publishDomains")
    }
    
}
///  查询关联域名
public class DescribebindedDomainsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/liveDomain/{domain}:queryBindedDomains")
    }
    
}
///  查询直播域名app列表
public class QueryLiveDomainAppsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/liveDomain/{domain}/app")
    }
    
}
///  查询加速域名接口
public class GetDomainListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain")
    }
    
}
///  通过标签查询加速域名接口
public class GetDomainListByFilterExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain:query")
    }
    
}
///  查询加速域名详情
public class GetDomainDetailExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}")
    }
    
}
///  创建点播加速域名
public class CreateDomainExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}")
    }
    
}
///  删除加速域名
public class DeleteDomainExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/domain/{domain}")
    }
    
}
///  启动加速域名
public class StartDomainExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}:start")
    }
    
}
///  停止加速域名
public class StopDomainExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}:stop")
    }
    
}
///  查询oss存储域名
public class QueryOssBucketsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/ossBuckets")
    }
    
}
///  创建点播加速域名
public class BatchCreateExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain:batchCreate")
    }
    
}
///  查询域名配置信息
public class QueryDomainConfigExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/config")
    }
    
}
///  查看证书列表
public class GetSslCertListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/sslCert")
    }
    
}
///  查看证书详情
public class GetSslCertDetailExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/sslCert/{sslCertId}")
    }
    
}
///  上传证书
public class UploadCertExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/sslCert:upload")
    }
    
}
///  根据taskIds查询刷新预热任务
public class QueryRefreshTaskByIdsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/task:queryByIds")
    }
    
}
///  根据taskId查询刷新预热任务
public class QueryRefreshTaskByIdExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/task/{taskId}")
    }
    
}
///  创建刷新预热回调任务
public class CreateRefreshTaskForCallbackExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/task:createForCallback")
    }
    
}
///  创建刷新预热回调任务
public class CreateRefreshTaskForCallbackV2Executor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/task:createForCallbackV2")
    }
    
}
///  查询刷新预热任务
public class QueryRefreshTaskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/task")
    }
    
}
///  创建刷新预热任务
public class CreateRefreshTaskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/task")
    }
    
}
///  查询域名组接口
public class QueryDomainGroupListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domainGroup")
    }
    
}
///  查询域名组详情
public class QueryDomainGroupDetailExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domainGroup/{id}")
    }
    
}
///  查询未分组域名
public class QueryDomainsNotInGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domainGroup:notInGroup")
    }
    
}
///  更新域名组
public class UpdateDomainGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domainGroup/{id}:update")
    }
    
}
///  创建域名组
public class CreateDomainGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domainGroup:create")
    }
    
}
///  批量删除域名组
public class BatchDeleteDomainGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domainGroup:batchDelete")
    }
    
}
///  预览证书
public class PreviewCertificateExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/certificate")
    }
    
}
///  查询默认http header头部参数列表
public class QueryDefaultHttpHeaderKeyExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/defaultHttpHeaderKey")
    }
    
}
///  查询ip黑名单
public class QueryIpBlackListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/ipBlackList")
    }
    
}
///  设置ip黑名单
public class SetIpBlackListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/ipBlackList")
    }
    
}
///  设置ip黑名单状态
public class OperateIpBlackListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/domain/{domain}/ipBlackList:operate")
    }
    
}
///  添加缓存规则
public class CreateCacheRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/cacheRule")
    }
    
}
///  修改缓存规则
public class UpdateCacheRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/domain/{domain}/cacheRule")
    }
    
}
///  删除缓存规则
public class DeleteCacheRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/domain/{domain}/cacheRule")
    }
    
}
///  查询http header头
public class QueryHttpHeaderExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/httpHeader")
    }
    
}
///  添加httpHeader
public class SetHttpHeaderExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/httpHeader")
    }
    
}
///  删除httpHeader
public class DeleteHttpHeaderExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/domain/{domain}/httpHeader")
    }
    
}
///  设置视频拖拽
public class SetVideoDraftExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/videoDraft")
    }
    
}
///  设置range参数
public class SetRangeExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/range")
    }
    
}
///  设置忽略参数
public class SetIgnoreQueryStringExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/ignoreQueryString")
    }
    
}
///  设置userAgent信息
public class QueryUserAgentExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/userAgentConfig")
    }
    
}
///  设置userAgent信息
public class SetUserAgentConfigExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/userAgentConfig")
    }
    
}
///  查询url鉴权
public class QueryAccesskeyConfigExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/accesskeyConfig")
    }
    
}
///  设置url鉴权
public class SetAccesskeyConfigExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/accesskeyConfig")
    }
    
}
///  设置域名refer
public class SetReferExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/refer")
    }
    
}
///  查询源站监控信息
public class QueryMonitorExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/monitor")
    }
    
}
///  设置源站监控信息
public class SetMonitorExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/monitor")
    }
    
}
///  停止源站监控
public class StopMonitorExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/monitor:stop")
    }
    
}
///  设置源站信息
public class SetSourceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/source")
    }
    
}
///  泛域名共享缓存
public class OperateShareCacheExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/shareCache")
    }
    
}
///  设置http协议
public class SetHttpTypeExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/httpType")
    }
    
}
///  查询回源302跳转信息
public class QueryFollowRedirectExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/followRedirect")
    }
    
}
///  设置回源302跳转
public class SetFollowRedirectExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/followRedirect")
    }
    
}
///  查询协议跟随回源
public class QueryFollowSourceProtocolExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/followSourceProtocol")
    }
    
}
///  设置协议跟随回源
public class SetFollowSourceProtocolExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/followSourceProtocol")
    }
    
}
///  更新域名配置
public class SetDomainConfigExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/config")
    }
    
}
///  查询网络防护层规则接口
public class QueryNetProtectionRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/netProtectionRules")
    }
    
}
///  设置网络防护层规则
public class SetNetProtectionRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/netProtectionRules")
    }
    
}
///  查询网络防护层规则
public class QueryNetProtectionRulesSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/netProtectionSwitch")
    }
    
}
///  设置网络防护层规则总开关
public class SetNetProtectionRulesSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/netProtectionSwitch")
    }
    
}
///  查询geo地域
public class QueryGeoAreasExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/netProtectionGeoAreas")
    }
    
}
///  攻击类型统计接口
public class QueryAttackTypeCountExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/netProtectionData:attackTypeCount")
    }
    
}
///  DDOS攻击报表接口
public class QueryDdosGraphExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/netProtectionData:ddosGraph")
    }
    
}
///  攻击记录查询
public class SearchAttackLogExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/netProtectionData:attackLog")
    }
    
}
///  设置线上计费方式
public class QueryOnlineBillingTypeExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/onlineBillingType")
    }
    
}
///  设置线上计费方式
public class SetOnlineBillingTypeExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/onlineBillingType")
    }
    
}
///  查询统计数据
public class QueryMixStatisticsDataExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/statistics")
    }
    
}
///  分地区及运营商查询统计数据
public class QueryMixStatisticsWithAreaDataExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/statistics:groupByArea")
    }
    
}
///  查询统计数据并进行汇总加和
public class QueryMixTrafficGroupSumExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/statistics:groupSum")
    }
    
}
///  查询统计数据
public class QueryStatisticsDataExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/vodStatistics")
    }
    
}
///  分地区及运营商查询统计数据
public class QueryStatisticsDataGroupByAreaExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/vodStatistics:groupByArea")
    }
    
}
///  查询统计数据并进行汇总加和
public class QueryStatisticsDataGroupSumExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/vodStatistics:groupSum")
    }
    
}
///  查询统计数据
public class QueryLiveStatisticsDataExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveStatistics")
    }
    
}
///  分地区及运营商查询统计数据
public class QueryLiveStatisticsAreaDataGroupByExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveStatistics:groupByArea")
    }
    
}
///  查询统计数据并进行汇总加和
public class QueryLiveTrafficGroupSumExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/liveStatistics:groupSum")
    }
    
}
///  查询TOP IP
public class QueryStatisticsTopIpExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/statistics:topIp")
    }
    
}
///  批量域名查询日志
public class QueryDomainsLogExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/logs")
    }
    
}
///  查询日志
public class QueryDomainLogExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/log")
    }
    
}
///  查询TOP Url
public class QueryStatisticsTopUrlExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/statistics:topUrl")
    }
    
}
///  查询WAF总开关
public class QueryWafSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/wafSwitch")
    }
    
}
///  设置WAF总开关
public class SetWafSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafSwitch")
    }
    
}
///  查询WAF总开关
public class QueryWafWhiteRuleSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/wafWhiteRuleSwitch")
    }
    
}
///  设置WAF白名单开关
public class SetWafWhiteRuleSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafWhiteRuleSwitch")
    }
    
}
///  查询WAF白名单规则列表
public class QuerywafWhiteRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/wafWhiteRules")
    }
    
}
///  新增一条白名单规则
public class CreateWafWhiteRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafWhiteRule")
    }
    
}
///  修改指定的白名单规则
public class UpdateWafWhiteRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafWhiteRule/{id}")
    }
    
}
///  启用WAF白名单
public class EnableWafWhiteRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafWhiteRule:enable")
    }
    
}
///  禁用WAF白名单
public class DisableWafWhiteRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafWhiteRule:disable")
    }
    
}
///  删除WAF白名单
public class DeleteWafWhiteRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/domain/{domain}/wafWhiteRule/{ids}")
    }
    
}
///  查询WAF黑名单开关
public class QueryWafBlackRuleSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/wafBlackRuleSwitch")
    }
    
}
///  设置WAF黑名单开关
public class SetWafBlackRuleSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafBlackRuleSwitch")
    }
    
}
///  查询WAF黑名单规则列表
public class QuerywafBlackRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/wafBlackRules")
    }
    
}
///  新增一条黑名单规则
public class CreateWafBlackRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafBlackRule")
    }
    
}
///  修改指定的黑名单规则
public class UpdateWafBlackRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafBlackRule/{id}")
    }
    
}
///  启用WAF黑名单
public class EnableWafBlackRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafBlackRule:enable")
    }
    
}
///  禁用WAF黑名单
public class DisableWafBlackRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafBlackRule:disable")
    }
    
}
///  删除WAF黑名单
public class DeleteWafBlackRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/domain/{domain}/wafBlackRule/{ids}")
    }
    
}
///  查询CC 防护开关
public class QueryCCProtectSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/ccProtectSwitch")
    }
    
}
///  设置CC 防护开关
public class SetCCProtectSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/ccProtectSwitch")
    }
    
}
///  查询CC防护规则列表
public class QueryCCProtectRulesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/ccProtectRules")
    }
    
}
///  新增一条CC防护规则
public class CreateCCProtectRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/ccProtectRule")
    }
    
}
///  修改CC防护规则
public class UpdateCCProtectRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/ccProtectRule/{id}")
    }
    
}
///  启用CC防护规则
public class EnableCCProtectRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/ccProtectRule:enable")
    }
    
}
///  禁用CC防护规则
public class DisableCCProtectRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/ccProtectRule:disable")
    }
    
}
///  删除ccProtectRule
public class DeleteCCProtectRuleExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/domain/{domain}/ccProtectRule/{ids}")
    }
    
}
///  查询web防护开关
public class QueryWebProtectSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/wafWebProtectSwitch")
    }
    
}
///  设置web防护开关
public class SetWebProtectSwitchExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafWebProtectSwitch")
    }
    
}
///  查询web防护开关
public class QueryWebProtectSettingsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/wafWebProtectSettings")
    }
    
}
///  设置web防护开关
public class UpdateWebProtectSettingsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/domain/{domain}/wafWebProtectSettings")
    }
    
}
///  查询waf地域信息
public class QueryWafRegionsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/wafRegions")
    }
    
}
///  查询waf ip黑名单配置状态
public class QueryIpBlackSettingStatusExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{domain}/wafIpBlackSettingStatus")
    }
    
}
///  获取所有上层节点的ip
public class GetAllUpperNodeIpListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/serviceNode:getAllUpperNodeIpList")
    }
    
}
///  查找地域运营商列表
public class QueryAreaIspListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/console:areaIspList")
    }
    
}
///  查询攻击来源
public class WafQueryPvForAreaAndIpExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/wafPvForAreaAndIp")
    }
    
}
///  查询总请求量与攻击请求量
public class WafQueryPvExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/wafPvStatistic")
    }
    
}
///  查询攻击记录详情
public class WafQueryAttackDetailsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/wafAttackDetails")
    }
    
}
///  查询域名配置状态
public class QueryDomainConfigStatusExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/domain/{taskId}/status")
    }
    
}
///  获取所有上层节点的ip
public class CheckWhetherIpBelongToJCloudExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/ip:whetherBelongToJCloud")
    }
    
}
///  创建直播预热任务
public class CreateLiveDomainPrefecthTaskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/task:createLivePrefetchTask")
    }
    
}
///  查询直播预热任务
public class QueryLivePrefetchTaskExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/task:queryLivePrefetchTask")
    }
    
}
///  带宽查询接口
public class QueryBandExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/bandQuery")
    }
    
}
///  分地域运营商带宽查询接口
public class QueryBandWithAreaExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/bandQuery:areaIsp")
    }
    
}
