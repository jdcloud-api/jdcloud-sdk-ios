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

///  assumeServiceRoleInfo
@objc(AssumeServiceRoleInfo)
public class AssumeServiceRoleInfo:NSObject,Codable{
    /// 角色类型, 1-服务相关角色，2-服务角色
    /// Required:true
    var roleType:Int
    /// 令牌有效期，单位秒，默认3600
    var durationSeconds:Int?



    public  init(roleType:Int){
             self.roleType = roleType
    }

    enum AssumeServiceRoleInfoCodingKeys: String, CodingKey {
        case roleType
        case durationSeconds
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AssumeServiceRoleInfoCodingKeys.self)
        self.roleType = try decoderContainer.decode(Int.self, forKey: .roleType)
        if decoderContainer.contains(.durationSeconds)
        {
            self.durationSeconds = try decoderContainer.decode(Int?.self, forKey: .durationSeconds)
        }
    }
}
public extension AssumeServiceRoleInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AssumeServiceRoleInfoCodingKeys.self)
         try encoderContainer.encode(roleType, forKey: .roleType)
         try encoderContainer.encode(durationSeconds, forKey: .durationSeconds)
    }
}