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

   JDCLOUD IAS Services API
   京东云联合登陆Api

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
///  appQueryResultItem
public class AppQueryResultItem:NSObject,Codable{
    /// 应用
    var clientId:String?
    /// 应用名
    var clientName:String?
    /// tokenEndpointAuthMethod
    var tokenEndpointAuthMethod:String?
    /// grantTypes
    var grantTypes:String?
    /// responseTypes
    var responseTypes:String?
    /// redirectUris
    var redirectUris:String?
    /// clientUri
    var clientUri:String?
    /// logoUri
    var logoUri:String?
    /// tosUri
    var tosUri:String?
    /// policyUri
    var policyUri:String?
    /// scope
    var scope:String?
    /// jwksUri
    var jwksUri:String?
    /// jwks
    var jwks:String?
    /// contacts
    var contacts:String?
    /// extension
    var extensionValue:String?
    /// accessTokenValiditySeconds
    var accessTokenValiditySeconds:Int?
    /// refreshTokenValiditySeconds
    var refreshTokenValiditySeconds:Int?
    /// multiTenant
    var multiTenant:Bool?
    /// secretUpdateTime
    var secretUpdateTime:Int64?
    /// updateTime
    var updateTime:Int64?
    /// createTime
    var createTime:Int64?
    /// account
    var account:String?
    /// userType
    var userType:String?
    /// state
    var state:String?



    public override init(){
            super.init()
    }

