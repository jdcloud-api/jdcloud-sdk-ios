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

   云硬盘相关接口
   云硬盘相关接口，提供批量创建云硬盘，查询云硬盘，删除云硬盘，对云硬盘进行扩容，修改云硬盘信息以及使用快照恢复云硬盘等功能。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改云硬盘的名字或描述信息，名字或描述信息至少要指定一个。
public class ModifyDiskAttributeRequest:JdCloudRequest
{
    /// 云硬盘名称，只允许输入中文、数字、大小写字母、英文下划线“_”及中划线“-”，不允许为空且不超过32字符。
    var name:String?

    /// 云硬盘描述，允许输入UTF-8编码下的全部字符，不超过256字符。
    var description:String?

    /// 云硬盘ID
    var diskId:String


    public init(regionId: String,diskId:String){
        self.diskId = diskId
        super.init(regionId: regionId)
    }


    enum ModifyDiskAttributeRequestRequestCodingKeys: String, CodingKey {
        case name
        case description
        case diskId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyDiskAttributeRequestRequestCodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(diskId, forKey: .diskId)

    }
}