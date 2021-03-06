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

   back source configuration openapi
   back source configuration openapi

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

public class GetSingleBucketCapacityResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:GetSingleBucketCapacityResult?;

    enum GetSingleBucketCapacityResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetSingleBucketCapacityResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(GetSingleBucketCapacityResult?.self, forKey: .result) ?? nil
    }
}

public extension GetSingleBucketCapacityResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetSingleBucketCapacityResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    

///  根据type获取指定bucket用量数据
public class GetSingleBucketCapacityRequest:JdCloudRequest
{
    /// &lt;p&gt;查询用量数据类型：&lt;/p&gt;&lt;br&gt;&lt;code&gt;1000040&lt;/code&gt;:标准存储&lt;br&gt;&lt;code&gt;1000041&lt;/code&gt;:低冗余存储&lt;br&gt;&lt;code&gt;1000042&lt;/code&gt;:归档存储&lt;br&gt;&lt;code&gt;1000043&lt;/code&gt;归档overHead存储:&lt;br&gt;&lt;code&gt;1000044&lt;/code&gt;低频存储:&lt;br&gt;&lt;code&gt;1000045&lt;/code&gt;低频overHead存储:&lt;br&gt;&lt;code&gt;1&lt;/code&gt;:内网GET流量&lt;br&gt;&lt;code&gt;2&lt;/code&gt;:内网HEAD流量&lt;br&gt;&lt;code&gt;3&lt;/code&gt;:内网PUT流量&lt;br&gt;&lt;code&gt;4&lt;/code&gt;:内网POST流量&lt;br&gt;&lt;code&gt;5&lt;/code&gt;:内网DELETE流量&lt;br&gt;&lt;code&gt;6&lt;/code&gt;:内网OPTIONS流量&lt;br&gt;&lt;code&gt;7&lt;/code&gt;:内网TRACE流量&lt;br&gt;&lt;code&gt;11&lt;/code&gt;:外网GET流量&lt;br&gt;&lt;code&gt;12&lt;/code&gt;:外网HEAD流量&lt;br&gt;&lt;code&gt;13&lt;/code&gt;:外网PUT流量&lt;br&gt;&lt;code&gt;14&lt;/code&gt;:外网POST流量&lt;br&gt;&lt;code&gt;15&lt;/code&gt;:外网DELETE流量&lt;br&gt;&lt;code&gt;16&lt;/code&gt;:外网OPTIONS流量&lt;br&gt;&lt;code&gt;17&lt;/code&gt;:外网TRACE流量&lt;br&gt;&lt;code&gt;21&lt;/code&gt;:CDN GET流量&lt;br&gt;&lt;code&gt;22&lt;/code&gt;:CDN HEAD流量&lt;br&gt;&lt;code&gt;23&lt;/code&gt;:CDN PUT流量&lt;br&gt;&lt;code&gt;24&lt;/code&gt;:CDN POST流量&lt;br&gt;&lt;code&gt;25&lt;/code&gt;:CDN DELETE流量&lt;br&gt;&lt;code&gt;26&lt;/code&gt;:CDN OPTIONS流量&lt;br&gt;&lt;code&gt;27&lt;/code&gt;:CDN TRACE流量&lt;br&gt;&lt;code&gt;31&lt;/code&gt;:内网GET数&lt;br&gt;&lt;code&gt;32&lt;/code&gt;:内网HEAD数&lt;br&gt;&lt;code&gt;33&lt;/code&gt;:内网PUT数&lt;br&gt;&lt;code&gt;34&lt;/code&gt;:内网POST数&lt;br&gt;&lt;code&gt;35&lt;/code&gt;:内网DELETE数&lt;br&gt;&lt;code&gt;36&lt;/code&gt;:内网OPTIONS数&lt;br&gt;&lt;code&gt;37&lt;/code&gt;:内网TRACE数&lt;br&gt;&lt;code&gt;51&lt;/code&gt;:外网GET数&lt;br&gt;&lt;code&gt;52&lt;/code&gt;:外网HEAD数&lt;br&gt;&lt;code&gt;53&lt;/code&gt;:外网PUT数&lt;br&gt;&lt;code&gt;54&lt;/code&gt;:外网POST数&lt;br&gt;&lt;code&gt;55&lt;/code&gt;:外网DELETE数&lt;br&gt;&lt;code&gt;56&lt;/code&gt;:外网OPTIONS数&lt;br&gt;&lt;code&gt;57&lt;/code&gt;:外网TRACE数&lt;br&gt;&lt;code&gt;61&lt;/code&gt;:CDN GET数&lt;br&gt;&lt;code&gt;62&lt;/code&gt;:CDN HEAD数&lt;br&gt;&lt;code&gt;63&lt;/code&gt;:CDN PUT数&lt;br&gt;&lt;code&gt;64&lt;/code&gt;:CDN POST数&lt;br&gt;&lt;code&gt;65&lt;/code&gt;:CDN DELETE数&lt;br&gt;&lt;code&gt;66&lt;/code&gt;:CDN OPTIONS数&lt;br&gt;&lt;code&gt;67&lt;/code&gt;:CDN TRACE数&lt;br&gt;&lt;code&gt;71&lt;/code&gt;:归档提前删除&lt;br&gt;&lt;code&gt;72&lt;/code&gt;:低频提前删除&lt;br&gt;&lt;code&gt;81&lt;/code&gt;:归档取回Bulk&lt;br&gt;&lt;code&gt;82&lt;/code&gt;:归档取回Std&lt;br&gt;&lt;code&gt;83&lt;/code&gt;:归档取回Exp&lt;br&gt;&lt;code&gt;84&lt;/code&gt;:低频数据取回
      /// 
    var capacityTypes:[Int?]?