    enum AppQueryResultItemCodingKeys: String, CodingKey {
        case clientId
        case clientName
        case tokenEndpointAuthMethod
        case grantTypes
        case responseTypes
        case redirectUris
        case clientUri
        case logoUri
        case tosUri
        case policyUri
        case scope
        case jwksUri
        case jwks
        case contacts
        case extensionValue = "extension"
        case accessTokenValiditySeconds
        case refreshTokenValiditySeconds
        case multiTenant
        case secretUpdateTime
        case updateTime
        case createTime
        case account
        case userType
        case state
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AppQueryResultItemCodingKeys.self)
        if decoderContainer.contains(.clientId)
        {
            self.clientId = try decoderContainer.decode(String?.self, forKey: .clientId)
        }
        if decoderContainer.contains(.clientName)
        {
            self.clientName = try decoderContainer.decode(String?.self, forKey: .clientName)
        }
        if decoderContainer.contains(.tokenEndpointAuthMethod)
        {
            self.tokenEndpointAuthMethod = try decoderContainer.decode(String?.self, forKey: .tokenEndpointAuthMethod)
        }
        if decoderContainer.contains(.grantTypes)
        {
            self.grantTypes = try decoderContainer.decode(String?.self, forKey: .grantTypes)
        }
        if decoderContainer.contains(.responseTypes)
        {
            self.responseTypes = try decoderContainer.decode(String?.self, forKey: .responseTypes)
        }
        if decoderContainer.contains(.redirectUris)
        {
            self.redirectUris = try decoderContainer.decode(String?.self, forKey: .redirectUris)
        }
        if decoderContainer.contains(.clientUri)
        {
            self.clientUri = try decoderContainer.decode(String?.self, forKey: .clientUri)
        }
        if decoderContainer.contains(.logoUri)
        {
            self.logoUri = try decoderContainer.decode(String?.self, forKey: .logoUri)
        }
        if decoderContainer.contains(.tosUri)
        {
            self.tosUri = try decoderContainer.decode(String?.self, forKey: .tosUri)
        }
        if decoderContainer.contains(.policyUri)
        {
            self.policyUri = try decoderContainer.decode(String?.self, forKey: .policyUri)
        }
        if decoderContainer.contains(.scope)
        {
            self.scope = try decoderContainer.decode(String?.self, forKey: .scope)
        }
        if decoderContainer.contains(.jwksUri)
        {
            self.jwksUri = try decoderContainer.decode(String?.self, forKey: .jwksUri)
        }
        if decoderContainer.contains(.jwks)
        {
            self.jwks = try decoderContainer.decode(String?.self, forKey: .jwks)
        }
        if decoderContainer.contains(.contacts)
        {
            self.contacts = try decoderContainer.decode(String?.self, forKey: .contacts)
        }
        if decoderContainer.contains(.extensionValue)
        {
            self.extensionValue = try decoderContainer.decode(String?.self, forKey: .extensionValue)
        }
        if decoderContainer.contains(.accessTokenValiditySeconds)
        {
            self.accessTokenValiditySeconds = try decoderContainer.decode(Int?.self, forKey: .accessTokenValiditySeconds)
        }
        if decoderContainer.contains(.refreshTokenValiditySeconds)
        {
            self.refreshTokenValiditySeconds = try decoderContainer.decode(Int?.self, forKey: .refreshTokenValiditySeconds)
        }
        if decoderContainer.contains(.multiTenant)
        {
            self.multiTenant = try decoderContainer.decode(Bool?.self, forKey: .multiTenant)
        }
        if decoderContainer.contains(.secretUpdateTime)
        {
            self.secretUpdateTime = try decoderContainer.decode(Int64?.self, forKey: .secretUpdateTime)
        }
        if decoderContainer.contains(.updateTime)
        {
            self.updateTime = try decoderContainer.decode(Int64?.self, forKey: .updateTime)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(Int64?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.account)
        {
            self.account = try decoderContainer.decode(String?.self, forKey: .account)
        }
        if decoderContainer.contains(.userType)
        {
            self.userType = try decoderContainer.decode(String?.self, forKey: .userType)
        }
        if decoderContainer.contains(.state)
        {
            self.state = try decoderContainer.decode(String?.self, forKey: .state)
        }
    }
}
public extension AppQueryResultItem{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AppQueryResultItemCodingKeys.self)
         try encoderContainer.encode(clientId, forKey: .clientId)
         try encoderContainer.encode(clientName, forKey: .clientName)
         try encoderContainer.encode(tokenEndpointAuthMethod, forKey: .tokenEndpointAuthMethod)
         try encoderContainer.encode(grantTypes, forKey: .grantTypes)
         try encoderContainer.encode(responseTypes, forKey: .responseTypes)
         try encoderContainer.encode(redirectUris, forKey: .redirectUris)
         try encoderContainer.encode(clientUri, forKey: .clientUri)
         try encoderContainer.encode(logoUri, forKey: .logoUri)
         try encoderContainer.encode(tosUri, forKey: .tosUri)
         try encoderContainer.encode(policyUri, forKey: .policyUri)
         try encoderContainer.encode(scope, forKey: .scope)
         try encoderContainer.encode(jwksUri, forKey: .jwksUri)
         try encoderContainer.encode(jwks, forKey: .jwks)
         try encoderContainer.encode(contacts, forKey: .contacts)
         try encoderContainer.encode(extensionValue, forKey: .extensionValue)
         try encoderContainer.encode(accessTokenValiditySeconds, forKey: .accessTokenValiditySeconds)
         try encoderContainer.encode(refreshTokenValiditySeconds, forKey: .refreshTokenValiditySeconds)
         try encoderContainer.encode(multiTenant, forKey: .multiTenant)
         try encoderContainer.encode(secretUpdateTime, forKey: .secretUpdateTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(account, forKey: .account)
         try encoderContainer.encode(userType, forKey: .userType)
         try encoderContainer.encode(state, forKey: .state)
    }
}
///  pagination
public class Pagination:NSObject,Codable{
    /// currPageNo
    var currPageNo:Int?
    /// numberPages
    var numberPages:Int?
    /// numberRecords
    var numberRecords:Int?
    /// pageSize
    var pageSize:Int?
    /// startIndex
    var startIndex:Int?



    public override init(){
            super.init()
    }

    enum PaginationCodingKeys: String, CodingKey {
        case currPageNo
        case numberPages
        case numberRecords
        case pageSize
        case startIndex
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PaginationCodingKeys.self)
        if decoderContainer.contains(.currPageNo)
        {
            self.currPageNo = try decoderContainer.decode(Int?.self, forKey: .currPageNo)
        }
        if decoderContainer.contains(.numberPages)
        {
            self.numberPages = try decoderContainer.decode(Int?.self, forKey: .numberPages)
        }
        if decoderContainer.contains(.numberRecords)
        {
            self.numberRecords = try decoderContainer.decode(Int?.self, forKey: .numberRecords)
        }
        if decoderContainer.contains(.pageSize)
        {
            self.pageSize = try decoderContainer.decode(Int?.self, forKey: .pageSize)
        }
        if decoderContainer.contains(.startIndex)
        {
            self.startIndex = try decoderContainer.decode(Int?.self, forKey: .startIndex)
        }
    }
}
public extension Pagination{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PaginationCodingKeys.self)
         try encoderContainer.encode(currPageNo, forKey: .currPageNo)
         try encoderContainer.encode(numberPages, forKey: .numberPages)
         try encoderContainer.encode(numberRecords, forKey: .numberRecords)
         try encoderContainer.encode(pageSize, forKey: .pageSize)
         try encoderContainer.encode(startIndex, forKey: .startIndex)
    }
}
///  state
public class State:NSObject,Codable{
    /// label
    var label:String?
    /// value
    var value:String?



