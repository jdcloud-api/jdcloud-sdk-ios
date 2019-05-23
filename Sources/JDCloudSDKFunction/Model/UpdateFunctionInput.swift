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

///  updateFunctionInput
@objc(UpdateFunctionInput)
public class UpdateFunctionInput:NSObject,Codable{
    /// 函数描述信息
    var descriptionValue:String?
    /// 函数入口，格式为入口文件.入口函数名
    var entrance:String?
    /// 函数运行最大内存
    var memory:Int?
    /// 函数运行环境
    var runTime:String?
    /// 函数运行超时时间
    var overTime:Int?
    /// 函数版本
    var version:String?
    /// 函数代码包
    var code:Code?
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



    public override init(){
            super.init()
    }

    enum UpdateFunctionInputCodingKeys: String, CodingKey {
        case descriptionValue = "description"
        case entrance
        case memory
        case runTime
        case overTime
        case version
        case code
        case environment
        case logSetId
        case logTopicId
        case vpcId
        case subnetId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: UpdateFunctionInputCodingKeys.self)
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.entrance)
        {
            self.entrance = try decoderContainer.decode(String?.self, forKey: .entrance)
        }
        if decoderContainer.contains(.memory)
        {
            self.memory = try decoderContainer.decode(Int?.self, forKey: .memory)
        }
        if decoderContainer.contains(.runTime)
        {
            self.runTime = try decoderContainer.decode(String?.self, forKey: .runTime)
        }
        if decoderContainer.contains(.overTime)
        {
            self.overTime = try decoderContainer.decode(Int?.self, forKey: .overTime)
        }
        if decoderContainer.contains(.version)
        {
            self.version = try decoderContainer.decode(String?.self, forKey: .version)
        }
        if decoderContainer.contains(.code)
        {
            self.code = try decoderContainer.decode(Code?.self, forKey: .code)
        }
        if decoderContainer.contains(.environment)
        {
            self.environment = try decoderContainer.decode(Env?.self, forKey: .environment)
        }
        if decoderContainer.contains(.logSetId)
        {
            self.logSetId = try decoderContainer.decode(String?.self, forKey: .logSetId)
        }
        if decoderContainer.contains(.logTopicId)
        {
            self.logTopicId = try decoderContainer.decode(String?.self, forKey: .logTopicId)
        }
        if decoderContainer.contains(.vpcId)
        {
            self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        }
        if decoderContainer.contains(.subnetId)
        {
            self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        }
    }
}
public extension UpdateFunctionInput{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdateFunctionInputCodingKeys.self)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(entrance, forKey: .entrance)
         try encoderContainer.encode(memory, forKey: .memory)
         try encoderContainer.encode(runTime, forKey: .runTime)
         try encoderContainer.encode(overTime, forKey: .overTime)
         try encoderContainer.encode(version, forKey: .version)
         try encoderContainer.encode(code, forKey: .code)
         try encoderContainer.encode(environment, forKey: .environment)
         try encoderContainer.encode(logSetId, forKey: .logSetId)
         try encoderContainer.encode(logTopicId, forKey: .logTopicId)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
    }
}
