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

   用户
   云部署pin相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
    import JDCloudSDKCommon

public class DescribeAppsResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeAppsResult?;

    enum DescribeAppsResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeAppsResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeAppsResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeAppsResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAppsResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 查询一个应用的信息 
public class DescribeAppResult:NSObject,JdCloudResult
{
    /// App
    var app:App?



    public override init(){
        super.init()
    }

    enum DescribeAppResultCodingKeys: String, CodingKey {
        case app
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeAppResultCodingKeys.self)
        if decoderContainer.contains(.app)
        {
            self.app = try decoderContainer.decode(App?.self, forKey: .app)
        }
    }
}
public extension DescribeAppResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAppResultCodingKeys.self)
        try encoderContainer.encode(app, forKey: .app)
    }
}

///  批量查询应用的信息，此接口支持分页查询，默认每页20条
public class DescribeAppsRequest:JdCloudRequest
{
    /// 页码；默认为1
    var pageNumber:Int?

    /// 分页大小；默认为20；取值范围[10, 100]
    var pageSize:Int?

    /// appId - 应用ID，精确匹配
      /// appName - 应用名，精确匹配
      /// platform - 部署平台，精确匹配
      /// 
    var filters:[Filter?]?




    enum DescribeAppsRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAppsRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(filters, forKey: .filters)

    }
}


///  查询一个应用的信息
public class DescribeAppRequest:JdCloudRequest
{
    /// App Id
    var appId:String


    public init(regionId: String,appId:String){
        self.appId = appId
        super.init(regionId: regionId)
    }


    enum DescribeAppRequestRequestCodingKeys: String, CodingKey {
        case appId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAppRequestRequestCodingKeys.self)
        try encoderContainer.encode(appId, forKey: .appId)

    }
}

/// 批量查询应用的信息，此接口支持分页查询，默认每页20条 
public class DescribeAppsResult:NSObject,JdCloudResult
{
    /// Apps
    var apps:[App?]?

    /// TotalCount
    var totalCount:Double?



    public override init(){
        super.init()
    }

    enum DescribeAppsResultCodingKeys: String, CodingKey {
        case apps
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeAppsResultCodingKeys.self)
        if decoderContainer.contains(.apps)
        {
            self.apps = try decoderContainer.decode([App?]?.self, forKey: .apps)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Double?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeAppsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAppsResultCodingKeys.self)
        try encoderContainer.encode(apps, forKey: .apps)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
public class DescribeAppResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeAppResult?;

    enum DescribeAppResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeAppResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeAppResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeAppResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAppResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    

///  查询一个部署任务详情
public class DescribeDeployRequest:JdCloudRequest
{
    /// Deploy Id
    var deployId:String


    public init(regionId: String,deployId:String){
        self.deployId = deployId
        super.init(regionId: regionId)
    }


    enum DescribeDeployRequestRequestCodingKeys: String, CodingKey {
        case deployId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDeployRequestRequestCodingKeys.self)
        try encoderContainer.encode(deployId, forKey: .deployId)

    }
}

public class DescribeDeployResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeDeployResult?;

    enum DescribeDeployResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeDeployResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeDeployResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeDeployResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDeployResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 查询一个部署任务详情 
public class DescribeDeployResult:NSObject,JdCloudResult
{
    /// Deploy
    var deploy:Deploy?



    public override init(){
        super.init()
    }

    enum DescribeDeployResultCodingKeys: String, CodingKey {
        case deploy
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeDeployResultCodingKeys.self)
        if decoderContainer.contains(.deploy)
        {
            self.deploy = try decoderContainer.decode(Deploy?.self, forKey: .deploy)
        }
    }
}
public extension DescribeDeployResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDeployResultCodingKeys.self)
        try encoderContainer.encode(deploy, forKey: .deploy)
    }
}
public class CreateDeployResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:CreateDeployResult?;

    enum CreateDeployResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateDeployResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(CreateDeployResult?.self, forKey: .result) ?? nil
    }
}

public extension CreateDeployResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateDeployResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    

///  创建部署任务
public class CreateDeployRequest:JdCloudRequest
{
    /// 部署组ID，部署组的唯一标识
    var groupId:String

    /// 描述
    var desc:String?

    /// 部署来源：1url，2云编译，3云存储
    var deploySource:Int

    /// 部署操作
    var deployCmd:String?

    /// 1使用输入的操作，2使用程序自带操作
    var cmdSource:Int?

    /// 部署操作展示格式：1form,2ymal
    var cmdType:Int?

    /// 项目类型 1tomcat,2
    var productType:Int?

    /// 下载url
    var downloadUrl:String?

    /// md5
    var md5:String?

    /// 云编译项目名
    var compileProject:String?

    /// 云编译构建序号
    var compileSeries:String?

    /// 云存储空间
    var ossSpace:String?

    /// 云存储目录
    var ossDir:String?

