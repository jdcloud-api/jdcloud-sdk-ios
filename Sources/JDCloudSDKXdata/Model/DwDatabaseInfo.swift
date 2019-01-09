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

///  dwDatabaseInfo
@objc(DwDatabaseInfo)
public class DwDatabaseInfo:NSObject,Codable{
    /// 所有者
    var owner:String?
    /// 描述信息
    var comments:String?
    /// 数据库名称
    var databaseName:String?



    public override init(){
            super.init()
    }

    enum DwDatabaseInfoCodingKeys: String, CodingKey {
        case owner
        case comments
        case databaseName
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DwDatabaseInfoCodingKeys.self)
        if decoderContainer.contains(.owner)
        {
            self.owner = try decoderContainer.decode(String?.self, forKey: .owner)
        }
        if decoderContainer.contains(.comments)
        {
            self.comments = try decoderContainer.decode(String?.self, forKey: .comments)
        }
        if decoderContainer.contains(.databaseName)
        {
            self.databaseName = try decoderContainer.decode(String?.self, forKey: .databaseName)
        }
    }
}
public extension DwDatabaseInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DwDatabaseInfoCodingKeys.self)
         try encoderContainer.encode(owner, forKey: .owner)
         try encoderContainer.encode(comments, forKey: .comments)
         try encoderContainer.encode(databaseName, forKey: .databaseName)
    }
}