    /// 开始时间，使用UTC时间，格式为：YYYY-MM-DDTHH:mm:ss&#39;Z&#39;
    var beginTime:String?

    /// 结束时间，使用UTC时间，格式为：YYYY-MM-DDTHH:mm:ss&#39;Z&#39;
    var endTime:String?

    /// 查询数据的聚合方式:&lt;br&gt;&lt;code&gt;0&lt;/code&gt;:all, 最大查询区间365天 &lt;br&gt;&lt;code&gt;1&lt;/code&gt;:hour，最大查询区间31天。默认1&lt;br&gt;&lt;code&gt;2&lt;/code&gt;:day, 最大查询区间365天。
    var periodType:Int?

    /// 返回数据的方式： &lt;code&gt;1&lt;/code&gt;:recent(区间值), &lt;code&gt;2&lt;/code&gt;:current(当前值。method &#x3D; 2 时如果查询当前值时传入beginTime，则按照beginTime时间来进行查询；如果不传beginTime，则按照后端系统时间查询。)
    var method:Int

    /// 查询用量的指定bucket
    var bucketName:String


    public init(regionId: String,capacityTypes:[Int?]?,method:Int,bucketName:String){
        self.capacityTypes = capacityTypes
        self.method = method
        self.bucketName = bucketName
        super.init(regionId: regionId)
    }


    enum GetSingleBucketCapacityRequestRequestCodingKeys: String, CodingKey {
        case capacityTypes
        case beginTime
        case endTime
        case periodType
        case method
        case bucketName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetSingleBucketCapacityRequestRequestCodingKeys.self)
        try encoderContainer.encode(capacityTypes, forKey: .capacityTypes)
        try encoderContainer.encode(beginTime, forKey: .beginTime)
        try encoderContainer.encode(endTime, forKey: .endTime)
        try encoderContainer.encode(periodType, forKey: .periodType)
        try encoderContainer.encode(method, forKey: .method)
        try encoderContainer.encode(bucketName, forKey: .bucketName)

    }
}

/// 根据type获取指定bucket用量数据 
public class GetSingleBucketCapacityResult:NSObject,JdCloudResult
{
    /// bucket 用量统计列表
    var resultList:[BucketCapacityStatistic?]?



    public override init(){
        super.init()
    }