    public override init(){
            super.init()
    }

    enum StateCodingKeys: String, CodingKey {
        case label
        case value
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StateCodingKeys.self)
        if decoderContainer.contains(.label)
        {
            self.label = try decoderContainer.decode(String?.self, forKey: .label)
        }
        if decoderContainer.contains(.value)
        {
            self.value = try decoderContainer.decode(String?.self, forKey: .value)
        }
    }
}
public extension State{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StateCodingKeys.self)
         try encoderContainer.encode(label, forKey: .label)
         try encoderContainer.encode(value, forKey: .value)
    }
}
///  应用组
public class ApplicationRes:NSObject,Codable{
    /// 应用ID，由京东云分配的16位数字ID
    /// Required:true
    var clientId:String
    /// 应用名
    /// Required:true
    var clientName:String
    /// 客户端认证方式
    /// Required:true
    var tokenEndpointAuthMethod:String
    /// 支持的OAuth类型
    /// Required:true
    var grantTypes:String
    /// 当grantTypes为authorization_code时，responseTypes为code；当grantTypes为implicit时，responseTypes为token
    /// Required:true
    var responseTypes:String
    /// 回调地址
    /// Required:true
    var redirectUris:String
    /// 应用介绍地址
    /// Required:true
    var clientUri:String
    /// 应用logo地址
    /// Required:true
    var logoUri:String
    /// 应用服务协议地址
    /// Required:true
    var tosUri:String
    /// 应用隐私条款地址
    /// Required:true
    var policyUri:String
    /// OAuth scope授权范围
    /// Required:true
    var scope:String
    /// JWKS地址
    /// Required:true
    var jwksUri:String
    /// JWKS
    /// Required:true
    var jwks:String
    /// 应用联系信息
    /// Required:true
    var contacts:String
    /// 应用扩展信息
    /// Required:true
    var extensionValue:String
    /// 访问令牌有效期
    /// Required:true
    var accessTokenValiditySeconds:Int
    /// 刷新令牌有效期
    /// Required:true
    var refreshTokenValiditySeconds:Int
    /// 是否为多租户应用
    /// Required:true
    var multiTenant:Bool
    /// 应用密码更新时间
    /// Required:true
    var secretUpdateTime:Int64
    /// 应用更新时间
    /// Required:true
    var updateTime:Int64
    /// 应用创建时间
    /// Required:true
    var createTime:Int64
    /// 创建应用的账户用户名
    /// Required:true
    var account:String
    /// 允许登录应用的账号类型
    /// Required:true
    var userType:String



    public  init(clientId:String,clientName:String,tokenEndpointAuthMethod:String,grantTypes:String,responseTypes:String,redirectUris:String,clientUri:String,logoUri:String,tosUri:String,policyUri:String,scope:String,jwksUri:String,jwks:String,contacts:String,extensionValue:String,accessTokenValiditySeconds:Int,refreshTokenValiditySeconds:Int,multiTenant:Bool,secretUpdateTime:Int64,updateTime:Int64,createTime:Int64,account:String,userType:String){
             self.clientId = clientId
             self.clientName = clientName
             self.tokenEndpointAuthMethod = tokenEndpointAuthMethod
             self.grantTypes = grantTypes
             self.responseTypes = responseTypes
             self.redirectUris = redirectUris
             self.clientUri = clientUri
             self.logoUri = logoUri
             self.tosUri = tosUri
             self.policyUri = policyUri
             self.scope = scope
             self.jwksUri = jwksUri
             self.jwks = jwks
             self.contacts = contacts
             self.extensionValue = extensionValue
             self.accessTokenValiditySeconds = accessTokenValiditySeconds
             self.refreshTokenValiditySeconds = refreshTokenValiditySeconds
             self.multiTenant = multiTenant
             self.secretUpdateTime = secretUpdateTime
             self.updateTime = updateTime
             self.createTime = createTime
             self.account = account
             self.userType = userType
    }

