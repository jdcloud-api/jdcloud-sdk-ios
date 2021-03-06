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

   link
   链接相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

public class DescribeProductsByIdResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeProductsByIdResult?;

    enum DescribeProductsByIdResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeProductsByIdResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeProductsByIdResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeProductsByIdResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeProductsByIdResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
public class DescribeProductResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeProductResult?;

    enum DescribeProductResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeProductResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeProductResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeProductResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeProductResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 查询产品的详细信息
      ///       ///  
public class DescribeProductResult:NSObject,JdCloudResult
{
    /// 产品详情
    var result:Product?



    public override init(){
        super.init()
    }

    enum DescribeProductResultCodingKeys: String, CodingKey {
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeProductResultCodingKeys.self)
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode(Product?.self, forKey: .result)
        }
    }
}
public extension DescribeProductResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeProductResultCodingKeys.self)
        try encoderContainer.encode(result, forKey: .result)
    }
}

///  查询产品的详细信息
      ///       /// 
public class DescribeProductRequest:JdCloudRequest
{
    /// 产品url
    var url:String

    /// 中文cn 英文en
    var lang:String

    /// 外部使用ak；
    var ak:String


    public init(regionId: String,url:String,lang:String,ak:String){
        self.url = url
        self.lang = lang
        self.ak = ak
        super.init(regionId: regionId)
    }


    enum DescribeProductRequestRequestCodingKeys: String, CodingKey {
        case url
        case lang
        case ak
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeProductRequestRequestCodingKeys.self)
        try encoderContainer.encode(url, forKey: .url)
        try encoderContainer.encode(lang, forKey: .lang)
        try encoderContainer.encode(ak, forKey: .ak)

    }
}

/// 产品页列表查询接口
      ///       ///  
public class DescribeProductsByIdResult:NSObject,JdCloudResult
{
    /// Result
    var result:[Navigation?]?



    public override init(){
        super.init()
    }

    enum DescribeProductsByIdResultCodingKeys: String, CodingKey {
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeProductsByIdResultCodingKeys.self)
        if decoderContainer.contains(.result)
        {
            self.result = try decoderContainer.decode([Navigation?]?.self, forKey: .result)
        }
    }
}
public extension DescribeProductsByIdResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeProductsByIdResultCodingKeys.self)
        try encoderContainer.encode(result, forKey: .result)
    }
}

///  产品页列表查询接口
      ///       /// 
public class DescribeProductsByIdRequest:JdCloudRequest
{
    /// 语言类型；中文cn；英文en；
    var id:Int

    /// 外部使用ak；
    var ak:String


    public init(regionId: String,id:Int,ak:String){
        self.id = id
        self.ak = ak
        super.init(regionId: regionId)
    }


    enum DescribeProductsByIdRequestRequestCodingKeys: String, CodingKey {
        case id
        case ak
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeProductsByIdRequestRequestCodingKeys.self)
        try encoderContainer.encode(id, forKey: .id)
        try encoderContainer.encode(ak, forKey: .ak)

    }
}

