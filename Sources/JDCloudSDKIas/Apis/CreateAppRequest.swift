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
import JDCloudSDKCore


///  创建app
public class CreateAppRequest:JdCloudRequest
{
    /// 应用名
    var clientName:String?

    /// tokenEndpointAuthMethod
    var tokenEndpointAuthMethod:String?

    /// grantTypes
    var grantTypes:String?

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
    var `extension`:String?

    /// accessTokenValiditySeconds
    var accessTokenValiditySeconds:Int?

    /// refreshTokenValiditySeconds
    var refreshTokenValiditySeconds:Int?

    /// multiTenant
    var multiTenant:Bool?

    /// secret
    var secret:String?

    /// userType
    var userType:String?




    enum CreateAppRequestRequestCodingKeys: String, CodingKey {
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
        case `extension` = "extension"
        case accessTokenValiditySeconds
        case refreshTokenValiditySeconds
        case multiTenant
        case secret
        case userType
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateAppRequestRequestCodingKeys.self)
        try container.encode(clientName, forKey: .clientName)
        try container.encode(tokenEndpointAuthMethod, forKey: .tokenEndpointAuthMethod)
        try container.encode(grantTypes, forKey: .grantTypes)
        try container.encode(redirectUris, forKey: .redirectUris)
        try container.encode(clientUri, forKey: .clientUri)
        try container.encode(logoUri, forKey: .logoUri)
        try container.encode(tosUri, forKey: .tosUri)
        try container.encode(policyUri, forKey: .policyUri)
        try container.encode(scope, forKey: .scope)
        try container.encode(jwksUri, forKey: .jwksUri)
        try container.encode(jwks, forKey: .jwks)
        try container.encode(contacts, forKey: .contacts)
        try container.encode(`extension`, forKey: .`extension`)
        try container.encode(accessTokenValiditySeconds, forKey: .accessTokenValiditySeconds)
        try container.encode(refreshTokenValiditySeconds, forKey: .refreshTokenValiditySeconds)
        try container.encode(multiTenant, forKey: .multiTenant)
        try container.encode(secret, forKey: .secret)
        try container.encode(userType, forKey: .userType)

    }
}
