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

   Live-Video
   直播管理API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询录制模板绑定
      ///       /// 
@objc(DescribeRecordBindingResult)
public class DescribeRecordBindingResult:NSObject,JdCloudResult
{
    /// 录制模板模板绑定集合
    var bindingList:[TemplateBinding?]?



    public override init(){
        super.init()
    }

    enum DescribeRecordBindingResultCodingKeys: String, CodingKey {
        case bindingList
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeRecordBindingResultCodingKeys.self)
        if decoderContainer.contains(.bindingList)
        {
            self.bindingList = try decoderContainer.decode([TemplateBinding?]?.self, forKey: .bindingList)
        }
    }
}
public extension DescribeRecordBindingResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeRecordBindingResultCodingKeys.self)
        try encoderContainer.encode(bindingList, forKey: .bindingList)
    }
}
