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

   pipelineInstance
   API OF Pipeline Create|Update|Read|Delete|Execute

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  根据条件查询流水线执行历史
      ///       /// 
@objc(GetPipelineInstancesByUuidsRequest)
public class GetPipelineInstancesByUuidsRequest:JdCloudRequest
{
    /// 流水线执行实例ID，多个ID用逗号分隔
    var uuids:String

    /// 流水线执行的状态，如果isSimple是true，只显示每个stage的状态, 而stage中的action状态将被忽略
    var isSimple:Bool?

    /// 页码；默认为1
    var pageNumber:Int?

    /// 分页大小；默认为10；取值范围[10, 100]
    var pageSize:Int?

    /// Sorts
    var sorts:[Sort?]?

    /// 根据流水线名称查询
    var filters:[Filter?]?


    public init(regionId: String,uuids:String){
        self.uuids = uuids
        super.init(regionId: regionId)
    }


    enum GetPipelineInstancesByUuidsRequestRequestCodingKeys: String, CodingKey {
        case uuids
        case isSimple
        case pageNumber
        case pageSize
        case sorts
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetPipelineInstancesByUuidsRequestRequestCodingKeys.self)
        try encoderContainer.encode(uuids, forKey: .uuids)
        try encoderContainer.encode(isSimple, forKey: .isSimple)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(sorts, forKey: .sorts)
        try encoderContainer.encode(filters, forKey: .filters)

    }
}