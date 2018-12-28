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

///  functionSpec
@objc(FunctionSpec)
public class FunctionSpec:NSObject,Codable{
    /// 函数Id
    var functionId:String?
    /// 函数名称
    var name:String?
    /// 函数描述
    var descriptionValue:String?
    /// 函数运行环境，目前有python3
    var runtime:String?
    /// 函数创建时间
    var createTime:String?
    /// 函数最后更新时间
    var updateTime:String?
    /// 函数版本名称
    var version:String?
    /// 代码包下载的url地址
    var downloadUrl:String?



    public override init(){
            super.init()
    }

    enum FunctionSpecCodingKeys: String, CodingKey {
        case functionId
        case name
        case descriptionValue = "description"
        case runtime
        case createTime
        case updateTime
        case version
        case downloadUrl
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: FunctionSpecCodingKeys.self)
        self.functionId = try decoderContainer.decode(String?.self, forKey: .functionId)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        self.runtime = try decoderContainer.decode(String?.self, forKey: .runtime)
        self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        self.version = try decoderContainer.decode(String?.self, forKey: .version)
        self.downloadUrl = try decoderContainer.decode(String?.self, forKey: .downloadUrl)
    }
}
public extension FunctionSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: FunctionSpecCodingKeys.self)
         try encoderContainer.encode(functionId, forKey: .functionId)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(runtime, forKey: .runtime)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(version, forKey: .version)
         try encoderContainer.encode(downloadUrl, forKey: .downloadUrl)
    }
}
