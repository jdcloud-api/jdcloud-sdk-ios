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

   快照相关接口
   快照相关接口，提供创建快照，查询快照信息，删除快照，修改快照信息等功能。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  将快照从本区域的一份快照复制到目标区域
public class CopySnapshotRequest:JdCloudRequest
{
    /// 目标Region
    var destRegion:String

    /// snapshot在新region的名字
    var destSnapshotName:String

    /// snapshot在新region的描述
    var destSnapshotDescription:String?

    /// 快照ID
    var snapshotId:String


    public init(regionId: String,destRegion:String,destSnapshotName:String,snapshotId:String){
        self.destRegion = destRegion
        self.destSnapshotName = destSnapshotName
        self.snapshotId = snapshotId
        super.init(regionId: regionId)
    }


    enum CopySnapshotRequestRequestCodingKeys: String, CodingKey {
        case destRegion
        case destSnapshotName
        case destSnapshotDescription
        case snapshotId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CopySnapshotRequestRequestCodingKeys.self)
        try container.encode(destRegion, forKey: .destRegion)
        try container.encode(destSnapshotName, forKey: .destSnapshotName)
        try container.encode(destSnapshotDescription, forKey: .destSnapshotDescription)
        try container.encode(snapshotId, forKey: .snapshotId)

    }
}
