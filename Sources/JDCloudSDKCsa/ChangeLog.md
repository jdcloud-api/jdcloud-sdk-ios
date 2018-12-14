# 更新历史 #
API版本：2.0.46


|发布时间|版本号|更新|说明|
|---|---|---|---|
|2018-10-25|2.0.46|更新接口|* 更新接口订单查询，购买下单数量和月份为必传参数<br>*更新接口setWebsiteVulsRecorderIgnoreValue参数recorderIds为必传|
|2018-10-23|2.0.45|更新接口|* 更新接口queryAlarmEventsFileSandboxAnalysis返回数据内容,eventId参数为必传<br>*告警接口返回alarmEventId属性，威胁接口返回 threatEventId|
|2018-10-22|2.0.44|更新接口|更新接口/queryAssetList, 当用户查询企业版本或普通版本资产时，新增返回值serverCount|
|2018-10-18|2.0.43|更新接口|更新接口/queryAssetList, 新增请求参数eeVersion|
|2018-10-09|2.0.42|更新接口|* 更新接口新增返回属性aggtype, needEEtoView, dynamicReport。|
|2018-10-08|2.0.41|新增更新接口|* 新增接口queryWebsiteVulsTrend<br>* 更新接口queryWeakEventsCount，queryWeakEventsTrend，queryWeakEvents，新增查询参数severities<br>* 更新接口queryWebsiteVuls，queryWebsiteVulNotIgnoredRecorderCount，queryWebsiteVulsTrend，新增查询参数timeBegin，timeEnd，timeSpan，severities|
|2018-09-30|2.0.40|更新接口|* 更新接口预览配置更改为attackSeverities攻击等级， defenseSeverities防御等级。|
|2018-09-30|2.0.39|更新接口|* 更新接口支持查询属性severities，eventType。|
|2018-09-29|2.0.38|新增接口|* 新增接口queryOverviewConfig,setOverviewConfig<br>* 新增接口查询参数severities，和参数severity查询内容规则一样，同时支持多个severity条件。|
|2018-09-28|2.0.37|新增接口|* 新增接口queryOrderResult|
|2018-09-26|2.0.36|修复接口|* 修复接口queryBillingNewEnterpriseEditionPrice和newEnterpriseEditionOrder参数设置的bug|
|2018-09-25|2.0.35|新增接口|* 新增接口queryWebsiteVulNotIgnoredRecorderCount|
|2018-09-25|2.0.34|更新接口|* 更新接口setWebsiteVulsRecorderIgnoreValue参数recorderId为recorderIds，类型为数组<br>* 更新接口queryAlarmEventsFileSandboxAnalysis参数filemd5为eventId|
|2018-09-21|2.0.33|更新接口|* 更新数据模型AssetList，SingleAttackDesc，WebsiteVul<br>* 新增接口查询恶意/可疑文件沙箱行为分析|
|2018-09-19|2.0.32|新增模块|* 新增资产列表查询接口queryAssetList|
|2018-09-17|2.0.31|更新接口|* 更新接口queryAccountEEInfo，去掉返回属性isAutoRenew<br>* 更新接口queryWebsiteVul，去掉查询参数name和level|
|2018-09-11|2.0.30|新增模块|* 新增查看专用Web漏洞列表信息接口<br>* 新增查看专用Web漏洞记录列表接口<br>* 新增设置web漏洞记录ID状态接口|
|2018-09-06|2.0.29|新增模块|* 新增告警事件模块<br>* 新增威胁事件模块|
|2018-09-04|2.0.28|新增接口|* 查看企业版相关信息queryAccountEEInfo<br>* 查询新购企业版价格queryBillingNewEnterpriseEditionPrice<br>* 查询升级企业版价格queryBillingUpgradeEnterpriseEditionPrice<br>* 下单新购企业版本newEnterpriseEditionOrder<br>* 下单升级企业版本upgradeEnterpriseEditionOrder|
|2018-07-24|2.0.27|更新接口|* querySingleAttacksDDosFlowRates接口新增返回属性timeRanges|
|2018-07-24|2.0.26|更新接口|* 新增batchUpdateSingleAttacksStatus接口<br>* 新增batchUpdateTargetAttacksStatus接口|
|2018-07-24|2.0.25|更新接口|* 修改查询DDos流量数据接口querySingleAttacksDDosFlowRates，返回值中增加IP四层清洗阈值|
|2018-07-11|2.0.24|更新接口|* 更新NotifyService version为v2|
|2018-07-11|2.0.23|更新接口|* 调整querySingleAttacksPcapUrl请求参数|
|2018-07-06|2.0.22|更新接口|* 调整querWeakEvents为queryWeakEvents<br>* 调整querWeakEventsFixedIps为queryWeakEventsFixedIps|
|2018-07-05|2.0.21|更新接口|* 调整updateAssetResource为syncAssetResource,并改为post方式|
|2018-07-05|2.0.20|更新接口|* 调整updateSingleAttackStatus,updateAssetNidsStatus和updateAssetResource的返回值|
|2018-07-05|2.0.19|更新接口|* queryAssetFloatingIps查看资产公网Ip列表接口新增查询条件serverId<br>* queryAssetFixedIpsquery查看资产内网Ip列表详情新增返回值serverId|
|2018-07-04|2.0.18|更新接口|* querySingleAttacks攻击新增返回属性trojanName, downloadFile<br>* queryTargetAttacks，queryTargetAttacksNameCountStat新增查询参数serverId, serverName|
|2018-07-03|2.0.17|更新接口|* 查看资产公网Ip列表接口添加资产名称做为查询条件|
|2018-07-02|2.0.16|更新新增接口|* querySingleAttacksNameCountStat,querySingleAttacks接口新增参数serverId, serverName<br>* 新增queryStatisticsTopRiskServerInfoCount接口|
|2018-07-02|2.0.15|更新接口|* 更新querySingleAttacksDDosFlowRates接口|
|2018-06-22|2.0.14|更新新增接口|* 修改攻击取证接口queryPcapUrl到querySingleAttacksPcapUrl<br>* 新增querySingleAttacksDDosFlowRates接口|
|2018-06-22|2.0.13|更新接口|* 修改攻击取证接口queryPcapUrl，将pacpId从path中移除|
|2018-06-22|2.0.12|新增接口|* 新增攻击取证接口queryPcapUrl|
|2018-06-16|2.0.11|更新接口|* 更新setNotifyRule接口参数<br>* 调整属性playload位置|
|2018-06-16|2.0.10|更新接口|* 复fixWeakEventsLeaks接口url的bug，新增返回属性message|
|2018-06-14|2.0.9|更新接口|* querWeakEventsFixedIps接口返回属性新增serverId<br>* 定向攻击接口返回属性去掉riskRank<br>* queryTargetAttacksNameCountStat接口更新描述|
|2018-06-14|2.0.8|新增接口|* 新增定向攻击相关接口：queryTargetAttacks，queryTargetAttack，updateTargetAttackStatus，queryTargetAttacksNameCountStat|
|2018-06-14|2.0.7|新增接口|* 去掉多余重复参数<br>* 新增querWeakEvents, querWeakEventsFixedIps, fixWeakEventsLeaks接口|
|2018-06-13|2.0.6|更新描述|* 修改Yaml文件资产相关接口的描述|
|2018-06-12|2.0.5|新增接口|* 新增告警接口queryNotifyRuleContacts,queryNotifyRules,setNotifyRule<br>* 单一攻击详情返回增加属性payloadPrintable|
|2018-06-06|2.0.4|更新接口|* 更新querySingleAttacks接口返回数据结构<br>* 新增updateAssetResource接口<br>* 新增querySingleAttack接口 <br>* 更新queryStatisticsTopCount接口查询参数|
|2018-06-06|2.0.3|更新模块名称|* ids模块重新命名为csa|
|2018-06-06|2.0.2|更新新增接口|* attackType参数全部重命名为jdClass<br>* 新增接口"/singleAttacks:queryNameCountStat"|
|2018-06-06|2.0.1|更新接口|* 修改AssetManageService服务接口的url，改回驼峰命名形式，并调整assetFloatingIps的请求参数|
|2018-06-01|2.0.0|更新接口|* AssetFixedIpList更新属性fixedIps为fixedIp. assetFloatingIpList更新属性fixedIp为fixedIpCount<br>* AssetManageService服务接口"/assetsFloatingIps"改为"/assetfloatingip"<br>* 接口"/assetsFixedIps"改为"/assetfixedip"<br>* 接口"/assets:updateNcsaStatus"改为"/asset:changeNcsaStatus"<br>* 参数 timeBegin ，timeEnd 统一传时间戳<br>* 更新querySingleAttacks接口参数<br>* 去掉接口"/singleAttacks:queryNameCountStat"|
|2018-06-01|0.2.0|升级版本|* 版本0.1.x的接口不支持。包括:queryTodayAttackLogCount,queryAttacks,queryAttackLineTrend,<br> queryAttackPieTypeData,queryTopAttackedHost,queryTopZombieHost,<br> isAuthorizationGiven,cancelAuthorization,confirmAuthorization,queryNoticeMessages,<br> deleteNoticeMessage,syncIpProperties,queryIpPropertiesCount,queryMornitedIp,<br> queryMornitedIpPropertiesStatus,updateIpPropertiesStatus。<br>*新增接口:查看资产公网Ip列表接口 queryAssetsFloatingIps,查看资产内网Ip列表详情接口 queryAssetsFixedIps,<br> 态势感知开关接口 updateAssetsNcsaStatus,查询安全引擎启动覆盖率接口 queryDefensesStartupCoverage,<br> 查询安全引擎启动覆盖率对比接口 queryDefensesCoverageTrend,查询单一攻击事件数接口 querySingleAttacksCount,<br> 查询单一攻击事件数对比接口 querySingleAttacksTrend,查询单一攻击事件安全事件统计(公网IP/内网IP查询)接口 querySingleAttacksNameCountStat,<br> 查询单一攻击事件安全事件列表接口 querySingleAttacks,修改单一攻击事件安全事件处理状态接口 updateSingleAttackStatus,<br> 查询安全事件发展趋势接口 queryStatisticsEventTrend,查询TopN计数接口 queryStatisticsTopCount,<br> 查询定向攻击事件数接口 queryTargetAttacksCount,查询定向攻击事件数对比接口 queryTargetAttacksTrend,<br> 查询弱点事件数接口 queryWeakEventsCount|
|2018-05-23|0.1.4|去掉接口|* "/attacks:enableExportLog"，"/attacks:exportExcelLog"，网关目前不支持文件下载。|
|2018-05-23|0.1.3|更新接口|* "/attacks:enableExportLog"为内部接口<br>* "/attacks:exportExcelLog"为内部接口|
|2018-05-23|0.1.2|更新接口|* "/attacks:exportExcelLog"， 方法为GET，导出攻击日志excel文件可以在浏览器下载|
|2018-05-18|0.1.1|更新接口|* "/noticeMessages/{noticeMessageId}"， 去掉timespan参数<br>* "/ipProperties:queryCount"，返回结果属性totalCounte重命名为totalCount<br>* "/ipProperties:queryMornitedIp"，新增返回结果属性totalCounte<br>* "/ipProperties:queryMornitedStatus"，请求参数statee重命名为status|
|2018-05-11|0.1.0|初始版本|* 日志相关信息接口<br>* 授权相关信息接口<br>* 通知公告相关信息接口<br>* 资产管理相关信息接口|
