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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  cluster 详情
@objc(Cluster)
public class Cluster:NSObject,Codable{
    /// 集群id
    var clusterId:String?
    /// 名称
    var name:String?
    /// 描述
    var descriptionValue:String?
    /// kubernetes的版本
    var version:String?
    /// 集群所在的az
    var azs:[String?]?
    /// 节点组列表
    var nodeGroups:[NodeGroup?]?
    /// k8s的cluster的cidr
    var clusterCidr:String?
    /// 认证信息
    var masterAuth:MasterAuth?
    /// 状态  [pending,running,reconciling（升级时的状态）, deleting, deleted, error]
    var clusterState:String?
    /// 状态变更原因
    var stateMessage:String?
    /// 更新时间
    var updateTime:String?
    /// 创建时间
    var createTime:String?
    /// 用户的AccessKey，插件调用open-api时的认证凭证
    var accessKey:String?
    /// BasicAuth
    var basicAuth:Bool?
    /// ClientCertificate
    var clientCertificate:Bool?
    /// 用户访问的ip
    var endpoint:String?
    /// endpoint的port
    var endpointPort:String?
    /// endpoint的dashboard port
    var dashboardPort:String?
    /// 用户是否启用集群自定义监控
    var userMetrics:Bool?



    public override init(){
            super.init()
    }

    enum ClusterCodingKeys: String, CodingKey {
        case clusterId
        case name
        case descriptionValue = "description"
        case version
        case azs
        case nodeGroups
        case clusterCidr
        case masterAuth
        case clusterState
        case stateMessage
        case updateTime
        case createTime
        case accessKey
        case basicAuth
        case clientCertificate
        case endpoint
        case endpointPort
        case dashboardPort
        case userMetrics
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ClusterCodingKeys.self)
        if decoderContainer.contains(.clusterId)
        {
            self.clusterId = try decoderContainer.decode(String?.self, forKey: .clusterId)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.version)
        {
            self.version = try decoderContainer.decode(String?.self, forKey: .version)
        }
        if decoderContainer.contains(.azs)
        {
            self.azs = try decoderContainer.decode([String?]?.self, forKey: .azs)
        }
        if decoderContainer.contains(.nodeGroups)
        {
            self.nodeGroups = try decoderContainer.decode([NodeGroup?]?.self, forKey: .nodeGroups)
        }
        if decoderContainer.contains(.clusterCidr)
        {
            self.clusterCidr = try decoderContainer.decode(String?.self, forKey: .clusterCidr)
        }
        if decoderContainer.contains(.masterAuth)
        {
            self.masterAuth = try decoderContainer.decode(MasterAuth?.self, forKey: .masterAuth)
        }
        if decoderContainer.contains(.clusterState)
        {
            self.clusterState = try decoderContainer.decode(String?.self, forKey: .clusterState)
        }
        if decoderContainer.contains(.stateMessage)
        {
            self.stateMessage = try decoderContainer.decode(String?.self, forKey: .stateMessage)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.accessKey)
        {
            self.accessKey = try decoderContainer.decode(String?.self, forKey: .accessKey)
        }
        if decoderContainer.contains(.basicAuth)
        {
            self.basicAuth = try decoderContainer.decode(Bool?.self, forKey: .basicAuth)
        }
        if decoderContainer.contains(.clientCertificate)
        {
            self.clientCertificate = try decoderContainer.decode(Bool?.self, forKey: .clientCertificate)
        }
        if decoderContainer.contains(.endpoint)
        {
            self.endpoint = try decoderContainer.decode(String?.self, forKey: .endpoint)
        }
        if decoderContainer.contains(.endpointPort)
        {
            self.endpointPort = try decoderContainer.decode(String?.self, forKey: .endpointPort)
        }
        if decoderContainer.contains(.dashboardPort)
        {
            self.dashboardPort = try decoderContainer.decode(String?.self, forKey: .dashboardPort)
        }
        if decoderContainer.contains(.userMetrics)
        {
            self.userMetrics = try decoderContainer.decode(Bool?.self, forKey: .userMetrics)
        }
    }
}
public extension Cluster{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ClusterCodingKeys.self)
         try encoderContainer.encode(clusterId, forKey: .clusterId)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(version, forKey: .version)
         try encoderContainer.encode(azs, forKey: .azs)
         try encoderContainer.encode(nodeGroups, forKey: .nodeGroups)
         try encoderContainer.encode(clusterCidr, forKey: .clusterCidr)
         try encoderContainer.encode(masterAuth, forKey: .masterAuth)
         try encoderContainer.encode(clusterState, forKey: .clusterState)
         try encoderContainer.encode(stateMessage, forKey: .stateMessage)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(accessKey, forKey: .accessKey)
         try encoderContainer.encode(basicAuth, forKey: .basicAuth)
         try encoderContainer.encode(clientCertificate, forKey: .clientCertificate)
         try encoderContainer.encode(endpoint, forKey: .endpoint)
         try encoderContainer.encode(endpointPort, forKey: .endpointPort)
         try encoderContainer.encode(dashboardPort, forKey: .dashboardPort)
         try encoderContainer.encode(userMetrics, forKey: .userMetrics)
    }
}