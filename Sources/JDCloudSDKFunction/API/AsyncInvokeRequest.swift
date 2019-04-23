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

   Function OpenAPI
   

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  异步测试执行函数
@objc(AsyncInvokeRequest)
public class AsyncInvokeRequest:JdCloudRequest
{
    /// 异步执行函数的输入事件
    var event:String

    /// 函数名称
    var functionName:String

    /// 版本名称
    var versionName:String


    public init(regionId: String,event:String,functionName:String,versionName:String){
        self.event = event
        self.functionName = functionName
        self.versionName = versionName
        super.init(regionId: regionId)
    }


    enum AsyncInvokeRequestRequestCodingKeys: String, CodingKey {
        case event
        case functionName
        case versionName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AsyncInvokeRequestRequestCodingKeys.self)
        try encoderContainer.encode(event, forKey: .event)
        try encoderContainer.encode(functionName, forKey: .functionName)
        try encoderContainer.encode(versionName, forKey: .versionName)

    }
}
