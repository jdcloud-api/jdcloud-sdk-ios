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


///  创建函数
@objc(CreateFunctionRequest)
public class CreateFunctionRequest:JdCloudRequest
{
    /// 函数名称
    var name:String

    /// 函数描述信息
    var descriptionValue:String?

    /// 函数入口，格式为入口文件.入口函数名
    var entrance:String

    /// 函数运行最大内存
    var memory:Int

    /// 函数运行环境
    var runTime:String

    /// 函数运行超时时间
    var overTime:Int

    /// 函数代码包
    var code:Code

    /// 函数运行时环境变量
    var environment:Env?

    /// 函数指定的日志集Id
    var logSetId:String?

    /// 函数指定的日志主题Id
    var logTopicId:String?

    /// 函数配置的VPCId
    var vpcId:String?

    /// 函数配置的子网Id
    var subnetId:String?


    public init(regionId: String,name:String,entrance:String,memory:Int,runTime:String,overTime:Int,code:Code){
        self.name = name
        self.entrance = entrance
        self.memory = memory
        self.runTime = runTime
        self.overTime = overTime
        self.code = code
        super.init(regionId: regionId)
    }


    enum CreateFunctionRequestRequestCodingKeys: String, CodingKey {
        case name
        case descriptionValue = "description"
        case entrance
        case memory
        case runTime
        case overTime
        case code
        case environment
        case logSetId
        case logTopicId
        case vpcId
        case subnetId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateFunctionRequestRequestCodingKeys.self)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
        try encoderContainer.encode(entrance, forKey: .entrance)
        try encoderContainer.encode(memory, forKey: .memory)
        try encoderContainer.encode(runTime, forKey: .runTime)
        try encoderContainer.encode(overTime, forKey: .overTime)
        try encoderContainer.encode(code, forKey: .code)
        try encoderContainer.encode(environment, forKey: .environment)
        try encoderContainer.encode(logSetId, forKey: .logSetId)
        try encoderContainer.encode(logTopicId, forKey: .logTopicId)
        try encoderContainer.encode(vpcId, forKey: .vpcId)
        try encoderContainer.encode(subnetId, forKey: .subnetId)

    }
}