    enum ApplicationResCodingKeys: String, CodingKey {
        case clientId
        case clientName
        case tokenEndpointAuthMethod
        case grantTypes
        case responseTypes
        case redirectUris
        case clientUri
        case logoUri
        case tosUri
        case policyUri
        case scope
        case jwksUri
        case jwks
        case contacts
        case extensionValue = "extension"
        case accessTokenValiditySeconds
        case refreshTokenValiditySeconds
        case multiTenant
        case secretUpdateTime
        case updateTime
        case createTime
        case account
        case userType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ApplicationResCodingKeys.self)
        self.clientId = try decoderContainer.decode(String.self, forKey: .clientId)
        self.clientName = try decoderContainer.decode(String.self, forKey: .clientName)
        self.tokenEndpointAuthMethod = try decoderContainer.decode(String.self, forKey: .tokenEndpointAuthMethod)
        self.grantTypes = try decoderContainer.decode(String.self, forKey: .grantTypes)
        self.responseTypes = try decoderContainer.decode(String.self, forKey: .responseTypes)
        self.redirectUris = try decoderContainer.decode(String.self, forKey: .redirectUris)
        self.clientUri = try decoderContainer.decode(String.self, forKey: .clientUri)
        self.logoUri = try decoderContainer.decode(String.self, forKey: .logoUri)
        self.tosUri = try decoderContainer.decode(String.self, forKey: .tosUri)
        self.policyUri = try decoderContainer.decode(String.self, forKey: .policyUri)
        self.scope = try decoderContainer.decode(String.self, forKey: .scope)
        self.jwksUri = try decoderContainer.decode(String.self, forKey: .jwksUri)
        self.jwks = try decoderContainer.decode(String.self, forKey: .jwks)
        self.contacts = try decoderContainer.decode(String.self, forKey: .contacts)
        self.extensionValue = try decoderContainer.decode(String.self, forKey: .extensionValue)
        self.accessTokenValiditySeconds = try decoderContainer.decode(Int.self, forKey: .accessTokenValiditySeconds)
        self.refreshTokenValiditySeconds = try decoderContainer.decode(Int.self, forKey: .refreshTokenValiditySeconds)
        self.multiTenant = try decoderContainer.decode(Bool.self, forKey: .multiTenant)
        self.secretUpdateTime = try decoderContainer.decode(Int64.self, forKey: .secretUpdateTime)
        self.updateTime = try decoderContainer.decode(Int64.self, forKey: .updateTime)
        self.createTime = try decoderContainer.decode(Int64.self, forKey: .createTime)
        self.account = try decoderContainer.decode(String.self, forKey: .account)
        self.userType = try decoderContainer.decode(String.self, forKey: .userType)
    }
}
public extension ApplicationRes{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ApplicationResCodingKeys.self)
         try encoderContainer.encode(clientId, forKey: .clientId)
         try encoderContainer.encode(clientName, forKey: .clientName)
         try encoderContainer.encode(tokenEndpointAuthMethod, forKey: .tokenEndpointAuthMethod)
         try encoderContainer.encode(grantTypes, forKey: .grantTypes)
         try encoderContainer.encode(responseTypes, forKey: .responseTypes)
         try encoderContainer.encode(redirectUris, forKey: .redirectUris)
         try encoderContainer.encode(clientUri, forKey: .clientUri)
         try encoderContainer.encode(logoUri, forKey: .logoUri)
         try encoderContainer.encode(tosUri, forKey: .tosUri)
         try encoderContainer.encode(policyUri, forKey: .policyUri)
         try encoderContainer.encode(scope, forKey: .scope)
         try encoderContainer.encode(jwksUri, forKey: .jwksUri)
         try encoderContainer.encode(jwks, forKey: .jwks)
         try encoderContainer.encode(contacts, forKey: .contacts)
         try encoderContainer.encode(extensionValue, forKey: .extensionValue)
         try encoderContainer.encode(accessTokenValiditySeconds, forKey: .accessTokenValiditySeconds)
         try encoderContainer.encode(refreshTokenValiditySeconds, forKey: .refreshTokenValiditySeconds)
         try encoderContainer.encode(multiTenant, forKey: .multiTenant)
         try encoderContainer.encode(secretUpdateTime, forKey: .secretUpdateTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(account, forKey: .account)
         try encoderContainer.encode(userType, forKey: .userType)
    }
}
///  application
public class Application:NSObject,Codable{
    /// 应用名
    var clientName:String?
    /// 客户端认证方式&lt;br&gt; - none：不设置客户端密码（不推荐）&lt;br&gt; - client_secret_post：客户端必须设置密码，且该密码需要在OAuth2 Token Endpoint提供于请求的body&lt;br&gt; - client_secret_basic：客户端必须设置密码，且该密码需要在OAuth2 Token Endpoint提供于请求的header&lt;br&gt; 支持以下值：&lt;br&gt; （1）none&lt;br&gt; （2）client_secret_post&lt;br&gt; （3）client_secret_basic
    var tokenEndpointAuthMethod:String?
    /// 支持的OAuth类型：&lt;br&gt; - authorization_code：OAuth2授权码模式&lt;br&gt; - implicit：OAuth2隐式授权模式&lt;br&gt; - refresh_token：启用刷新令牌 支持以下值：&lt;br&gt; （1）authorization_code&lt;br&gt; （2）authorization_code,refresh_token&lt;br&gt; （3）authorization_code,implicit&lt;br&gt; （4）authorization_code,implicit,refresh_token&lt;br&gt; （5）implicit&lt;br&gt; 注：如果grantTypes指定了refresh_token，应用将可以使用刷新令牌；如果在创建应用时未指定，则应用不能使用刷新令牌；任何时候应用都可以调用“更新应用”接口更改grantTypes设置
    var grantTypes:String?
    /// 回调地址，最多4个，多个url之间用逗号,分隔，每个url长度不超过1000，url不支持#符号
    var redirectUris:String?
    /// 应用介绍地址，url不支持#符号
    var clientUri:String?
    /// 应用logo地址，url不支持#符号
    var logoUri:String?
    /// 应用服务协议地址，url不支持#符号
    var tosUri:String?
    /// 应用隐私政策地址，url不支持#符号
    var policyUri:String?
    /// OAuth scope范围，支持的值为：&lt;br/&gt; （1）openid：用OpenID Connect协议进行身份认证&lt;br/&gt; 指定scope为openid，并在Authorization Endpoint请求该scope，京东云将返回用户的OpenID令牌；如果在创建应用时未指明该值，则应用不能请求OpenID令牌；任何时候应用都可以调用“更新应用”更改该设置
    var scope:String?
    /// JWKS地址，url不支持#符号&lt;br/&gt;jwksUri和jwks传一个即可
    var jwksUri:String?
    /// JWKS
    var jwks:String?
    /// 应用联系信息
    var contacts:String?
    /// 应用扩展信息
    var extensionValue:String?
    /// 访问令牌有效期，值的范围为 600 秒到 6x3600&#x3D;21,600 秒，即10分钟-6小时
    var accessTokenValiditySeconds:Int?
    /// 刷新令牌有效期，值的范围为 30x24x3600&#x3D;2,592,000 秒到 365x24x3600&#x3D;31,536,000 秒，即30天-365天&lt;br/&gt;&lt;br/&gt; 注：当 GrantTypes 包含 refresh_token 时，refreshTokenValiditySeconds 为必传参数
    var refreshTokenValiditySeconds:Int?
    /// 是否为多租户应用&lt;br/&gt; &quot;false&quot;：该应用仅支持当前创建应用的租户访问，其他京东云租户无法访问&lt;br/&gt;        &quot;true&quot;：该应用支持其他京东云租户访问，但当前创建应用的租户不能访问
    var multiTenant:Bool?
    /// 应用的密码，支持8-255位长度的ASCII可打印字符，建议使用足够复杂的密码策略&lt;br/&gt;&lt;br/&gt;        注：当TokenEndpointAuthMethod不等于none时，secret为必传参数；反之，当指定了secret时，TokenEndpointAuthMethod不能等于none&lt;br/&gt;京东云将不可逆加密secret，因此您无法再次从京东云查看该密码，但您可以随时通过更新应用重新设置secret
    var secret:String?
    /// 能访问应用的账号类型，支持以下值：&lt;br/&gt; （1）root：支持主账号访问，子用户无法访问&lt;br/&gt; （2）sub：子用户账号，使用主账号不能访问&lt;br/&gt;&lt;br/&gt; 注：multiTenant和userType的组合指定了应用的用户人群，典型的应用场景如：&lt;br/&gt; （1）应用向当前租户下的子用户开放（2）应用向京东云其他租户主账号开放
    var userType:String?



