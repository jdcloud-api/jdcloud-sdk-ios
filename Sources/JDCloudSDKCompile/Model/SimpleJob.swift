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

///  simpleJob
@objc(SimpleJob)
public class SimpleJob:NSObject,Codable{
    /// 构建任务uuid
    var uuid:String?
    /// 构建名称
    var name:String?
    /// 构建开始时间
    var buildStartAt:Int?
    /// 构建类型
    var compilerType:String?
    /// 构建状态
    var buildStatus:String?



    public override init(){
            super.init()
    }

    enum SimpleJobCodingKeys: String, CodingKey {
        case uuid
        case name
        case buildStartAt
        case compilerType
        case buildStatus
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SimpleJobCodingKeys.self)
        if decoderContainer.contains(.uuid)
        {
            self.uuid = try decoderContainer.decode(String?.self, forKey: .uuid)
        }
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.buildStartAt)
        {
            self.buildStartAt = try decoderContainer.decode(Int?.self, forKey: .buildStartAt)
        }
        if decoderContainer.contains(.compilerType)
        {
            self.compilerType = try decoderContainer.decode(String?.self, forKey: .compilerType)
        }
        if decoderContainer.contains(.buildStatus)
        {
            self.buildStatus = try decoderContainer.decode(String?.self, forKey: .buildStatus)
        }
    }
}
public extension SimpleJob{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SimpleJobCodingKeys.self)
         try encoderContainer.encode(uuid, forKey: .uuid)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(buildStartAt, forKey: .buildStartAt)
         try encoderContainer.encode(compilerType, forKey: .compilerType)
         try encoderContainer.encode(buildStatus, forKey: .buildStatus)
    }
}
