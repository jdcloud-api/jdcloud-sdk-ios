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

   原生容器
   原生容器相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 获取exec退出码
      ///       /// 
@objc(ExecGetExitCodeResult)
public class ExecGetExitCodeResult:NSObject,JdCloudResult
{
    /// ExitCode
    var exitCode:Int?



    public override init(){
        super.init()
    }

    enum ExecGetExitCodeResultCodingKeys: String, CodingKey {
        case exitCode
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ExecGetExitCodeResultCodingKeys.self)
        if decoderContainer.contains(.exitCode)
        {
            self.exitCode = try decoderContainer.decode(Int?.self, forKey: .exitCode)
        }
    }
}
public extension ExecGetExitCodeResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ExecGetExitCodeResultCodingKeys.self)
        try encoderContainer.encode(exitCode, forKey: .exitCode)
    }
}