    /// 文件类型：1.tar，2.zip,3.tar.gz
    var fileType:Int?


    public init(regionId: String,groupId:String,deploySource:Int){
        self.groupId = groupId
        self.deploySource = deploySource
        super.init(regionId: regionId)
    }


    enum CreateDeployRequestRequestCodingKeys: String, CodingKey {
        case groupId
        case desc
        case deploySource
        case deployCmd
        case cmdSource
        case cmdType
        case productType
        case downloadUrl
        case md5
        case compileProject
        case compileSeries
        case ossSpace
        case ossDir
        case fileType
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateDeployRequestRequestCodingKeys.self)
        try encoderContainer.encode(groupId, forKey: .groupId)
        try encoderContainer.encode(desc, forKey: .desc)
        try encoderContainer.encode(deploySource, forKey: .deploySource)
        try encoderContainer.encode(deployCmd, forKey: .deployCmd)
        try encoderContainer.encode(cmdSource, forKey: .cmdSource)
        try encoderContainer.encode(cmdType, forKey: .cmdType)
        try encoderContainer.encode(productType, forKey: .productType)
        try encoderContainer.encode(downloadUrl, forKey: .downloadUrl)
        try encoderContainer.encode(md5, forKey: .md5)
        try encoderContainer.encode(compileProject, forKey: .compileProject)
        try encoderContainer.encode(compileSeries, forKey: .compileSeries)
        try encoderContainer.encode(ossSpace, forKey: .ossSpace)
        try encoderContainer.encode(ossDir, forKey: .ossDir)
        try encoderContainer.encode(fileType, forKey: .fileType)

    }
}

/// 创建部署任务 
public class CreateDeployResult:NSObject,JdCloudResult
{
    /// 上线单ID
    var deployId:String?



    public override init(){
        super.init()
    }

    enum CreateDeployResultCodingKeys: String, CodingKey {
        case deployId
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateDeployResultCodingKeys.self)
        if decoderContainer.contains(.deployId)
        {
            self.deployId = try decoderContainer.decode(String?.self, forKey: .deployId)
        }
    }
}
public extension CreateDeployResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateDeployResultCodingKeys.self)
        try encoderContainer.encode(deployId, forKey: .deployId)
    }
}

///  查询一个部署组的信息
public class DescribeGroupRequest:JdCloudRequest
{
    /// Group Id
    var groupId:String


    public init(regionId: String,groupId:String){
        self.groupId = groupId
        super.init(regionId: regionId)
    }


    enum DescribeGroupRequestRequestCodingKeys: String, CodingKey {
        case groupId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeGroupRequestRequestCodingKeys.self)
        try encoderContainer.encode(groupId, forKey: .groupId)

    }
}

/// 查询一个部署组的信息 
public class DescribeGroupResult:NSObject,JdCloudResult
{
    /// Group
    var group:Group?



    public override init(){
        super.init()
    }

    enum DescribeGroupResultCodingKeys: String, CodingKey {
        case group
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeGroupResultCodingKeys.self)
        if decoderContainer.contains(.group)
        {
            self.group = try decoderContainer.decode(Group?.self, forKey: .group)
        }
    }
}
public extension DescribeGroupResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeGroupResultCodingKeys.self)
        try encoderContainer.encode(group, forKey: .group)
    }
}

///  批量查询部署组的信息，此接口支持分页查询，默认每页20条
public class DescribeGroupsRequest:JdCloudRequest
{
    /// 页码；默认为1
    var pageNumber:Int?

    /// 分页大小；默认为20；取值范围[10, 100]
    var pageSize:Int?

    /// appId - 应用ID，精确匹配
      /// groupId - 部署组ID，精确匹配
      /// groupName - 部署组名，精确匹配
      /// 
    var filters:[Filter?]?




    enum DescribeGroupsRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeGroupsRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(filters, forKey: .filters)

    }
}

/// 批量查询部署组的信息，此接口支持分页查询，默认每页20条 
public class DescribeGroupsResult:NSObject,JdCloudResult
{
    /// Groups
    var groups:[Group?]?

    /// TotalCount
    var totalCount:Double?



    public override init(){
        super.init()
    }

    enum DescribeGroupsResultCodingKeys: String, CodingKey {
        case groups
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeGroupsResultCodingKeys.self)
        if decoderContainer.contains(.groups)
        {
            self.groups = try decoderContainer.decode([Group?]?.self, forKey: .groups)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Double?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeGroupsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeGroupsResultCodingKeys.self)
        try encoderContainer.encode(groups, forKey: .groups)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
public class DescribeGroupsResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeGroupsResult?;

    enum DescribeGroupsResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeGroupsResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeGroupsResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeGroupsResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeGroupsResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
public class DescribeGroupResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeGroupResult?;

    enum DescribeGroupResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeGroupResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeGroupResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeGroupResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeGroupResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
