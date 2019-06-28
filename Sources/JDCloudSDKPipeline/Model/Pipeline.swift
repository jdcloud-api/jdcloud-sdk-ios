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

///  pipeline
@objc(Pipeline)
public class Pipeline:NSObject,Codable{
    /// 流水线的uuid
    var uuid:String?
    /// 流水线创建时间戳
    var createdAt:Int?
    /// 流水线最后一次更新时间戳
    var updatedAt:Int?
    /// 流水线的名称
    /// Required:true
    var name:String
    /// 流水线定义的json字符串。因为配置灵活且会支持用户直接上传json配置文件的方式配置，所以不对其在提交和显示的时候做解析或反解析。
    /// Required:true
    var content:String



    public  init(name:String,content:String){
             self.name = name
             self.content = content
    }

    enum PipelineCodingKeys: String, CodingKey {
        case uuid
        case createdAt
        case updatedAt
        case name
        case content
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PipelineCodingKeys.self)
        if decoderContainer.contains(.uuid)
        {
            self.uuid = try decoderContainer.decode(String?.self, forKey: .uuid)
        }
        if decoderContainer.contains(.createdAt)
        {
            self.createdAt = try decoderContainer.decode(Int?.self, forKey: .createdAt)
        }
        if decoderContainer.contains(.updatedAt)
        {
            self.updatedAt = try decoderContainer.decode(Int?.self, forKey: .updatedAt)
        }
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        self.content = try decoderContainer.decode(String.self, forKey: .content)
    }
}
public extension Pipeline{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PipelineCodingKeys.self)
         try encoderContainer.encode(uuid, forKey: .uuid)
         try encoderContainer.encode(createdAt, forKey: .createdAt)
         try encoderContainer.encode(updatedAt, forKey: .updatedAt)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(content, forKey: .content)
    }
}