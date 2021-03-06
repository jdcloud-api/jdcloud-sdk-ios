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

   分布式云物理服务器
   分布式云物理服务器相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class EdcpsJDCloudClient:NSObject,JDCloudClient{
    
    private final var edcpsJDCloudClient:EdcpsJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        edcpsJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "edcps.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        edcpsJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "edcps/" + "v1"
    
    public let serviceName: String = "edcps"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func modifyInstanceAsync(request:ModifyInstanceRequest,requestComplation:@escaping ExecuteResult<ModifyInstanceResult>) throws {
        edcpsJDCloudClient = self
        try ModifyInstanceExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func disassociateElasticIpAsync(request:DisassociateElasticIpRequest,requestComplation:@escaping ExecuteResult<DisassociateElasticIpResult>) throws {
        edcpsJDCloudClient = self
        try DisassociateElasticIpExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeElasticIpsAsync(request:DescribeElasticIpsRequest,requestComplation:@escaping ExecuteResult<DescribeElasticIpsResult>) throws {
        edcpsJDCloudClient = self
        try DescribeElasticIpsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeOSAsync(request:DescribeOSRequest,requestComplation:@escaping ExecuteResult<DescribeOSResult>) throws {
        edcpsJDCloudClient = self
        try DescribeOSExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeDeviceTypesAsync(request:DescribeDeviceTypesRequest,requestComplation:@escaping ExecuteResult<DescribeDeviceTypesResult>) throws {
        edcpsJDCloudClient = self
        try DescribeDeviceTypesExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteAliasIpAsync(request:DeleteAliasIpRequest,requestComplation:@escaping ExecuteResult<DeleteAliasIpResult>) throws {
        edcpsJDCloudClient = self
        try DeleteAliasIpExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyElasticIpBandwidthAsync(request:ModifyElasticIpBandwidthRequest,requestComplation:@escaping ExecuteResult<ModifyElasticIpBandwidthResult>) throws {
        edcpsJDCloudClient = self
        try ModifyElasticIpBandwidthExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeInstanceRaidAsync(request:DescribeInstanceRaidRequest,requestComplation:@escaping ExecuteResult<DescribeInstanceRaidResult>) throws {
        edcpsJDCloudClient = self
        try DescribeInstanceRaidExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteVpcAsync(request:DeleteVpcRequest,requestComplation:@escaping ExecuteResult<DeleteVpcResult>) throws {
        edcpsJDCloudClient = self
        try DeleteVpcExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeSubnetAsync(request:DescribeSubnetRequest,requestComplation:@escaping ExecuteResult<DescribeSubnetResult>) throws {
        edcpsJDCloudClient = self
        try DescribeSubnetExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAliasIpsAsync(request:DescribeAliasIpsRequest,requestComplation:@escaping ExecuteResult<DescribeAliasIpsResult>) throws {
        edcpsJDCloudClient = self
        try DescribeAliasIpsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeLineTypesAsync(request:DescribeLineTypesRequest,requestComplation:@escaping ExecuteResult<DescribeLineTypesResult>) throws {
        edcpsJDCloudClient = self
        try DescribeLineTypesExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeKeypairsAsync(request:DescribeKeypairsRequest,requestComplation:@escaping ExecuteResult<DescribeKeypairsResult>) throws {
        edcpsJDCloudClient = self
        try DescribeKeypairsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeKeypairAsync(request:DescribeKeypairRequest,requestComplation:@escaping ExecuteResult<DescribeKeypairResult>) throws {
        edcpsJDCloudClient = self
        try DescribeKeypairExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func associateElasticIpAsync(request:AssociateElasticIpRequest,requestComplation:@escaping ExecuteResult<AssociateElasticIpResult>) throws {
        edcpsJDCloudClient = self
        try AssociateElasticIpExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeSecondaryCidrsAsync(request:DescribeSecondaryCidrsRequest,requestComplation:@escaping ExecuteResult<DescribeSecondaryCidrsResult>) throws {
        edcpsJDCloudClient = self
        try DescribeSecondaryCidrsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createInstancesAsync(request:CreateInstancesRequest,requestComplation:@escaping ExecuteResult<CreateInstancesResult>) throws {
        edcpsJDCloudClient = self
        try CreateInstancesExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAvailablePrivateIpAsync(request:DescribeAvailablePrivateIpRequest,requestComplation:@escaping ExecuteResult<DescribeAvailablePrivateIpResult>) throws {
        edcpsJDCloudClient = self
        try DescribeAvailablePrivateIpExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func resetPasswordAsync(request:ResetPasswordRequest,requestComplation:@escaping ExecuteResult<ResetPasswordResult>) throws {
        edcpsJDCloudClient = self
        try ResetPasswordExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeElasticIpAsync(request:DescribeElasticIpRequest,requestComplation:@escaping ExecuteResult<DescribeElasticIpResult>) throws {
        edcpsJDCloudClient = self
        try DescribeElasticIpExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteKeypairsAsync(request:DeleteKeypairsRequest,requestComplation:@escaping ExecuteResult<DeleteKeypairsResult>) throws {
        edcpsJDCloudClient = self
        try DeleteKeypairsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func stopInstanceAsync(request:StopInstanceRequest,requestComplation:@escaping ExecuteResult<StopInstanceResult>) throws {
        edcpsJDCloudClient = self
        try StopInstanceExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeEdCPSRegionsAsync(request:DescribeEdCPSRegionsRequest,requestComplation:@escaping ExecuteResult<DescribeEdCPSRegionsResult>) throws {
        edcpsJDCloudClient = self
        try DescribeEdCPSRegionsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createKeypairsAsync(request:CreateKeypairsRequest,requestComplation:@escaping ExecuteResult<CreateKeypairsResult>) throws {
        edcpsJDCloudClient = self
        try CreateKeypairsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeVpcsAsync(request:DescribeVpcsRequest,requestComplation:@escaping ExecuteResult<DescribeVpcsResult>) throws {
        edcpsJDCloudClient = self
        try DescribeVpcsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeVpcAsync(request:DescribeVpcRequest,requestComplation:@escaping ExecuteResult<DescribeVpcResult>) throws {
        edcpsJDCloudClient = self
        try DescribeVpcExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeInstancesAsync(request:DescribeInstancesRequest,requestComplation:@escaping ExecuteResult<DescribeInstancesResult>) throws {
        edcpsJDCloudClient = self
        try DescribeInstancesExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifySubnetAsync(request:ModifySubnetRequest,requestComplation:@escaping ExecuteResult<ModifySubnetResult>) throws {
        edcpsJDCloudClient = self
        try ModifySubnetExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteInstanceAsync(request:DeleteInstanceRequest,requestComplation:@escaping ExecuteResult<DeleteInstanceResult>) throws {
        edcpsJDCloudClient = self
        try DeleteInstanceExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeInstanceStatusAsync(request:DescribeInstanceStatusRequest,requestComplation:@escaping ExecuteResult<DescribeInstanceStatusResult>) throws {
        edcpsJDCloudClient = self
        try DescribeInstanceStatusExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteelasticIpAsync(request:DeleteelasticIpRequest,requestComplation:@escaping ExecuteResult<DeleteelasticIpResult>) throws {
        edcpsJDCloudClient = self
        try DeleteelasticIpExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeSubnetsAsync(request:DescribeSubnetsRequest,requestComplation:@escaping ExecuteResult<DescribeSubnetsResult>) throws {
        edcpsJDCloudClient = self
        try DescribeSubnetsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func restartInstanceAsync(request:RestartInstanceRequest,requestComplation:@escaping ExecuteResult<RestartInstanceResult>) throws {
        edcpsJDCloudClient = self
        try RestartInstanceExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeElasticIpStockAsync(request:DescribeElasticIpStockRequest,requestComplation:@escaping ExecuteResult<DescribeElasticIpStockResult>) throws {
        edcpsJDCloudClient = self
        try DescribeElasticIpStockExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func importKeypairsAsync(request:ImportKeypairsRequest,requestComplation:@escaping ExecuteResult<ImportKeypairsResult>) throws {
        edcpsJDCloudClient = self
        try ImportKeypairsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func startInstanceAsync(request:StartInstanceRequest,requestComplation:@escaping ExecuteResult<StartInstanceResult>) throws {
        edcpsJDCloudClient = self
        try StartInstanceExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createSecondaryCidrAsync(request:CreateSecondaryCidrRequest,requestComplation:@escaping ExecuteResult<CreateSecondaryCidrResult>) throws {
        edcpsJDCloudClient = self
        try CreateSecondaryCidrExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeDeviceStockAsync(request:DescribeDeviceStockRequest,requestComplation:@escaping ExecuteResult<DescribeDeviceStockResult>) throws {
        edcpsJDCloudClient = self
        try DescribeDeviceStockExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeInstanceAsync(request:DescribeInstanceRequest,requestComplation:@escaping ExecuteResult<DescribeInstanceResult>) throws {
        edcpsJDCloudClient = self
        try DescribeInstanceExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeInstanceNameAsync(request:DescribeInstanceNameRequest,requestComplation:@escaping ExecuteResult<DescribeInstanceNameResult>) throws {
        edcpsJDCloudClient = self
        try DescribeInstanceNameExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createSubnetAsync(request:CreateSubnetRequest,requestComplation:@escaping ExecuteResult<CreateSubnetResult>) throws {
        edcpsJDCloudClient = self
        try CreateSubnetExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createAliasIpAsync(request:CreateAliasIpRequest,requestComplation:@escaping ExecuteResult<CreateAliasIpResult>) throws {
        edcpsJDCloudClient = self
        try CreateAliasIpExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyVpcAsync(request:ModifyVpcRequest,requestComplation:@escaping ExecuteResult<ModifyVpcResult>) throws {
        edcpsJDCloudClient = self
        try ModifyVpcExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeDeviceRaidsAsync(request:DescribeDeviceRaidsRequest,requestComplation:@escaping ExecuteResult<DescribeDeviceRaidsResult>) throws {
        edcpsJDCloudClient = self
        try DescribeDeviceRaidsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createVpcAsync(request:CreateVpcRequest,requestComplation:@escaping ExecuteResult<CreateVpcResult>) throws {
        edcpsJDCloudClient = self
        try CreateVpcExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func reinstallInstanceAsync(request:ReinstallInstanceRequest,requestComplation:@escaping ExecuteResult<ReinstallInstanceResult>) throws {
        edcpsJDCloudClient = self
        try ReinstallInstanceExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteSubnetAsync(request:DeleteSubnetRequest,requestComplation:@escaping ExecuteResult<DeleteSubnetResult>) throws {
        edcpsJDCloudClient = self
        try DeleteSubnetExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func applyElasticIpsAsync(request:ApplyElasticIpsRequest,requestComplation:@escaping ExecuteResult<ApplyElasticIpsResult>) throws {
        edcpsJDCloudClient = self
        try ApplyElasticIpsExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteSecondaryCidrAsync(request:DeleteSecondaryCidrRequest,requestComplation:@escaping ExecuteResult<DeleteSecondaryCidrResult>) throws {
        edcpsJDCloudClient = self
        try DeleteSecondaryCidrExecutor(jdCloudClient: edcpsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension EdcpsJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "edcps.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
