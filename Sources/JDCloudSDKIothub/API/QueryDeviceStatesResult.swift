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

   DeviceManager
   用于完成设备全生命周期管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 客户用该接口可以查询设备预期状态
      ///       /// 
@objc(QueryDeviceStatesResult)
public class QueryDeviceStatesResult:NSObject,JdCloudResult
{
    /// State
    var state:String?



    public override init(){
        super.init()
    }

    enum QueryDeviceStatesResultCodingKeys: String, CodingKey {
        case state
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: QueryDeviceStatesResultCodingKeys.self)
        if decoderContainer.contains(.state)
        {
            self.state = try decoderContainer.decode(String?.self, forKey: .state)
        }
    }
}
public extension QueryDeviceStatesResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryDeviceStatesResultCodingKeys.self)
        try encoderContainer.encode(state, forKey: .state)
    }
}