    public override init(){
            super.init()
    }

    enum ApplicationCodingKeys: String, CodingKey {
        case clientName
        case tokenEndpointAuthMethod
        case grantTypes
        case redirectUris
        case clientUri
        case logoUri
        case tosUri
        case policyUri
        case scope
        case jwksUri
        case jwks
        case contacts
        case extensionValue = "extension"
        case accessTokenValiditySeconds
        case refreshTokenValiditySeconds
        case multiTenant
        case secret
        case userType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ApplicationCodingKeys.self)
        if decoderContainer.contains(.clientName)
        {
            self.clientName = try decoderContainer.decode(String?.self, forKey: .clientName)
        }
        if decoderContainer.contains(.tokenEndpointAuthMethod)
        {
            self.tokenEndpointAuthMethod = try decoderContainer.decode(String?.self, forKey: .tokenEndpointAuthMethod)
        }
        if decoderContainer.contains(.grantTypes)
        {
            self.grantTypes = try decoderContainer.decode(String?.self, forKey: .grantTypes)
        }
        if decoderContainer.contains(.redirectUris)
        {
            self.redirectUris = try decoderContainer.decode(String?.self, forKey: .redirectUris)
        }
        if decoderContainer.contains(.clientUri)
        {
            self.clientUri = try decoderContainer.decode(String?.self, forKey: .clientUri)
        }
        if decoderContainer.contains(.logoUri)
        {
            self.logoUri = try decoderContainer.decode(String?.self, forKey: .logoUri)
        }
        if decoderContainer.contains(.tosUri)
        {
            self.tosUri = try decoderContainer.decode(String?.self, forKey: .tosUri)
        }
        if decoderContainer.contains(.policyUri)
        {
            self.policyUri = try decoderContainer.decode(String?.self, forKey: .policyUri)
        }
        if decoderContainer.contains(.scope)
        {
            self.scope = try decoderContainer.decode(String?.self, forKey: .scope)
        }
        if decoderContainer.contains(.jwksUri)
        {
            self.jwksUri = try decoderContainer.decode(String?.self, forKey: .jwksUri)
        }
        if decoderContainer.contains(.jwks)
        {
            self.jwks = try decoderContainer.decode(String?.self, forKey: .jwks)
        }
        if decoderContainer.contains(.contacts)
        {
            self.contacts = try decoderContainer.decode(String?.self, forKey: .contacts)
        }
        if decoderContainer.contains(.extensionValue)
        {
            self.extensionValue = try decoderContainer.decode(String?.self, forKey: .extensionValue)
        }
        if decoderContainer.contains(.accessTokenValiditySeconds)
        {
            self.accessTokenValiditySeconds = try decoderContainer.decode(Int?.self, forKey: .accessTokenValiditySeconds)
        }
        if decoderContainer.contains(.refreshTokenValiditySeconds)
        {
            self.refreshTokenValiditySeconds = try decoderContainer.decode(Int?.self, forKey: .refreshTokenValiditySeconds)
        }
        if decoderContainer.contains(.multiTenant)
        {
            self.multiTenant = try decoderContainer.decode(Bool?.self, forKey: .multiTenant)
        }
        if decoderContainer.contains(.secret)
        {
            self.secret = try decoderContainer.decode(String?.self, forKey: .secret)
        }
        if decoderContainer.contains(.userType)
        {
            self.userType = try decoderContainer.decode(String?.self, forKey: .userType)
        }
    }
}
public extension Application{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ApplicationCodingKeys.self)
         try encoderContainer.encode(clientName, forKey: .clientName)
         try encoderContainer.encode(tokenEndpointAuthMethod, forKey: .tokenEndpointAuthMethod)
         try encoderContainer.encode(grantTypes, forKey: .grantTypes)
         try encoderContainer.encode(redirectUris, forKey: .redirectUris)
         try encoderContainer.encode(clientUri, forKey: .clientUri)
         try encoderContainer.encode(logoUri, forKey: .logoUri)
         try encoderContainer.encode(tosUri, forKey: .tosUri)
         try encoderContainer.encode(policyUri, forKey: .policyUri)
         try encoderContainer.encode(scope, forKey: .scope)
         try encoderContainer.encode(jwksUri, forKey: .jwksUri)
         try encoderContainer.encode(jwks, forKey: .jwks)
         try encoderContainer.encode(contacts, forKey: .contacts)
         try encoderContainer.encode(extensionValue, forKey: .extensionValue)
         try encoderContainer.encode(accessTokenValiditySeconds, forKey: .accessTokenValiditySeconds)
         try encoderContainer.encode(refreshTokenValiditySeconds, forKey: .refreshTokenValiditySeconds)
         try encoderContainer.encode(multiTenant, forKey: .multiTenant)
         try encoderContainer.encode(secret, forKey: .secret)
         try encoderContainer.encode(userType, forKey: .userType)
    }
}
///  updateApplication
public class UpdateApplication:NSObject,Codable{
    /// 应用名
    var clientName:String?
    /// 客户端认证方式：&lt;br/&gt; none：不设置客户端密码（不推荐）&lt;br/&gt; client_secret_post：客户端必须设置密码，且该密码需要在OAuth2 Token Endpoint提供于请求的body&lt;br/&gt; client_secret_basic：客户端必须设置密码，且该密码需要在OAuth2 Token Endpoint提供于请求的header&lt;br/&gt;&lt;br/&gt; 支持以下值：&lt;br/&gt; （1）none&lt;br/&gt; （2）client_secret_post&lt;br/&gt; （3）client_secret_basic
    var tokenEndpointAuthMethod:String?
    /// 支持的OAuth类型：&lt;br/&gt; authorization_code：OAuth2授权码模式&lt;br/&gt; implicit：OAuth2隐式授权模式&lt;br/&gt; refresh_token：启用刷新令牌&lt;br/&gt;&lt;br/&gt; 支持以下值：&lt;br/&gt; （1）authorization_code&lt;br/&gt; （2）authorization_code,refresh_token&lt;br/&gt; （3）authorization_code,implicit&lt;br/&gt; （4）authorization_code,implicit,refresh_token&lt;br/&gt; （5）implicit&lt;br/&gt;&lt;br/&gt;        注：如果grantTypes指定了refresh_token，应用将可以使用刷新令牌；如果在创建应用时未指定，则应用不能使用刷新令牌；任何时候应用都可以调用“更新应用”接口更改grantTypes设置
    var grantTypes:String?
    /// 回调地址，最多4个，多个url之间用逗号,分隔，每个url长度不超过1000，url不支持#符号
    var redirectUris:String?
    /// 应用介绍地址，url不支持#符号
    var clientUri:String?
    /// 应用logo地址，url不支持#符号
    var logoUri:String?
    /// 应用服务协议地址，url不支持#符号
    var tosUri:String?
    /// 应用隐私政策地址，url不支持#符号
    var policyUri:String?
    /// OAuth scope范围，支持的值为：&lt;br/&gt; （1）openid：用OpenID Connect协议进行身份认证&lt;br/&gt; 指定scope为openid，并在Authorization Endpoint请求该scope，京东云将返回用户的OpenID令牌；如果在创建应用时未指明该值，则应用不能请求OpenID令牌；任何时候应用都可以调用“更新应用”更改该设置
    var scope:String?
    /// JWKS地址，url不支持#符号&lt;br/&gt; jwksUri和jwks传一个即可
    var jwksUri:String?
    /// JWKS
    var jwks:String?
    /// 应用联系信息
    var contacts:String?
    /// 应用扩展信息
    var extensionValue:String?
    /// 访问令牌有效期，值的范围为 600 秒到 6x3600&#x3D;21,600 秒，即10分钟-6小时
    var accessTokenValiditySeconds:Int?
    /// 刷新令牌有效期，值的范围为 30x24x3600&#x3D;2,592,000 秒到 365x24x3600&#x3D;31,536,000 秒，即30天-365天&lt;br/&gt;&lt;br/&gt; 注：当 GrantTypes 包含 refresh_token 时，refreshTokenValiditySeconds 为必传参数
    var refreshTokenValiditySeconds:Int?
    /// 是否为多租户应用&lt;br/&gt; &quot;false&quot;：该应用仅支持当前创建应用的租户访问，其他京东云租户无法访问&lt;br/&gt;        &quot;true&quot;：该应用支持其他京东云租户访问，但当前创建应用的租户不能访问
    var multiTenant:Bool?
    /// 应用的密码，支持8-255位长度的ASCII可打印字符，建议使用足够复杂的密码策略&lt;br/&gt;&lt;br/&gt; 注：当TokenEndpointAuthMethod不等于none时，secret为必传参数；反之，当指定了secret时，TokenEndpointAuthMethod不能等于none&lt;br/&gt; 京东云将不可逆加密secret，因此您无法再次从京东云查看该密码，但您可以随时通过更新应用重新设置secret
    var secret:String?
    /// 能访问应用的账号类型，支持以下值：&lt;br/&gt; （1）root：支持主账号访问，子用户无法访问&lt;br/&gt; （2）sub：子用户账号，使用主账号不能访问&lt;br/&gt;&lt;br/&gt; 注：multiTenant和userType的组合指定了应用的用户人群，典型的应用场景如：&lt;br/&gt; （1）应用向当前租户下的子用户开放（2）应用向京东云其他租户主账号开放
    var userType:String?



