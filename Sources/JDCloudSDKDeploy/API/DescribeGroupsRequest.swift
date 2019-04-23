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

   部署组
   云部署部署组相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  批量查询部署组的信息，此接口支持分页查询，默认每页20条
@objc(DescribeGroupsRequest)
public class DescribeGroupsRequest:JdCloudRequest
{
    /// 页码；默认为1
    var pageNumber:Int?

    /// 分页大小；默认为20；取值范围[10, 100]
    var pageSize:Int?

    /// appId - 应用ID，精确匹配
      /// groupId - 部署组ID，精确匹配
      /// groupName - 部署组名，精确匹配
      /// 
    var filters:[Filter?]?




    enum DescribeGroupsRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeGroupsRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(filters, forKey: .filters)

    }
}