    enum GetSingleBucketCapacityResultCodingKeys: String, CodingKey {
        case resultList
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetSingleBucketCapacityResultCodingKeys.self)
        if decoderContainer.contains(.resultList)
        {
            self.resultList = try decoderContainer.decode([BucketCapacityStatistic?]?.self, forKey: .resultList)
        }
    }
}
public extension GetSingleBucketCapacityResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetSingleBucketCapacityResultCodingKeys.self)
        try encoderContainer.encode(resultList, forKey: .resultList)
    }
}
public class PutBackSourceConfigurationResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:PutBackSourceConfigurationResult?;

    enum PutBackSourceConfigurationResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PutBackSourceConfigurationResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(PutBackSourceConfigurationResult?.self, forKey: .result) ?? nil
    }
}

public extension PutBackSourceConfigurationResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PutBackSourceConfigurationResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    

///  删除回源配置
public class DeleteBackSourceConfigurationRequest:JdCloudRequest
{
    /// Bucket名称
    var bucketName:String


    public init(regionId: String,bucketName:String){
        self.bucketName = bucketName
        super.init(regionId: regionId)
    }


    enum DeleteBackSourceConfigurationRequestRequestCodingKeys: String, CodingKey {
        case bucketName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteBackSourceConfigurationRequestRequestCodingKeys.self)
        try encoderContainer.encode(bucketName, forKey: .bucketName)

    }
}

/// 删除回源配置 
public class DeleteBackSourceConfigurationResult:NSObject,JdCloudResult
{
}

///  获取回源配置
public class GetBackSourceConfigurationRequest:JdCloudRequest
{
    /// Bucket名称
    var bucketName:String


    public init(regionId: String,bucketName:String){
        self.bucketName = bucketName
        super.init(regionId: regionId)
    }


    enum GetBackSourceConfigurationRequestRequestCodingKeys: String, CodingKey {
        case bucketName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetBackSourceConfigurationRequestRequestCodingKeys.self)
        try encoderContainer.encode(bucketName, forKey: .bucketName)

    }
}

public class DeleteBackSourceConfigurationResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DeleteBackSourceConfigurationResult?;

    enum DeleteBackSourceConfigurationResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeleteBackSourceConfigurationResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DeleteBackSourceConfigurationResult?.self, forKey: .result) ?? nil
    }
}

public extension DeleteBackSourceConfigurationResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteBackSourceConfigurationResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
public class GetBackSourceConfigurationResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:GetBackSourceConfigurationResult?;

    enum GetBackSourceConfigurationResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetBackSourceConfigurationResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(GetBackSourceConfigurationResult?.self, forKey: .result) ?? nil
    }
}

public extension GetBackSourceConfigurationResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetBackSourceConfigurationResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    

///  添加修改回源配置
public class PutBackSourceConfigurationRequest:JdCloudRequest
{
    /// 回源配置规则
    var backSourceRules:[BackSourceRule?]?

    /// Bucket名称
    var bucketName:String


    public init(regionId: String,bucketName:String){
        self.bucketName = bucketName
        super.init(regionId: regionId)
    }


    enum PutBackSourceConfigurationRequestRequestCodingKeys: String, CodingKey {
        case backSourceRules
        case bucketName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PutBackSourceConfigurationRequestRequestCodingKeys.self)
        try encoderContainer.encode(backSourceRules, forKey: .backSourceRules)
        try encoderContainer.encode(bucketName, forKey: .bucketName)

    }
}

/// 获取回源配置 
public class GetBackSourceConfigurationResult:NSObject,JdCloudResult
{
    /// 回源配置规则
    var backSourceRules:[BackSourceRule?]?



    public override init(){
        super.init()
    }

    enum GetBackSourceConfigurationResultCodingKeys: String, CodingKey {
        case backSourceRules
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetBackSourceConfigurationResultCodingKeys.self)
        if decoderContainer.contains(.backSourceRules)
        {
            self.backSourceRules = try decoderContainer.decode([BackSourceRule?]?.self, forKey: .backSourceRules)
        }
    }
}
public extension GetBackSourceConfigurationResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetBackSourceConfigurationResultCodingKeys.self)
        try encoderContainer.encode(backSourceRules, forKey: .backSourceRules)
    }
}
/// 添加修改回源配置 
public class PutBackSourceConfigurationResult:NSObject,JdCloudResult
{
}
