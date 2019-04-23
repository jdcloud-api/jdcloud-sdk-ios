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

   Rds-Migration-MySQL
   与MySQL数据迁移相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 创建数据源
@objc(CreateDatasourceResult)
public class CreateDatasourceResult:NSObject,JdCloudResult
{
    /// Datasource
    var datasource:DatasourceInfo?



    public override init(){
        super.init()
    }

    enum CreateDatasourceResultCodingKeys: String, CodingKey {
        case datasource
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateDatasourceResultCodingKeys.self)
        if decoderContainer.contains(.datasource)
        {
            self.datasource = try decoderContainer.decode(DatasourceInfo?.self, forKey: .datasource)
        }
    }
}
public extension CreateDatasourceResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateDatasourceResultCodingKeys.self)
        try encoderContainer.encode(datasource, forKey: .datasource)
    }
}
