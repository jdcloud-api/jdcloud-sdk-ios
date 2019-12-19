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

   云数据库RDS
   目前RDS OpenAPI支持云数据库 MySQL、Percona、MariaDB、SQL Server、PostgreSQL

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class RdsJDCloudClient:NSObject,JDCloudClient{
    
    private final var rdsJDCloudClient:RdsJDCloudClient!


    public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        rdsJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "rds.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        rdsJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift/" + "0.0.1/" + "rds/" + "v1"
    
    public let serviceName: String = "rds"
    
    public let version: String = "v1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    public var httpRequestProtocol: String = "https"

    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    
    public func describeAuditDownloadURLAsync(request:DescribeAuditDownloadURLRequest,requestComplation:@escaping ExecuteResult<DescribeAuditDownloadURLResult>) throws {
        rdsJDCloudClient = self
        try DescribeAuditDownloadURLExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func clearBinlogsAsync(request:ClearBinlogsRequest,requestComplation:@escaping ExecuteResult<ClearBinlogsResult>) throws {
        rdsJDCloudClient = self
        try ClearBinlogsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeInterceptResultAsync(request:DescribeInterceptResultRequest,requestComplation:@escaping ExecuteResult<DescribeInterceptResultResult>) throws {
        rdsJDCloudClient = self
        try DescribeInterceptResultExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeBackupPolicyAsync(request:DescribeBackupPolicyRequest,requestComplation:@escaping ExecuteResult<DescribeBackupPolicyResult>) throws {
        rdsJDCloudClient = self
        try DescribeBackupPolicyExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeBackupDownloadURLAsync(request:DescribeBackupDownloadURLRequest,requestComplation:@escaping ExecuteResult<DescribeBackupDownloadURLResult>) throws {
        rdsJDCloudClient = self
        try DescribeBackupDownloadURLExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func copyParameterGroupAsync(request:CopyParameterGroupRequest,requestComplation:@escaping ExecuteResult<CopyParameterGroupResult>) throws {
        rdsJDCloudClient = self
        try CopyParameterGroupExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeBinlogsAsync(request:DescribeBinlogsRequest,requestComplation:@escaping ExecuteResult<DescribeBinlogsResult>) throws {
        rdsJDCloudClient = self
        try DescribeBinlogsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteInstanceAsync(request:DeleteInstanceRequest,requestComplation:@escaping ExecuteResult<DeleteInstanceResult>) throws {
        rdsJDCloudClient = self
        try DeleteInstanceExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func alterTableWithOnlineDDLAsync(request:AlterTableWithOnlineDDLRequest,requestComplation:@escaping ExecuteResult<AlterTableWithOnlineDDLResult>) throws {
        rdsJDCloudClient = self
        try AlterTableWithOnlineDDLExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createParameterGroupAsync(request:CreateParameterGroupRequest,requestComplation:@escaping ExecuteResult<CreateParameterGroupResult>) throws {
        rdsJDCloudClient = self
        try CreateParameterGroupExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeBackupsAsync(request:DescribeBackupsRequest,requestComplation:@escaping ExecuteResult<DescribeBackupsResult>) throws {
        rdsJDCloudClient = self
        try DescribeBackupsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyConnectionModeAsync(request:ModifyConnectionModeRequest,requestComplation:@escaping ExecuteResult<ModifyConnectionModeResult>) throws {
        rdsJDCloudClient = self
        try ModifyConnectionModeExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteAuditAsync(request:DeleteAuditRequest,requestComplation:@escaping ExecuteResult<DeleteAuditResult>) throws {
        rdsJDCloudClient = self
        try DeleteAuditExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createInstanceByTimeAsync(request:CreateInstanceByTimeRequest,requestComplation:@escaping ExecuteResult<CreateInstanceByTimeResult>) throws {
        rdsJDCloudClient = self
        try CreateInstanceByTimeExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func enableInternetAccessAsync(request:EnableInternetAccessRequest,requestComplation:@escaping ExecuteResult<EnableInternetAccessResult>) throws {
        rdsJDCloudClient = self
        try EnableInternetAccessExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAccountsAsync(request:DescribeAccountsRequest,requestComplation:@escaping ExecuteResult<DescribeAccountsResult>) throws {
        rdsJDCloudClient = self
        try DescribeAccountsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyParameterGroupAsync(request:ModifyParameterGroupRequest,requestComplation:@escaping ExecuteResult<ModifyParameterGroupResult>) throws {
        rdsJDCloudClient = self
        try ModifyParameterGroupExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeParameterModifyRecordsAsync(request:DescribeParameterModifyRecordsRequest,requestComplation:@escaping ExecuteResult<DescribeParameterModifyRecordsResult>) throws {
        rdsJDCloudClient = self
        try DescribeParameterModifyRecordsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeBinlogDownloadURLAsync(request:DescribeBinlogDownloadURLRequest,requestComplation:@escaping ExecuteResult<DescribeBinlogDownloadURLResult>) throws {
        rdsJDCloudClient = self
        try DescribeBinlogDownloadURLExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAuditFilesAsync(request:DescribeAuditFilesRequest,requestComplation:@escaping ExecuteResult<DescribeAuditFilesResult>) throws {
        rdsJDCloudClient = self
        try DescribeAuditFilesExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createAccountAsync(request:CreateAccountRequest,requestComplation:@escaping ExecuteResult<CreateAccountResult>) throws {
        rdsJDCloudClient = self
        try CreateAccountExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func grantPrivilegeAsync(request:GrantPrivilegeRequest,requestComplation:@escaping ExecuteResult<GrantPrivilegeResult>) throws {
        rdsJDCloudClient = self
        try GrantPrivilegeExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func revokePrivilegeAsync(request:RevokePrivilegeRequest,requestComplation:@escaping ExecuteResult<RevokePrivilegeResult>) throws {
        rdsJDCloudClient = self
        try RevokePrivilegeExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAzsAsync(request:DescribeAzsRequest,requestComplation:@escaping ExecuteResult<DescribeAzsResult>) throws {
        rdsJDCloudClient = self
        try DescribeAzsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func getUploadKeyAsync(request:GetUploadKeyRequest,requestComplation:@escaping ExecuteResult<GetUploadKeyResult>) throws {
        rdsJDCloudClient = self
        try GetUploadKeyExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func restoreDatabaseFromFileAsync(request:RestoreDatabaseFromFileRequest,requestComplation:@escaping ExecuteResult<RestoreDatabaseFromFileResult>) throws {
        rdsJDCloudClient = self
        try RestoreDatabaseFromFileExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeInstanceAttributesAsync(request:DescribeInstanceAttributesRequest,requestComplation:@escaping ExecuteResult<DescribeInstanceAttributesResult>) throws {
        rdsJDCloudClient = self
        try DescribeInstanceAttributesExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyInstanceSpecAsync(request:ModifyInstanceSpecRequest,requestComplation:@escaping ExecuteResult<ModifyInstanceSpecResult>) throws {
        rdsJDCloudClient = self
        try ModifyInstanceSpecExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAuditAsync(request:DescribeAuditRequest,requestComplation:@escaping ExecuteResult<DescribeAuditResult>) throws {
        rdsJDCloudClient = self
        try DescribeAuditExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeQueryPerformanceAsync(request:DescribeQueryPerformanceRequest,requestComplation:@escaping ExecuteResult<DescribeQueryPerformanceResult>) throws {
        rdsJDCloudClient = self
        try DescribeQueryPerformanceExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeParameterGroupAttachedInstancesAsync(request:DescribeParameterGroupAttachedInstancesRequest,requestComplation:@escaping ExecuteResult<DescribeParameterGroupAttachedInstancesResult>) throws {
        rdsJDCloudClient = self
        try DescribeParameterGroupAttachedInstancesExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeTdeAsync(request:DescribeTdeRequest,requestComplation:@escaping ExecuteResult<DescribeTdeResult>) throws {
        rdsJDCloudClient = self
        try DescribeTdeExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createBackupSynchronicityAsync(request:CreateBackupSynchronicityRequest,requestComplation:@escaping ExecuteResult<CreateBackupSynchronicityResult>) throws {
        rdsJDCloudClient = self
        try CreateBackupSynchronicityExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteImportFileAsync(request:DeleteImportFileRequest,requestComplation:@escaping ExecuteResult<DeleteImportFileResult>) throws {
        rdsJDCloudClient = self
        try DeleteImportFileExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteBackupSynchronicityAsync(request:DeleteBackupSynchronicityRequest,requestComplation:@escaping ExecuteResult<DeleteBackupSynchronicityResult>) throws {
        rdsJDCloudClient = self
        try DeleteBackupSynchronicityExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeSlowLogAttributesAsync(request:DescribeSlowLogAttributesRequest,requestComplation:@escaping ExecuteResult<DescribeSlowLogAttributesResult>) throws {
        rdsJDCloudClient = self
        try DescribeSlowLogAttributesExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyParameterGroupAttributeAsync(request:ModifyParameterGroupAttributeRequest,requestComplation:@escaping ExecuteResult<ModifyParameterGroupAttributeResult>) throws {
        rdsJDCloudClient = self
        try ModifyParameterGroupAttributeExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyAuditAsync(request:ModifyAuditRequest,requestComplation:@escaping ExecuteResult<ModifyAuditResult>) throws {
        rdsJDCloudClient = self
        try ModifyAuditExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAuditResultAsync(request:DescribeAuditResultRequest,requestComplation:@escaping ExecuteResult<DescribeAuditResultResult>) throws {
        rdsJDCloudClient = self
        try DescribeAuditResultExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeLatestRestoreTimeAsync(request:DescribeLatestRestoreTimeRequest,requestComplation:@escaping ExecuteResult<DescribeLatestRestoreTimeResult>) throws {
        rdsJDCloudClient = self
        try DescribeLatestRestoreTimeExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeErrorLogsAsync(request:DescribeErrorLogsRequest,requestComplation:@escaping ExecuteResult<DescribeErrorLogsResult>) throws {
        rdsJDCloudClient = self
        try DescribeErrorLogsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func enableTdeAsync(request:EnableTdeRequest,requestComplation:@escaping ExecuteResult<EnableTdeResult>) throws {
        rdsJDCloudClient = self
        try EnableTdeExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeSlowLogsAsync(request:DescribeSlowLogsRequest,requestComplation:@escaping ExecuteResult<DescribeSlowLogsResult>) throws {
        rdsJDCloudClient = self
        try DescribeSlowLogsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteDatabaseAsync(request:DeleteDatabaseRequest,requestComplation:@escaping ExecuteResult<DeleteDatabaseResult>) throws {
        rdsJDCloudClient = self
        try DeleteDatabaseExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeActiveQueryPerformanceAsync(request:DescribeActiveQueryPerformanceRequest,requestComplation:@escaping ExecuteResult<DescribeActiveQueryPerformanceResult>) throws {
        rdsJDCloudClient = self
        try DescribeActiveQueryPerformanceExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createInstanceFromBackupAsync(request:CreateInstanceFromBackupRequest,requestComplation:@escaping ExecuteResult<CreateInstanceFromBackupResult>) throws {
        rdsJDCloudClient = self
        try CreateInstanceFromBackupExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createSuperAccountAsync(request:CreateSuperAccountRequest,requestComplation:@escaping ExecuteResult<CreateSuperAccountResult>) throws {
        rdsJDCloudClient = self
        try CreateSuperAccountExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeParametersAsync(request:DescribeParametersRequest,requestComplation:@escaping ExecuteResult<DescribeParametersResult>) throws {
        rdsJDCloudClient = self
        try DescribeParametersExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyParametersAsync(request:ModifyParametersRequest,requestComplation:@escaping ExecuteResult<ModifyParametersResult>) throws {
        rdsJDCloudClient = self
        try ModifyParametersExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyWhiteListAsync(request:ModifyWhiteListRequest,requestComplation:@escaping ExecuteResult<ModifyWhiteListResult>) throws {
        rdsJDCloudClient = self
        try ModifyWhiteListExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func updateLogDownloadURLInternalAsync(request:UpdateLogDownloadURLInternalRequest,requestComplation:@escaping ExecuteResult<UpdateLogDownloadURLInternalResult>) throws {
        rdsJDCloudClient = self
        try UpdateLogDownloadURLInternalExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeLogDownloadURLAsync(request:DescribeLogDownloadURLRequest,requestComplation:@escaping ExecuteResult<DescribeLogDownloadURLResult>) throws {
        rdsJDCloudClient = self
        try DescribeLogDownloadURLExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func resetPasswordAsync(request:ResetPasswordRequest,requestComplation:@escaping ExecuteResult<ResetPasswordResult>) throws {
        rdsJDCloudClient = self
        try ResetPasswordExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func disableInterceptAsync(request:DisableInterceptRequest,requestComplation:@escaping ExecuteResult<DisableInterceptResult>) throws {
        rdsJDCloudClient = self
        try DisableInterceptExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func exchangeInstanceDnsAsync(request:ExchangeInstanceDnsRequest,requestComplation:@escaping ExecuteResult<ExchangeInstanceDnsResult>) throws {
        rdsJDCloudClient = self
        try ExchangeInstanceDnsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func disableAuditAsync(request:DisableAuditRequest,requestComplation:@escaping ExecuteResult<DisableAuditResult>) throws {
        rdsJDCloudClient = self
        try DisableAuditExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createDatabaseAsync(request:CreateDatabaseRequest,requestComplation:@escaping ExecuteResult<CreateDatabaseResult>) throws {
        rdsJDCloudClient = self
        try CreateDatabaseExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func enableInterceptAsync(request:EnableInterceptRequest,requestComplation:@escaping ExecuteResult<EnableInterceptResult>) throws {
        rdsJDCloudClient = self
        try EnableInterceptExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func setImportFileSharedAsync(request:SetImportFileSharedRequest,requestComplation:@escaping ExecuteResult<SetImportFileSharedResult>) throws {
        rdsJDCloudClient = self
        try SetImportFileSharedExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func rebootInstanceAsync(request:RebootInstanceRequest,requestComplation:@escaping ExecuteResult<RebootInstanceResult>) throws {
        rdsJDCloudClient = self
        try RebootInstanceExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeDatabasesAsync(request:DescribeDatabasesRequest,requestComplation:@escaping ExecuteResult<DescribeDatabasesResult>) throws {
        rdsJDCloudClient = self
        try DescribeDatabasesExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeIndexPerformanceAsync(request:DescribeIndexPerformanceRequest,requestComplation:@escaping ExecuteResult<DescribeIndexPerformanceResult>) throws {
        rdsJDCloudClient = self
        try DescribeIndexPerformanceExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createAuditAsync(request:CreateAuditRequest,requestComplation:@escaping ExecuteResult<CreateAuditResult>) throws {
        rdsJDCloudClient = self
        try CreateAuditExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyInstanceNameAsync(request:ModifyInstanceNameRequest,requestComplation:@escaping ExecuteResult<ModifyInstanceNameResult>) throws {
        rdsJDCloudClient = self
        try ModifyInstanceNameExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func enableAuditAsync(request:EnableAuditRequest,requestComplation:@escaping ExecuteResult<EnableAuditResult>) throws {
        rdsJDCloudClient = self
        try EnableAuditExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteParameterGroupAsync(request:DeleteParameterGroupRequest,requestComplation:@escaping ExecuteResult<DeleteParameterGroupResult>) throws {
        rdsJDCloudClient = self
        try DeleteParameterGroupExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createBackupAsync(request:CreateBackupRequest,requestComplation:@escaping ExecuteResult<CreateBackupResult>) throws {
        rdsJDCloudClient = self
        try CreateBackupExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createInstanceAsync(request:CreateInstanceRequest,requestComplation:@escaping ExecuteResult<CreateInstanceResult>) throws {
        rdsJDCloudClient = self
        try CreateInstanceExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyBackupPolicyAsync(request:ModifyBackupPolicyRequest,requestComplation:@escaping ExecuteResult<ModifyBackupPolicyResult>) throws {
        rdsJDCloudClient = self
        try ModifyBackupPolicyExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func restoreInstanceAsync(request:RestoreInstanceRequest,requestComplation:@escaping ExecuteResult<RestoreInstanceResult>) throws {
        rdsJDCloudClient = self
        try RestoreInstanceExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeLogsAsync(request:DescribeLogsRequest,requestComplation:@escaping ExecuteResult<DescribeLogsResult>) throws {
        rdsJDCloudClient = self
        try DescribeLogsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeImportFilesAsync(request:DescribeImportFilesRequest,requestComplation:@escaping ExecuteResult<DescribeImportFilesResult>) throws {
        rdsJDCloudClient = self
        try DescribeImportFilesExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func restoreDatabaseFromOSSAsync(request:RestoreDatabaseFromOSSRequest,requestComplation:@escaping ExecuteResult<RestoreDatabaseFromOSSResult>) throws {
        rdsJDCloudClient = self
        try RestoreDatabaseFromOSSExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeParameterGroupsAsync(request:DescribeParameterGroupsRequest,requestComplation:@escaping ExecuteResult<DescribeParameterGroupsResult>) throws {
        rdsJDCloudClient = self
        try DescribeParameterGroupsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteBackupAsync(request:DeleteBackupRequest,requestComplation:@escaping ExecuteResult<DeleteBackupResult>) throws {
        rdsJDCloudClient = self
        try DeleteBackupExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeBackupSynchronicitiesAsync(request:DescribeBackupSynchronicitiesRequest,requestComplation:@escaping ExecuteResult<DescribeBackupSynchronicitiesResult>) throws {
        rdsJDCloudClient = self
        try DescribeBackupSynchronicitiesExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeWhiteListAsync(request:DescribeWhiteListRequest,requestComplation:@escaping ExecuteResult<DescribeWhiteListResult>) throws {
        rdsJDCloudClient = self
        try DescribeWhiteListExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func restoreDatabaseFromBackupAsync(request:RestoreDatabaseFromBackupRequest,requestComplation:@escaping ExecuteResult<RestoreDatabaseFromBackupResult>) throws {
        rdsJDCloudClient = self
        try RestoreDatabaseFromBackupExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeParameterGroupParametersAsync(request:DescribeParameterGroupParametersRequest,requestComplation:@escaping ExecuteResult<DescribeParameterGroupParametersResult>) throws {
        rdsJDCloudClient = self
        try DescribeParameterGroupParametersExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func failoverInstanceAsync(request:FailoverInstanceRequest,requestComplation:@escaping ExecuteResult<FailoverInstanceResult>) throws {
        rdsJDCloudClient = self
        try FailoverInstanceExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func disableInternetAccessAsync(request:DisableInternetAccessRequest,requestComplation:@escaping ExecuteResult<DisableInternetAccessResult>) throws {
        rdsJDCloudClient = self
        try DisableInternetAccessExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeInstancesAsync(request:DescribeInstancesRequest,requestComplation:@escaping ExecuteResult<DescribeInstancesResult>) throws {
        rdsJDCloudClient = self
        try DescribeInstancesExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createROInstanceAsync(request:CreateROInstanceRequest,requestComplation:@escaping ExecuteResult<CreateROInstanceResult>) throws {
        rdsJDCloudClient = self
        try CreateROInstanceExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeAuditOptionsAsync(request:DescribeAuditOptionsRequest,requestComplation:@escaping ExecuteResult<DescribeAuditOptionsResult>) throws {
        rdsJDCloudClient = self
        try DescribeAuditOptionsExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func deleteAccountAsync(request:DeleteAccountRequest,requestComplation:@escaping ExecuteResult<DeleteAccountResult>) throws {
        rdsJDCloudClient = self
        try DeleteAccountExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func modifyParameterGroupParametersAsync(request:ModifyParameterGroupParametersRequest,requestComplation:@escaping ExecuteResult<ModifyParameterGroupParametersResult>) throws {
        rdsJDCloudClient = self
        try ModifyParameterGroupParametersExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func createInstanceByTimeInCrossRegionAsync(request:CreateInstanceByTimeInCrossRegionRequest,requestComplation:@escaping ExecuteResult<CreateInstanceByTimeInCrossRegionResult>) throws {
        rdsJDCloudClient = self
        try CreateInstanceByTimeInCrossRegionExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }

    
    public func describeInterceptAsync(request:DescribeInterceptRequest,requestComplation:@escaping ExecuteResult<DescribeInterceptResult>) throws {
        rdsJDCloudClient = self
        try DescribeInterceptExecutor(jdCloudClient: rdsJDCloudClient).executeAsync(request: request) { (statusCode,result,error,data) in
            requestComplation(statusCode,result,error,data)

        }
    }
    
}


public extension RdsJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "rds.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
