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

   kubernetes 集群
   kubernetes 集群服务

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class KubernetesJDCloudClient:NSObject,JDCloudClient{
    
    private final var kubernetesJDCloudClient:KubernetesJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        kubernetesJDCloudClient = self
    }


    public override init() {

        if(GlobalConfig.credential == nil)
        {
            GlobalConfig.credential = Credential(accessKeyId: "",secretAccessKey: "")
        }
        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "kubernetes.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        kubernetesJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "kubernetes/" + "v1"
    
    public let serviceName: String = "kubernetes"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func deleteNodeGroupAsync(request:DeleteNodeGroupRequest,requestComplation:@escaping ExecuteResult<DeleteNodeGroupResult>) throws {
        kubernetesJDCloudClient = self
        try DeleteNodeGroupExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeNodeGroupsAsync(request:DescribeNodeGroupsRequest,requestComplation:@escaping ExecuteResult<DescribeNodeGroupsResult>) throws {
        kubernetesJDCloudClient = self
        try DescribeNodeGroupsExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeUpgradableNodeVersionsAsync(request:DescribeUpgradableNodeVersionsRequest,requestComplation:@escaping ExecuteResult<DescribeUpgradableNodeVersionsResult>) throws {
        kubernetesJDCloudClient = self
        try DescribeUpgradableNodeVersionsExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createNodeGroupAsync(request:CreateNodeGroupRequest,requestComplation:@escaping ExecuteResult<CreateNodeGroupResult>) throws {
        kubernetesJDCloudClient = self
        try CreateNodeGroupExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func setAddonsAsync(request:SetAddonsRequest,requestComplation:@escaping ExecuteResult<SetAddonsResult>) throws {
        kubernetesJDCloudClient = self
        try SetAddonsExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyNodeGroupAsync(request:ModifyNodeGroupRequest,requestComplation:@escaping ExecuteResult<ModifyNodeGroupResult>) throws {
        kubernetesJDCloudClient = self
        try ModifyNodeGroupExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteClusterAsync(request:DeleteClusterRequest,requestComplation:@escaping ExecuteResult<DeleteClusterResult>) throws {
        kubernetesJDCloudClient = self
        try DeleteClusterExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func setUserMetricsAsync(request:SetUserMetricsRequest,requestComplation:@escaping ExecuteResult<SetUserMetricsResult>) throws {
        kubernetesJDCloudClient = self
        try SetUserMetricsExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func setNodeGroupSizeAsync(request:SetNodeGroupSizeRequest,requestComplation:@escaping ExecuteResult<SetNodeGroupSizeResult>) throws {
        kubernetesJDCloudClient = self
        try SetNodeGroupSizeExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeServerConfigAsync(request:DescribeServerConfigRequest,requestComplation:@escaping ExecuteResult<DescribeServerConfigResult>) throws {
        kubernetesJDCloudClient = self
        try DescribeServerConfigExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func upgradeClusterAsync(request:UpgradeClusterRequest,requestComplation:@escaping ExecuteResult<UpgradeClusterResult>) throws {
        kubernetesJDCloudClient = self
        try UpgradeClusterExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeVersionsAsync(request:DescribeVersionsRequest,requestComplation:@escaping ExecuteResult<DescribeVersionsResult>) throws {
        kubernetesJDCloudClient = self
        try DescribeVersionsExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func setAutoRepairAsync(request:SetAutoRepairRequest,requestComplation:@escaping ExecuteResult<SetAutoRepairResult>) throws {
        kubernetesJDCloudClient = self
        try SetAutoRepairExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeQuotasAsync(request:DescribeQuotasRequest,requestComplation:@escaping ExecuteResult<DescribeQuotasResult>) throws {
        kubernetesJDCloudClient = self
        try DescribeQuotasExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeNodeGroupAsync(request:DescribeNodeGroupRequest,requestComplation:@escaping ExecuteResult<DescribeNodeGroupResult>) throws {
        kubernetesJDCloudClient = self
        try DescribeNodeGroupExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeProgressAsync(request:DescribeProgressRequest,requestComplation:@escaping ExecuteResult<DescribeProgressResult>) throws {
        kubernetesJDCloudClient = self
        try DescribeProgressExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeNodeVersionAsync(request:DescribeNodeVersionRequest,requestComplation:@escaping ExecuteResult<DescribeNodeVersionResult>) throws {
        kubernetesJDCloudClient = self
        try DescribeNodeVersionExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func rollbackNodeGroupUpgradeAsync(request:RollbackNodeGroupUpgradeRequest,requestComplation:@escaping ExecuteResult<RollbackNodeGroupUpgradeResult>) throws {
        kubernetesJDCloudClient = self
        try RollbackNodeGroupUpgradeExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func abortUpgradeAsync(request:AbortUpgradeRequest,requestComplation:@escaping ExecuteResult<AbortUpgradeResult>) throws {
        kubernetesJDCloudClient = self
        try AbortUpgradeExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeUpgradableMasterVersionsAsync(request:DescribeUpgradableMasterVersionsRequest,requestComplation:@escaping ExecuteResult<DescribeUpgradableMasterVersionsResult>) throws {
        kubernetesJDCloudClient = self
        try DescribeUpgradableMasterVersionsExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func setAutoUpgradeAsync(request:SetAutoUpgradeRequest,requestComplation:@escaping ExecuteResult<SetAutoUpgradeResult>) throws {
        kubernetesJDCloudClient = self
        try SetAutoUpgradeExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createClusterAsync(request:CreateClusterRequest,requestComplation:@escaping ExecuteResult<CreateClusterResult>) throws {
        kubernetesJDCloudClient = self
        try CreateClusterExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeClusterAsync(request:DescribeClusterRequest,requestComplation:@escaping ExecuteResult<DescribeClusterResult>) throws {
        kubernetesJDCloudClient = self
        try DescribeClusterExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyClusterAsync(request:ModifyClusterRequest,requestComplation:@escaping ExecuteResult<ModifyClusterResult>) throws {
        kubernetesJDCloudClient = self
        try ModifyClusterExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeClustersAsync(request:DescribeClustersRequest,requestComplation:@escaping ExecuteResult<DescribeClustersResult>) throws {
        kubernetesJDCloudClient = self
        try DescribeClustersExecutor(jdCloudClient: kubernetesJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension KubernetesJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "kubernetes.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
