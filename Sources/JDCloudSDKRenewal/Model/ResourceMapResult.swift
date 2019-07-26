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

   Renew Management APIs
   续费管理相关接口

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  resourceMapResult
@objc(ResourceMapResult)
public class ResourceMapResult:NSObject,Codable{
    /// 产品线
    var serviceCode:String?
    /// 该产品线的已过期资源信息
    var resourceList:[QueryExpiredResourceResultVo?]?
    /// 该产品线的已过期资源总数
    var totalNumber:Int?
    /// 该产品线的已过期资源ID信息
    var resourceIdList:[String?]?



    public override init(){
            super.init()
    }

    enum ResourceMapResultCodingKeys: String, CodingKey {
        case serviceCode
        case resourceList
        case totalNumber
        case resourceIdList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ResourceMapResultCodingKeys.self)
        if decoderContainer.contains(.serviceCode)
        {
            self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        }
        if decoderContainer.contains(.resourceList)
        {
            self.resourceList = try decoderContainer.decode([QueryExpiredResourceResultVo?]?.self, forKey: .resourceList)
        }
        if decoderContainer.contains(.totalNumber)
        {
            self.totalNumber = try decoderContainer.decode(Int?.self, forKey: .totalNumber)
        }
        if decoderContainer.contains(.resourceIdList)
        {
            self.resourceIdList = try decoderContainer.decode([String?]?.self, forKey: .resourceIdList)
        }
    }
}
public extension ResourceMapResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ResourceMapResultCodingKeys.self)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(resourceList, forKey: .resourceList)
         try encoderContainer.encode(totalNumber, forKey: .totalNumber)
         try encoderContainer.encode(resourceIdList, forKey: .resourceIdList)
    }
}
