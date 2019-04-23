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

///  updatePermissionInfo
@objc(UpdatePermissionInfo)
public class UpdatePermissionInfo:NSObject,Codable{
    /// 权限名称，1~32位数字、字符、中文、中划线、下划线
    /// Required:true
    var name:String
    /// 描述，0~256个字符
    var descriptionValue:String?
    /// 权限详细信息
    /// Required:true
    var content:[PermissionDetail?]



    public  init(name:String,content:[PermissionDetail?]){
             self.name = name
             self.content = content
    }

    enum UpdatePermissionInfoCodingKeys: String, CodingKey {
        case name
        case descriptionValue = "description"
        case content
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: UpdatePermissionInfoCodingKeys.self)
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        self.content = try decoderContainer.decode([PermissionDetail?].self, forKey: .content)
    }
}
public extension UpdatePermissionInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdatePermissionInfoCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(content, forKey: .content)
    }
}