    public override init(){
            super.init()
    }

    enum UpdateApplicationCodingKeys: String, CodingKey {
        case clientName
        case tokenEndpointAuthMethod
        case grantTypes
        case redirectUris
        case clientUri
        case logoUri
        case tosUri
        case policyUri
        case scope
        case jwksUri
        case jwks
        case contacts
        case extensionValue = "extension"
        case accessTokenValiditySeconds
        case refreshTokenValiditySeconds
        case multiTenant
        case secret
        case userType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: UpdateApplicationCodingKeys.self)
        if decoderContainer.contains(.clientName)
        {
            self.clientName = try decoderContainer.decode(String?.self, forKey: .clientName)
        }
        if decoderContainer.contains(.tokenEndpointAuthMethod)
        {
            self.tokenEndpointAuthMethod = try decoderContainer.decode(String?.self, forKey: .tokenEndpointAuthMethod)
        }
        if decoderContainer.contains(.grantTypes)
        {
            self.grantTypes = try decoderContainer.decode(String?.self, forKey: .grantTypes)
        }
        if decoderContainer.contains(.redirectUris)
        {
            self.redirectUris = try decoderContainer.decode(String?.self, forKey: .redirectUris)
        }
        if decoderContainer.contains(.clientUri)
        {
            self.clientUri = try decoderContainer.decode(String?.self, forKey: .clientUri)
        }
        if decoderContainer.contains(.logoUri)
        {
            self.logoUri = try decoderContainer.decode(String?.self, forKey: .logoUri)
        }
        if decoderContainer.contains(.tosUri)
        {
            self.tosUri = try decoderContainer.decode(String?.self, forKey: .tosUri)
        }
        if decoderContainer.contains(.policyUri)
        {
            self.policyUri = try decoderContainer.decode(String?.self, forKey: .policyUri)
        }
        if decoderContainer.contains(.scope)
        {
            self.scope = try decoderContainer.decode(String?.self, forKey: .scope)
        }
        if decoderContainer.contains(.jwksUri)
        {
            self.jwksUri = try decoderContainer.decode(String?.self, forKey: .jwksUri)
        }
        if decoderContainer.contains(.jwks)
        {
            self.jwks = try decoderContainer.decode(String?.self, forKey: .jwks)
        }
        if decoderContainer.contains(.contacts)
        {
            self.contacts = try decoderContainer.decode(String?.self, forKey: .contacts)
        }
        if decoderContainer.contains(.extensionValue)
        {
            self.extensionValue = try decoderContainer.decode(String?.self, forKey: .extensionValue)
        }
        if decoderContainer.contains(.accessTokenValiditySeconds)
        {
            self.accessTokenValiditySeconds = try decoderContainer.decode(Int?.self, forKey: .accessTokenValiditySeconds)
        }
        if decoderContainer.contains(.refreshTokenValiditySeconds)
        {
            self.refreshTokenValiditySeconds = try decoderContainer.decode(Int?.self, forKey: .refreshTokenValiditySeconds)
        }
        if decoderContainer.contains(.multiTenant)
        {
            self.multiTenant = try decoderContainer.decode(Bool?.self, forKey: .multiTenant)
        }
        if decoderContainer.contains(.secret)
        {
            self.secret = try decoderContainer.decode(String?.self, forKey: .secret)
        }
        if decoderContainer.contains(.userType)
        {
            self.userType = try decoderContainer.decode(String?.self, forKey: .userType)
        }
    }
}
public extension UpdateApplication{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdateApplicationCodingKeys.self)
         try encoderContainer.encode(clientName, forKey: .clientName)
         try encoderContainer.encode(tokenEndpointAuthMethod, forKey: .tokenEndpointAuthMethod)
         try encoderContainer.encode(grantTypes, forKey: .grantTypes)
         try encoderContainer.encode(redirectUris, forKey: .redirectUris)
         try encoderContainer.encode(clientUri, forKey: .clientUri)
         try encoderContainer.encode(logoUri, forKey: .logoUri)
         try encoderContainer.encode(tosUri, forKey: .tosUri)
         try encoderContainer.encode(policyUri, forKey: .policyUri)
         try encoderContainer.encode(scope, forKey: .scope)
         try encoderContainer.encode(jwksUri, forKey: .jwksUri)
         try encoderContainer.encode(jwks, forKey: .jwks)
         try encoderContainer.encode(contacts, forKey: .contacts)
         try encoderContainer.encode(extensionValue, forKey: .extensionValue)
         try encoderContainer.encode(accessTokenValiditySeconds, forKey: .accessTokenValiditySeconds)
         try encoderContainer.encode(refreshTokenValiditySeconds, forKey: .refreshTokenValiditySeconds)
         try encoderContainer.encode(multiTenant, forKey: .multiTenant)
         try encoderContainer.encode(secret, forKey: .secret)
         try encoderContainer.encode(userType, forKey: .userType)
    }
}
