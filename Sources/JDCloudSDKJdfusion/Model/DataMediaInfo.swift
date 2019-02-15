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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  源数据配置
@objc(DataMediaInfo)
public class DataMediaInfo:NSObject,Codable{
    /// Cloud
    var cloud:CloudInfo?
    /// Datasource
    var datasource:DatasourceInfo?
    /// schema
    var schema:String?
    /// table
    var tables:[String?]?



    public override init(){
            super.init()
    }

    enum DataMediaInfoCodingKeys: String, CodingKey {
        case cloud
        case datasource
        case schema
        case tables
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DataMediaInfoCodingKeys.self)
        if decoderContainer.contains(.cloud)
        {
            self.cloud = try decoderContainer.decode(CloudInfo?.self, forKey: .cloud)
        }
        if decoderContainer.contains(.datasource)
        {
            self.datasource = try decoderContainer.decode(DatasourceInfo?.self, forKey: .datasource)
        }
        if decoderContainer.contains(.schema)
        {
            self.schema = try decoderContainer.decode(String?.self, forKey: .schema)
        }
        if decoderContainer.contains(.tables)
        {
            self.tables = try decoderContainer.decode([String?]?.self, forKey: .tables)
        }
    }
}
public extension DataMediaInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DataMediaInfoCodingKeys.self)
         try encoderContainer.encode(cloud, forKey: .cloud)
         try encoderContainer.encode(datasource, forKey: .datasource)
         try encoderContainer.encode(schema, forKey: .schema)
         try encoderContainer.encode(tables, forKey: .tables)
    }
}
