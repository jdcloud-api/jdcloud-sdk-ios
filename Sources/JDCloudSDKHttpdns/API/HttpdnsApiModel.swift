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

   账户
   httpdns OpenAPI账户接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

public class GetDomainsResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:GetDomainsResult?;

    enum GetDomainsResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetDomainsResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(GetDomainsResult?.self, forKey: .result) ?? nil
    }
}

public extension GetDomainsResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetDomainsResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 添加域名。&lt;br&gt;
      ///       /// 可以添加顶级域名除外的多级域名。
      ///       ///  
public class AddDomainsResult:NSObject,JdCloudResult
{
}

///  查询使用httpdns服务的域名
public class GetDomainsRequest:JdCloudRequest
{
    /// 当前页数，起始值为1
    var pageIndex:Int

    /// 分页查询时设置的每页行数
    var pageSize:Int

    /// 关键字，按照”%domainName%”模式搜索域名
    var domainName:String?


    public init(regionId: String,pageIndex:Int,pageSize:Int){
        self.pageIndex = pageIndex
        self.pageSize = pageSize
        super.init(regionId: regionId)
    }


    enum GetDomainsRequestRequestCodingKeys: String, CodingKey {
        case pageIndex
        case pageSize
        case domainName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetDomainsRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageIndex, forKey: .pageIndex)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(domainName, forKey: .domainName)

    }
}

public class DelDomainsResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DelDomainsResult?;

    enum DelDomainsResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DelDomainsResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DelDomainsResult?.self, forKey: .result) ?? nil
    }
}

public extension DelDomainsResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DelDomainsResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    

///  删除域名
public class DelDomainsRequest:JdCloudRequest
{
    /// 需要删除的域名数组
    var domainNames:[String?]?




    enum DelDomainsRequestRequestCodingKeys: String, CodingKey {
        case domainNames
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DelDomainsRequestRequestCodingKeys.self)
        try encoderContainer.encode(domainNames, forKey: .domainNames)

    }
}

public class AddDomainsResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:AddDomainsResult?;

    enum AddDomainsResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AddDomainsResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(AddDomainsResult?.self, forKey: .result) ?? nil
    }
}

public extension AddDomainsResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddDomainsResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 查询使用httpdns服务的域名 
public class GetDomainsResult:NSObject,JdCloudResult
{
    /// 分页查询返回的域名数据结构
    var data:DomainData?



    public override init(){
        super.init()
    }

    enum GetDomainsResultCodingKeys: String, CodingKey {
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetDomainsResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode(DomainData?.self, forKey: .data)
        }
    }
}
public extension GetDomainsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetDomainsResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
    }
}

///  添加域名。&lt;br&gt;
      ///       /// 可以添加顶级域名除外的多级域名。
      ///       /// 
public class AddDomainsRequest:JdCloudRequest
{
    /// 需要添加的域名数组
    var domainNames:[String?]?




    enum AddDomainsRequestRequestCodingKeys: String, CodingKey {
        case domainNames
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddDomainsRequestRequestCodingKeys.self)
        try encoderContainer.encode(domainNames, forKey: .domainNames)

    }
}

/// 删除域名 
public class DelDomainsResult:NSObject,JdCloudResult
{
}
/// 创建，启用，禁用httpdns服务密钥 
public class OperateKeyResult:NSObject,JdCloudResult
{
}
public class CreateAccountResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:CreateAccountResult?;

    enum CreateAccountResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateAccountResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(CreateAccountResult?.self, forKey: .result) ?? nil
    }
}

public extension CreateAccountResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateAccountResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 查询httpdns账户的基本信息 
public class GetAccountInfoResult:NSObject,JdCloudResult
{
    /// 查询得到的账户结构
    var data:Account?



    public override init(){
        super.init()
    }

    enum GetAccountInfoResultCodingKeys: String, CodingKey {
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetAccountInfoResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode(Account?.self, forKey: .data)
        }
    }
}
public extension GetAccountInfoResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetAccountInfoResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
    }
}

///  创建httpdns账户
public class CreateAccountRequest:JdCloudRequest
{
}


///  查询httpdns账户的基本信息
public class GetAccountInfoRequest:JdCloudRequest
{
}

public class GetAccountIdResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:GetAccountIdResult?;

    enum GetAccountIdResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetAccountIdResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(GetAccountIdResult?.self, forKey: .result) ?? nil
    }
}

public extension GetAccountIdResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetAccountIdResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    

///  查询用户名下httpdns的账户ID
public class GetAccountIdRequest:JdCloudRequest
{
}

public class GetAccountInfoResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:GetAccountInfoResult?;

    enum GetAccountInfoResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetAccountInfoResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(GetAccountInfoResult?.self, forKey: .result) ?? nil
    }
}

public extension GetAccountInfoResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetAccountInfoResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 创建httpdns账户 
public class CreateAccountResult:NSObject,JdCloudResult
{
    /// 开户成功后得到的账户结构
    var data:Account?



    public override init(){
        super.init()
    }

    enum CreateAccountResultCodingKeys: String, CodingKey {
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateAccountResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode(Account?.self, forKey: .data)
        }
    }
}
public extension CreateAccountResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateAccountResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
    }
}

///  创建，启用，禁用httpdns服务密钥
public class OperateKeyRequest:JdCloudRequest
{
    /// 操作类型, create创建, enable启用, disable禁用
    var action:String?

    /// 操作的密钥
    var key:String?




    enum OperateKeyRequestRequestCodingKeys: String, CodingKey {
        case action
        case key
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OperateKeyRequestRequestCodingKeys.self)
        try encoderContainer.encode(action, forKey: .action)
        try encoderContainer.encode(key, forKey: .key)

    }
}

/// 查询用户名下httpdns的账户ID 
public class GetAccountIdResult:NSObject,JdCloudResult
{
    /// 查询得到的账户ID结构
    var data:AccountId?



    public override init(){
        super.init()
    }

    enum GetAccountIdResultCodingKeys: String, CodingKey {
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetAccountIdResultCodingKeys.self)
        if decoderContainer.contains(.data)
        {
            self.data = try decoderContainer.decode(AccountId?.self, forKey: .data)
        }
    }
}
public extension GetAccountIdResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetAccountIdResultCodingKeys.self)
        try encoderContainer.encode(data, forKey: .data)
    }
}
public class OperateKeyResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:OperateKeyResult?;

    enum OperateKeyResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OperateKeyResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(OperateKeyResult?.self, forKey: .result) ?? nil
    }
}

public extension OperateKeyResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OperateKeyResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
